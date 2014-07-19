using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace FreeUniProject.Controllers
{

    public class AppUserController : Controller
    {
        private BankDBEntities db = new BankDBEntities();


        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(AppUser appuser)
        {
            AppUser ap;
            ap = db.AppUsers.FirstOrDefault( r=>r.AppUserName == appuser.AppUserName && r.AppUserPass == appuser.AppUserPass );
            if (ap!=null)
            {
                FormsAuthentication.SetAuthCookie(ap.AppUserID.ToString(), false);
                return Redirect("~/Home/Index");
            }
            return View();
        }
        //
        // GET: /AppUser/

        public ActionResult Index()
        {
            return View(db.AppUsers.ToList());
        }

        //
        // GET: /AppUser/Details/5

        public ActionResult Details(int id = 0)
        {
            AppUser appuser = db.AppUsers.Find(id);
            if (appuser == null)
            {
                return HttpNotFound();
            }
            return View(appuser);
        }

        //
        // GET: /AppUser/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /AppUser/Create

        [HttpPost]
        public ActionResult Create(AppUser appuser)
        {
            if (ModelState.IsValid)
            {
                db.AppUsers.Add(appuser);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(appuser);
        }

        //
        // GET: /AppUser/Edit/5

        public ActionResult Edit(int id = 0)
        {
            AppUser appuser = db.AppUsers.Find(id);
            if (appuser == null)
            {
                return HttpNotFound();
            }
            return View(appuser);
        }

        //
        // POST: /AppUser/Edit/5

        [HttpPost]
        public ActionResult Edit(AppUser appuser)
        {
            if (ModelState.IsValid)
            {
                db.Entry(appuser).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(appuser);
        }

        //
        // GET: /AppUser/Delete/5

        public ActionResult Delete(int id = 0)
        {
            AppUser appuser = db.AppUsers.Find(id);
            if (appuser == null)
            {
                return HttpNotFound();
            }
            return View(appuser);
        }

        //
        // POST: /AppUser/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            AppUser appuser = db.AppUsers.Find(id);
            db.AppUsers.Remove(appuser);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}