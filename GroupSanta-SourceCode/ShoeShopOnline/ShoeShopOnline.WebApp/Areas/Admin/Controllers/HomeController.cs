using ShoeShopOnline.Model.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShoeShopOnline.WebApp.Areas.Admin.Controllers
{
    public class HomeController : BaseController
    {
        private ShoeShopOnlineDbContext db = new ShoeShopOnlineDbContext();
        // GET: Admin/Home
        public ActionResult Index()
        {
            CountMessage();
            CountOrder();
            CountProduct();
            ViewBag.CountUserGroup = db.UserGroup.Count();
            ViewBag.CountUser = db.User.Where(x => x.IsDeleted == false).Count();
            ViewBag.CountRole = db.Role.Count();
            ViewBag.CountCredential = db.Credentials.Count();
            ViewBag.CountProduct = db.Product.Where(x => x.IsDeleted == false).Count();
            ViewBag.CountProductCategory = db.ProductCategory.Where(x => x.IsDeleted == false).Count();
            ViewBag.CountNews = db.News.Where(x => x.IsDeleted == false).Count();
            ViewBag.CountNewsCategory = db.NewsCategory.Where(x => x.IsDeleted == false).Count();
            ViewBag.CountAbout = db.About.Where(x => x.IsDeleted == false).Count();
            ViewBag.CountMenu = db.Menu.Where(x => x.IsDeleted == false && x.ParentId == null).Count();
            ViewBag.CountSlide = db.Slide.Where(x => x.IsDeleted == false).Count();
            ViewBag.CountContact = db.Contact.Where(x => x.IsDeleted == false).Count();
            ViewBag.CountFooter = db.Footer.Where(x => x.IsDeleted == false).Count();
            ViewBag.CountOrder = db.Order.Where(x => x.IsDeleted == false).Count();

            return View();
        }
    }
}