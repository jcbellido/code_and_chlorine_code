﻿#pragma checksum "C:\Courseware\Xaml01\Exercise Files\04_Frameworks\02_UWA\PhotoSharingApp\PhotoSharingApp.Universal\Views\GiveGoldDialog.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "A8AFA127A4B009F756CA93DAB1C0B7CD"
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
    partial class GiveGoldDialog : 
        global::Windows.UI.Xaml.Controls.ContentDialog, 
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
                    global::Windows.UI.Xaml.Controls.ContentDialog element1 = (global::Windows.UI.Xaml.Controls.ContentDialog)(target);
                    #line 34 "..\..\..\Views\GiveGoldDialog.xaml"
                    ((global::Windows.UI.Xaml.Controls.ContentDialog)element1).PrimaryButtonClick += this.GiveGoldDialog_OnPrimaryButtonClick;
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

