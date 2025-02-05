﻿using DesignerTool.AppLogic.ViewModels.Base;
using DesignerTool.Common.Base;
using DesignerTool.Common.Enums;
using DesignerTool.Common.Logging;
using DesignerTool.DataAccess.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DesignerTool.AppLogic
{
    public abstract class AppSession : NotifyPropertyChangedBase
    {
        #region Singleton Context Instance

        public AppSession()
        {
            if (Current == null)
            {
                Current = this;
            }
        }

        public static AppSession Current { get; protected set; } // Singleton context instance

        #endregion

        #region Properties

        #region Navigate

        public event Action<ViewModelBase> ViewModelNavigated;

        private ViewModelBase _currentViewModel;
        public ViewModelBase CurrentViewModel
        {
            get
            {
                return _currentViewModel;
            }
            set
            {
                if (value != this._currentViewModel)
                {
                    this._currentViewModel = value;
                    base.NotifyPropertyChanged("CurrentViewModel");
                    base.NotifyPropertyChanged("CanGoBack");
                }
            }
        }

        public virtual void Navigate(ViewModelBase viewModel)
        {
            if (this.ViewModelNavigated != null)
            {
                this.ViewModelNavigated(viewModel);
            }
        }

        #endregion

        public IParentViewModel ParentViewModel { get; set; }

        #region User

        private User _loggedInUser;
        public User LoggedInUser
        {
            get
            {
                return this._loggedInUser;
            }
            set
            {
                if (value != this._loggedInUser)
                {
                    this._loggedInUser = value;
                    base.NotifyPropertyChanged("LoggedInUser");
                }
            }
        }

        #endregion

        #region License and Activation

        public DateTime? LicenseExpiry { get; set; }

        public bool IsValidLicense
        {
            get
            {
                if (!this.LicenseExpiry.HasValue)
                {
                    return false;
                }

                return this.LicenseExpiry.Value >= DateTime.Today;
            }
        }

        public bool IsNewInstallation { get; set; }

        #endregion

        public TaskScheduler UISyncContext { get; set; }

        #endregion

        #region Dialogs & Messages

        public abstract UserMessageResults ShowMessage(string message, string caption = null, ResultType msgType = ResultType.Information, UserMessageButtons buttons = UserMessageButtons.OK);

        #endregion

        #region Database Context

        public string ConnectionString { get; set; }

        public virtual IDesignerToolContext CreateContext()
        {
            if (string.IsNullOrWhiteSpace(this.ConnectionString))
            {
                return new DesignerToolDbEntities();
            }
            else
            {
                return new DesignerToolDbEntities(this.ConnectionString);
            }
        }

        #endregion
    }
}
