using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FreeUniProject.Controllers
{
    public class DebitorController : Controller
    {
        private BankDBEntities db = new BankDBEntities();

        //
        // GET: /Debitor/

        public ActionResult Index()
        {
            return View(db.Debitors.ToList());
        }

        //
        // GET: /Debitor/Details/5

        public ActionResult Details(int id = 0)
        {
            Debitor debitor = db.Debitors.Find(id);
            if (debitor == null)
            {
                return HttpNotFound();
            }
            return View(debitor);
        }

        //
        // GET: /Debitor/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Debitor/Create

        [HttpPost]
        public ActionResult Create(Debitor debitor)
        {
            if (ModelState.IsValid)
            {
                db.Debitors.Add(debitor);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(debitor);
        }

        //
        // GET: /Debitor/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Debitor debitor = db.Debitors.Find(id);
            if (debitor == null)
            {
                return HttpNotFound();
            }
            return View(debitor);
        }

        //
        // POST: /Debitor/Edit/5

        [HttpPost]
        public ActionResult Edit(Debitor debitor)
        {
            if (ModelState.IsValid)
            {
                db.Entry(debitor).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(debitor);
        }

        //
        // GET: /Debitor/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Debitor debitor = db.Debitors.Find(id);
            if (debitor == null)
            {
                return HttpNotFound();
            }
            return View(debitor);
        }

        //
        // POST: /Debitor/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Debitor debitor = db.Debitors.Find(id);
            db.Debitors.Remove(debitor);
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