// --------------------------------------------------------------------------------------------------------------------
// <copyright file="GalleryController.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace KKIS.Web.Controllers
{
    using System.Collections.Generic;
    using System.Configuration;
    using System.Web.Mvc;

    using KKIS.Data.Contracts;
    using KKIS.Data.Models;
    using KKIS.Data.Services;

    /// <summary>
    /// Gallery controller
    /// </summary>
    public class GalleryController : BaseController
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="GalleryController"/> class.
        /// </summary>
        public GalleryController()
            : base(new KkisDataService())
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="GalleryController"/> class.
        /// </summary>
        /// <param name="kkisDataService">The KKIS data service.</param>
        public GalleryController(IKkisDataService kkisDataService)
            : base(kkisDataService)
        {
        }

        /// <summary>
        /// Displays the gallery index view.
        /// </summary>
        /// <returns>The gallery index view.</returns>
        public ActionResult Index()
        {
            ViewBag.Gallery = new List<PhotoAlbum>();
            PhotoAlbumCollection albumCollection = KkisData.GetAlbumList(ConfigurationManager.AppSettings["KKISGoogleUser"]);
            return this.View(albumCollection);
        }

        /// <summary>
        /// Retrieves navigation data for the gallery.
        /// </summary>
        /// <returns>The gallery navigation data in JSON format.</returns>
        public JsonResult Navigation()
        {
            PhotoAlbumCollection albumCollection = KkisData.GetAlbumList(ConfigurationManager.AppSettings["KKISGoogleUser"]);
            return this.Json(albumCollection);
        }
    }
}
