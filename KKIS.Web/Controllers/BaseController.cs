// --------------------------------------------------------------------------------------------------------------------
// <copyright file="BaseController.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace KKIS.Web.Controllers
{
    using System.Web.Mvc;

    using KKIS.Data.Contracts;

    /// <summary>
    /// Base controller
    /// </summary>
    public class BaseController : Controller
    {
        /// <summary>
        /// The KKIS data service.
        /// </summary>
        protected readonly IKkisDataService KkisData;

        /// <summary>
        /// Initializes a new instance of the <see cref="BaseController"/> class.
        /// </summary>
        /// <param name="kkisDataService">The kkis data service.</param>
        public BaseController(IKkisDataService kkisDataService)
        {
            this.KkisData = kkisDataService;
        }
    }
}
