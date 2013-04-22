using System.Configuration;
using System.Web.Mvc;
using KKIS.Data.Contracts;
using KKIS.Data.Models;

namespace KKIS.Web.Controllers
{
    public class GalleryController : BaseController
    {
        public GalleryController(IKkisDataService kkisDataService) : base(kkisDataService) { }

        public ActionResult Index()
        {
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
