﻿#pragma checksum "C:\Courseware\Xaml01\Exercise Files\04_Frameworks\02_UWA\PhotoSharingApp\PhotoSharingApp.Universal\Views\CameraPage.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "524E27B14288E1B0AD4F71C28C8F8DBF"
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
    partial class CameraPage : 
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
                    this.contentRoot = (global::Windows.UI.Xaml.Controls.Grid)(target);
                }
                break;
            case 2:
                {
                    this.noCameraDetectedContainer = (global::Windows.UI.Xaml.Controls.Grid)(target);
                }
                break;
            case 3:
                {
                    this.cameraContainer = (global::Windows.UI.Xaml.Controls.Grid)(target);
                }
                break;
            case 4:
                {
                    this.cameraPreviewContainer = (global::Windows.UI.Xaml.Controls.Border)(target);
                }
                break;
            case 5:
                {
                    this.capturePreview = (global::Windows.UI.Xaml.Controls.CaptureElement)(target);
                }
                break;
            case 6:
                {
                    this.headerImage = (global::Windows.UI.Xaml.Controls.Viewbox)(target);
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

