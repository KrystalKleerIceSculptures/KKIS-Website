using System.Collections.Generic;
using System.Configuration;
using System.Web.Mvc;
using KKIS.Data.Contracts;
using KKIS.Data.Models;
using KKIS.Data.Services;

namespace KKIS.Web.Controllers
{
    public class GalleryController : BaseController
    {
        public GalleryController() : base(new KkisDataService()) { }
        public GalleryController(IKkisDataService kkisDataService) : base(kkisDataService) { }

        public ActionResult Index()
        {
            ViewBag.Gallery = new List<PhotoAlbum>();
            PhotoAlbumCollection albumCollection = KkisData.GetAlbumList(ConfigurationManager.AppSettings["KKISGoogleUser"]);
            return View(albumCollection);
        }

        public JsonResult Navigation()
        {
            PhotoAlbumCollection albumCollection = KkisData.GetAlbumList(ConfigurationManager.AppSettings["KKISGoogleUser"]);
            return Json(albumCollection);
        }
    }
}
