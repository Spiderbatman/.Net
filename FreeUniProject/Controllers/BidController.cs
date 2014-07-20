using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FreeUniProject.Controllers
{
    public class BidController : Controller
    {
        private BankDBEntities db = new BankDBEntities();

        //
        // GET: /Bid/

        public ActionResult Index()
        {


            
            IQueryable<Bid> bids;
                   int k = Int32.Parse(User.Identity.Name);
                   AppUser ap = db.AppUsers.FirstOrDefault(r => r.AppUserID == k);
                    if (  ap != null && ap.AppUserType == 1) {
                        bids = db.Bids.Include(b => b.AppUser).Include(b => b.Debitor);
                    }
                    else
                    {
                     bids = db.Bids.Include(b => b.AppUser).Include(b => b.Debitor).Where(r=>r.BidCreator == k);
                    }

            return View(bids.ToList());
        }

        //
        // GET: /Bid/Details/5

        public ActionResult Details(long id = 0)
        {
            Bid bid = db.Bids.Find(id);
            if (bid == null)
            {
                return HttpNotFound();
            }
            return View(bid);
        }

        [HttpPost]
        public ActionResult FilterBids(FormCollection vals)
        {

           
            IQueryable<Bid> bids;

           
          
            bids = db.Bids.Include(b => b.AppUser).Include(b => b.Debitor);

          /*  if (vals["DebitorID"].Length > 0)
            {
                
                int d = int.Parse(vals["DebitorID"]);
                bids = bids.Where(r => r.Debitor.DebitorID == d);
            }*/
            if (vals["JobExperience"].Length > 0)
            {
                decimal d = Decimal.Parse(vals["JobExperience"]);
                bids = bids.Where(r => r.JobExperience == d);
            }
            if (vals["Amount"].Length > 0)
            {
                   
               decimal d = Decimal.Parse(vals["Amount"]);
               bids = bids.Where(r => r.Amount == d);
            }
            if (vals["BidDate"].Length > 0)
            {
                System.DateTime d = Convert.ToDateTime(vals["BidDate"]);
                bids = bids.Where(r =>  DateTime.Compare(r.BidDate,d) == 0);
            }


            if (vals["BidCreator"].Length > 0)
            {

                String s = vals["BidCreator"];
                bids = bids.Where(r => (r.AppUser.AppUserName).Equals(s));
            }
            
            

            if (vals["BidStatus"].Length > 0)
            {
                decimal d = decimal.Parse(vals["BidStatus"]);
                bids = bids.Where(r => r.BidStatus == d);
            }
            
   
            return View("Index", bids.ToList());
        }

        //
        // GET: /Bid/Create

        public ActionResult Create()
        {
            ViewBag.BidCreator = new SelectList(db.AppUsers, "AppUserID", "AppUserName");
            ViewBag.DebitorID = new SelectList(db.Debitors, "DebitorID", "PersonalID");
            return View();
        }

        //
        // POST: /Bid/Create

        [HttpPost]
        public ActionResult Create(Bid bid)
        {
            if (ModelState.IsValid)
            {
                db.Bids.Add(bid);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.BidCreator = new SelectList(db.AppUsers, "AppUserID", "AppUserName", bid.BidCreator);
            ViewBag.DebitorID = new SelectList(db.Debitors, "DebitorID", "PersonalID", bid.DebitorID);
            return View(bid);
        }

        //
        // GET: /Bid/Edit/5

        public ActionResult Edit(long id = 0)
        {
            Bid bid = db.Bids.Find(id);
            if (bid == null)
            {
                return HttpNotFound();
            }
            ViewBag.BidCreator = new SelectList(db.AppUsers, "AppUserID", "AppUserName", bid.BidCreator);
            ViewBag.DebitorID = new SelectList(db.Debitors, "DebitorID", "PersonalID", bid.DebitorID);
            return View(bid);
        }

        //
        // POST: /Bid/Edit/5

        [HttpPost]
        public ActionResult Edit(Bid bid)
        {
            if (ModelState.IsValid)
            {
                db.Entry(bid).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.BidCreator = new SelectList(db.AppUsers, "AppUserID", "AppUserName", bid.BidCreator);
            ViewBag.DebitorID = new SelectList(db.Debitors, "DebitorID", "PersonalID", bid.DebitorID);
            return View(bid);
        }

        //
        // GET: /Bid/Delete/5

        public ActionResult Delete(long id = 0)
        {
            Bid bid = db.Bids.Find(id);
            if (bid == null)
            {
                return HttpNotFound();
            }
            return View(bid);
        }

        //
        // POST: /Bid/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(long id)
        {
            Bid bid = db.Bids.Find(id);
            db.Bids.Remove(bid);
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