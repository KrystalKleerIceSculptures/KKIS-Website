using System.Collections.Generic;
using System.Web.Mvc;
using KKIS.Data.Contracts;
using KKIS.Data.Models;
using KKIS.Data.Services;
using KKIS.Web.Models;

namespace KKIS.Web.Controllers
{
    public class HomeController : BaseController
    {
        public HomeController() : this(new KkisDataService()) { }
        public HomeController(IKkisDataService kkisdataService) : base(kkisdataService) { }

        public ActionResult Index()
        {
            ViewBag.Gallery = new List<PhotoAlbum>();
            return View(new ContactModel());
        }

        [HttpPost]
        public ActionResult Index(ContactModel model)
        {
            return View(model);
        }
    }
}
