﻿using DesignerTool.AppLogic.Security;
using DesignerTool.AppLogic.Settings;
using DesignerTool.AppLogic.ViewModels.Base;
using DesignerTool.Common.Enums;
using DesignerTool.Common.Exceptions;
using DesignerTool.Common.Global;
using DesignerTool.Common.Licensing;
using DesignerTool.Common.Logging;
using DesignerTool.Common.Utils;
using DesignerTool.DataAccess.Data;
using DesignerTool.DataAccess.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesignerTool.AppLogic.ViewModels.Core
{
    public class UserActivationViewModel : PageViewModel
    {
        #region Constructors

        public UserActivationViewModel(IDesignerToolContext ctx)
            : base()
        {
        }

        #endregion

        #region Properties

        public override string Heading
        {
            get { return "User License"; }
        }

        private string _code;
        public string Code
        {
            get
            {
                if (this._code == null)
                {
                    return null;
                }
                return this._code.ToUpper();
            }
            set
            {
                if (value != this._code)
                {
                    this._code = value;
                    base.NotifyPropertyChanged("Code");
                    base.NotifyPropertyChanged("CanActivateLicense");
                }
            }
        }

        private IEnumerable<string> _usedLicenseCodes;
        public IEnumerable<string> UsedLicenseCodes
        {
            get
            {
                return this._usedLicenseCodes;
            }
            set
            {
                this._usedLicenseCodes = value;
                base.NotifyPropertyChanged("UsedLicenseCodes");
                base.NotifyPropertyChanged("CanActivateLicense");
            }
        }

        private License _myLicense;
        public License MyLicense
        {
            get
            {
                return this._myLicense;
            }
            set
            {
                if (this._myLicense != value)
                {
                    this._myLicense = value;
                    base.NotifyPropertyChanged("MyLicense");
                    base.NotifyPropertyChanged("CurrentLicenseState");
                    base.NotifyPropertyChanged("CurrentLicenseDisplay");
                }
            }
        }

        public LicenseStateTypes CurrentLicenseState
        {
            get
            {
                if (this.MyLicense == null)
                {
                    return LicenseStateTypes.Expired;
                }
                return this.MyLicense.State;
            }
        }

        public string CurrentLicenseDisplay
        {
            get
            {
                if (this.MyLicense == null)
                {
                    return "No license";
                }
                return this.MyLicense.LicenseDisplay;
            }
        }

        public bool CanActivateLicense
        {
            get
            {
                return !string.IsNullOrEmpty(this.Code) && !this.UsedLicenseCodes.Contains(this.Code);
            }
        }

        public int ClientCode
        {
            get { return SettingsManager.Database.ClientCode; }
        }

        #endregion

        #region Load & Refresh

        public override void Load()
        {
            LicenseManager.Current.LicenseChanged += current_LicenseChanged;
            this.Refresh();
        }

        private void current_LicenseChanged()
        {
            this.Refresh();
            base.NotifyPropertyChanged("CurrentLicenseState");
            base.NotifyPropertyChanged("CurrentLicenseDisplay");
        }

        public override void Refresh()
        {
            base.Refresh();

            // Get current active license
            this.MyLicense = LicenseManager.Current.License;

            // Get previously used license codes.
            this.UsedLicenseCodes = LicenseManager.Current.GetUsedLicenseCodes();
        }

        #endregion

        #region Activate License

        public void ActivateLicense()
        {
            try
            {
                if (String.IsNullOrWhiteSpace(this.Code))
                {
                    base.ShowError("Could not apply License code.", "A valid license code is required.");
                }

                LicenseManager.Current.ApplyLicense(this.Code, SettingsManager.Database.ClientCode);

                // License updated successfully
                base.ShowSaved("License successfully applied");
            }
            catch (LicenseCodeUsedException ex)
            {
                // Code already used previously
                Logger.Log("License code previously used", ex);
                base.ShowError("Could not apply License code.", ex.Message);
            }
            catch (Exception ex)
            {
                Logger.Log("Could not apply License code", ex);
                base.ShowError("Could not apply License code.", "The code you have entered is invalid. Please make sure that you have entered it correctly.");
            }
        }

        #endregion
    }
}
