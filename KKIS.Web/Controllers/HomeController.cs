// --------------------------------------------------------------------------------------------------------------------
// <copyright file="HomeController.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace KKIS.Web.Controllers
{
    using System.Configuration;
    using System.Web.Mvc;

    using KKIS.Data.Contracts;
    using KKIS.Data.Models;
    using KKIS.Data.Services;

    /// <summary>
    /// Home controller
    /// </summary>
    public class HomeController : BaseController
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="HomeController"/> class.
        /// </summary>
        public HomeController()
            : this(new KkisDataService())
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="HomeController"/> class.
        /// </summary>
        /// <param name="kkisDataService">The KKIS data service.</param>
        public HomeController(IKkisDataService kkisDataService)
            : base(kkisDataService)
        {
        }

        /// <summary>
        /// Displays the home view.
        /// </summary>
        /// <returns>The home view.</returns>
        public ActionResult Index()
        {
            return this.View();
        }

        /// <summary>
        /// Displays the gallery view.
        /// </summary>
        /// <returns>The gallery view.</returns>
        public ActionResult Gallery()
        {
            return this.View();
        }

        /// <summary>
        /// Displays the about view.
        /// </summary>
        /// <returns>The about view.</returns>
        public ActionResult About()
        {
            return this.View();
        }

        /// <summary>
        /// Displays the contact view.
        /// </summary>
        /// <returns>The contact view.</returns>
        public ActionResult Contact()
        {
            return this.View();
        }

        /// <summary>
        /// Gets the albums.
        /// </summary>
        /// <returns>The albums.</returns>
        [HttpPost]
        public JsonResult GetAlbums()
        {
            PhotoAlbumCollection albumCollection = KkisData.GetAlbumList(ConfigurationManager.AppSettings["KKISGoogleUser"]);
            return this.Json(albumCollection);
        }
    }
}
