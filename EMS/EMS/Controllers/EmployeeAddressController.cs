using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using EMS.Models;

namespace EMS.Controllers
{
    public class EmployeeAddressController : Controller
    {
        private ModelEMS db = new ModelEMS();

        // GET: EmployeeAddress
        public ActionResult Index()
        {
            var tbl_EmployeeAddress = db.tbl_EmployeeAddress.Include(t => t.tbl_city_master).Include(t => t.tbl_country_master).Include(t => t.tbl_Employee).Include(t => t.tbl_state_master);
            return View(tbl_EmployeeAddress.ToList());
        }

        // GET: EmployeeAddress/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_EmployeeAddress tbl_EmployeeAddress = db.tbl_EmployeeAddress.Find(id);
            if (tbl_EmployeeAddress == null)
            {
                return HttpNotFound();
            }
            return View(tbl_EmployeeAddress);
        }

        // GET: EmployeeAddress/Create
        public ActionResult Create()
        {
            ViewBag.city = new SelectList(db.tbl_city_master, "id", "code");
            ViewBag.country = new SelectList(db.tbl_country_master, "id", "code");
            ViewBag.employee_id = new SelectList(db.tbl_Employee, "id", "empno");
            ViewBag.state = new SelectList(db.tbl_state_master, "id", "code");
            return View();
        }

        // POST: EmployeeAddress/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,employee_id,ispermanant,addressline1,addressline2,country,state,city,pin,contact,status")] tbl_EmployeeAddress tbl_EmployeeAddress)
        {
            if (ModelState.IsValid)
            {
                db.tbl_EmployeeAddress.Add(tbl_EmployeeAddress);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.city = new SelectList(db.tbl_city_master, "id", "code", tbl_EmployeeAddress.city);
            ViewBag.country = new SelectList(db.tbl_country_master, "id", "code", tbl_EmployeeAddress.country);
            ViewBag.employee_id = new SelectList(db.tbl_Employee, "id", "empno", tbl_EmployeeAddress.employee_id);
            ViewBag.state = new SelectList(db.tbl_state_master, "id", "code", tbl_EmployeeAddress.state);
            return View(tbl_EmployeeAddress);
        }

        // GET: EmployeeAddress/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_EmployeeAddress tbl_EmployeeAddress = db.tbl_EmployeeAddress.Find(id);
            if (tbl_EmployeeAddress == null)
            {
                return HttpNotFound();
            }
            ViewBag.city = new SelectList(db.tbl_city_master, "id", "code", tbl_EmployeeAddress.city);
            ViewBag.country = new SelectList(db.tbl_country_master, "id", "code", tbl_EmployeeAddress.country);
            ViewBag.employee_id = new SelectList(db.tbl_Employee, "id", "empno", tbl_EmployeeAddress.employee_id);
            ViewBag.state = new SelectList(db.tbl_state_master, "id", "code", tbl_EmployeeAddress.state);
            return View(tbl_EmployeeAddress);
        }

        // POST: EmployeeAddress/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,employee_id,ispermanant,addressline1,addressline2,country,state,city,pin,contact,status")] tbl_EmployeeAddress tbl_EmployeeAddress)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tbl_EmployeeAddress).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.city = new SelectList(db.tbl_city_master, "id", "code", tbl_EmployeeAddress.city);
            ViewBag.country = new SelectList(db.tbl_country_master, "id", "code", tbl_EmployeeAddress.country);
            ViewBag.employee_id = new SelectList(db.tbl_Employee, "id", "empno", tbl_EmployeeAddress.employee_id);
            ViewBag.state = new SelectList(db.tbl_state_master, "id", "code", tbl_EmployeeAddress.state);
            return View(tbl_EmployeeAddress);
        }

        // GET: EmployeeAddress/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tbl_EmployeeAddress tbl_EmployeeAddress = db.tbl_EmployeeAddress.Find(id);
            if (tbl_EmployeeAddress == null)
            {
                return HttpNotFound();
            }
            return View(tbl_EmployeeAddress);
        }

        // POST: EmployeeAddress/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            tbl_EmployeeAddress tbl_EmployeeAddress = db.tbl_EmployeeAddress.Find(id);
            db.tbl_EmployeeAddress.Remove(tbl_EmployeeAddress);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
