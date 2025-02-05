﻿#pragma checksum "..\..\..\..\Pages\Shell\ShellView.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "D2D389894CE0E792B9FAA57957F23E03"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18408
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DesignerTool.AppLogic;
using DesignerTool.AppLogic.ViewModels.Shell;
using DesignerTool.Controls;
using DesignerTool.Styles.Wpf.Controls;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace DesignerTool.Pages.Shell {
    
    
    /// <summary>
    /// ShellView
    /// </summary>
    public partial class ShellView : DesignerTool.Styles.Wpf.Controls.MetroWindow, System.Windows.Markup.IComponentConnector {
        
        
        #line 29 "..\..\..\..\Pages\Shell\ShellView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid grdTop;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\..\..\Pages\Shell\ShellView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ContextMenu ctxViewProfile;
        
        #line default
        #line hidden
        
        
        #line 46 "..\..\..\..\Pages\Shell\ShellView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnLicense;
        
        #line default
        #line hidden
        
        
        #line 68 "..\..\..\..\Pages\Shell\ShellView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DesignerTool.Styles.Wpf.Controls.TransitioningContentControl contentMain;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/DesignerTool;component/pages/shell/shellview.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Pages\Shell\ShellView.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 12 "..\..\..\..\Pages\Shell\ShellView.xaml"
            ((DesignerTool.Pages.Shell.ShellView)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Page_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.grdTop = ((System.Windows.Controls.Grid)(target));
            return;
            case 3:
            
            #line 37 "..\..\..\..\Pages\Shell\ShellView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ViewProfileMenu_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.ctxViewProfile = ((System.Windows.Controls.ContextMenu)(target));
            return;
            case 5:
            
            #line 40 "..\..\..\..\Pages\Shell\ShellView.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.ViewProfile_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            
            #line 42 "..\..\..\..\Pages\Shell\ShellView.xaml"
            ((System.Windows.Controls.MenuItem)(target)).Click += new System.Windows.RoutedEventHandler(this.Logout_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.btnLicense = ((System.Windows.Controls.Button)(target));
            
            #line 49 "..\..\..\..\Pages\Shell\ShellView.xaml"
            this.btnLicense.Click += new System.Windows.RoutedEventHandler(this.License_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            
            #line 57 "..\..\..\..\Pages\Shell\ShellView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Back_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            
            #line 60 "..\..\..\..\Pages\Shell\ShellView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Home_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            
            #line 63 "..\..\..\..\Pages\Shell\ShellView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.ShowMenu_Click);
            
            #line default
            #line hidden
            return;
            case 11:
            this.contentMain = ((DesignerTool.Styles.Wpf.Controls.TransitioningContentControl)(target));
            return;
            case 12:
            
            #line 90 "..\..\..\..\Pages\Shell\ShellView.xaml"
            ((System.Windows.Controls.Label)(target)).MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.Users_Click);
            
            #line default
            #line hidden
            return;
            case 13:
            
            #line 91 "..\..\..\..\Pages\Shell\ShellView.xaml"
            ((System.Windows.Controls.Label)(target)).MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.GenerateActivationKey_Click);
            
            #line default
            #line hidden
            return;
            case 14:
            
            #line 92 "..\..\..\..\Pages\Shell\ShellView.xaml"
            ((System.Windows.Controls.Label)(target)).MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.Debtors_Click);
            
            #line default
            #line hidden
            return;
            case 15:
            
            #line 93 "..\..\..\..\Pages\Shell\ShellView.xaml"
            ((System.Windows.Controls.Label)(target)).MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.Suppliers_Click);
            
            #line default
            #line hidden
            return;
            case 16:
            
            #line 94 "..\..\..\..\Pages\Shell\ShellView.xaml"
            ((System.Windows.Controls.Label)(target)).MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.UnitTypes_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

