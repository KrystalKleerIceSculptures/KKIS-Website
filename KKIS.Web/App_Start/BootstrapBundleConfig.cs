// --------------------------------------------------------------------------------------------------------------------
// <copyright file="BootstrapBundleConfig.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

using System.Diagnostics.CodeAnalysis;
using System.Web.Optimization;

[assembly: WebActivatorEx.PostApplicationStartMethod(typeof(KKIS.Web.App_Start.BootstrapBundleConfig), "RegisterBundles")]

namespace KKIS.Web.App_Start
{
    /// <summary>
    /// Bootstrap bundle config
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class BootstrapBundleConfig
    {
        /// <summary>
        /// Registers the bundles.
        /// </summary>
        public static void RegisterBundles()
        {
            // Add @Styles.Render("~/Content/bootstrap") in the <head/> of your _Layout.cshtml view
            // Add @Scripts.Render("~/bundles/bootstrap") after jQuery in your _Layout.cshtml view
            // When <compilation debug="true" />, MVC4 will render the full readable version. When set to <compilation debug="false" />, the minified version will be rendered automatically
            BundleTable.Bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include("~/Scripts/bootstrap*"));
            BundleTable.Bundles.Add(new StyleBundle("~/Content/bootstrap").Include("~/Content/bootstrap.css", "~/Content/bootstrap-responsive.css"));
        }
    }
}
