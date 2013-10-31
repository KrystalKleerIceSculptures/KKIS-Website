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
    using System.Collections.Generic;
    using System.Web.Mvc;

    using KKIS.Data.Contracts;
    using KKIS.Data.Models;
    using KKIS.Data.Services;
    using KKIS.Web.Models;

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
        /// Displays the home index view.
        /// </summary>
        /// <returns>The home index view.</returns>
        public ActionResult Index()
        {
            ViewBag.Gallery = new List<PhotoAlbum>();
            return this.View(new ContactModel());
        }
    }
}
