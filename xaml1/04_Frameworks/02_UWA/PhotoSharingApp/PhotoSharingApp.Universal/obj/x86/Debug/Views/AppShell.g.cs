﻿#pragma checksum "C:\Courseware\Xaml01\Exercise Files\04_Frameworks\02_UWA\PhotoSharingApp\PhotoSharingApp.Universal\Views\AppShell.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "9445E62E8BF216925783A71942F9246F"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PhotoSharingApp.Universal.Views
{
    partial class AppShell : 
        global::Windows.UI.Xaml.Controls.Page, 
        global::Windows.UI.Xaml.Markup.IComponentConnector,
        global::Windows.UI.Xaml.Markup.IComponentConnector2
    {
        /// <summary>
        /// Connect()
        /// </summary>
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Windows.UI.Xaml.Build.Tasks"," 14.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public void Connect(int connectionId, object target)
        {
            switch(connectionId)
            {
            case 1:
                {
                    global::Windows.UI.Xaml.Controls.Page element1 = (global::Windows.UI.Xaml.Controls.Page)(target);
                    #line 36 "..\..\..\Views\AppShell.xaml"
                    ((global::Windows.UI.Xaml.Controls.Page)element1).KeyDown += this.AppShell_KeyDown;
                    #line default
                }
                break;
            case 2:
                {
                    this.rootSplitView = (global::Windows.UI.Xaml.Controls.SplitView)(target);
                }
                break;
            case 3:
                {
                    this.togglePaneButton = (global::Windows.UI.Xaml.Controls.Primitives.ToggleButton)(target);
                    #line 160 "..\..\..\Views\AppShell.xaml"
                    ((global::Windows.UI.Xaml.Controls.Primitives.ToggleButton)this.togglePaneButton).Unchecked += this.TogglePaneButton_Checked;
                    #line default
                }
                break;
            case 4:
                {
                    this.navMenuList = (global::PhotoSharingApp.Universal.Controls.NavMenuListView)(target);
                    #line 121 "..\..\..\Views\AppShell.xaml"
                    ((global::PhotoSharingApp.Universal.Controls.NavMenuListView)this.navMenuList).ContainerContentChanging += this.NavMenuItemContainerContentChanging;
                    #line 124 "..\..\..\Views\AppShell.xaml"
                    ((global::PhotoSharingApp.Universal.Controls.NavMenuListView)this.navMenuList).ItemInvoked += this.NavMenuList_ItemInvoked;
                    #line default
                }
                break;
            case 5:
                {
                    this.bottomNavMenuList = (global::PhotoSharingApp.Universal.Controls.NavMenuListView)(target);
                    #line 131 "..\..\..\Views\AppShell.xaml"
                    ((global::PhotoSharingApp.Universal.Controls.NavMenuListView)this.bottomNavMenuList).ContainerContentChanging += this.NavMenuItemContainerContentChanging;
                    #line 134 "..\..\..\Views\AppShell.xaml"
                    ((global::PhotoSharingApp.Universal.Controls.NavMenuListView)this.bottomNavMenuList).ItemInvoked += this.NavMenuList_ItemInvoked;
                    #line default
                }
                break;
            case 6:
                {
                    this.frame = (global::Windows.UI.Xaml.Controls.Frame)(target);
                    #line 141 "..\..\..\Views\AppShell.xaml"
                    ((global::Windows.UI.Xaml.Controls.Frame)this.frame).Navigated += this.OnNavigatedToPage;
                    #line default
                }
                break;
            default:
                break;
            }
            this._contentLoaded = true;
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Windows.UI.Xaml.Build.Tasks"," 14.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public global::Windows.UI.Xaml.Markup.IComponentConnector GetBindingConnector(int connectionId, object target)
        {
            global::Windows.UI.Xaml.Markup.IComponentConnector returnValue = null;
            return returnValue;
        }
    }
}
