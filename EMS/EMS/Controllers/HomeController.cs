using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using EMS.Models;

namespace EMS.Controllers
{
    public class HomeController : Controller
    {
        private ModelEMS db = new ModelEMS();

        public async Task<JsonResult> GetStates(int? id)
        {
            List<tbl_state_master> states = new List<tbl_state_master>();
            if (id != null)
                states = await db.tbl_state_master.Where(s => s.status == 1 && s.country_id == id).ToListAsync();
            else states = await db.tbl_state_master.Where(s => s.status == 1).ToListAsync();
            List<SelectListItem> result = new List<SelectListItem>();
            foreach (var item in states)
            {
                result.Add(
                        new SelectListItem
                        {
                            Text = Convert.ToString(item.name),
                            Value = Convert.ToString(item.id)
                        });
            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public async Task<JsonResult> GetCities(int? id)
        {
            List<tbl_city_master> cities = new List<tbl_city_master>();
            if (id != null)
                cities = await db.tbl_city_master.Where(s => s.status == 1 && s.state_id == id).ToListAsync();
            else cities = await db.tbl_city_master.Where(s => s.status == 1).ToListAsync();
            List<SelectListItem> result = new List<SelectListItem>();
            foreach (var item in cities)
            {
                result.Add(
                        new SelectListItem
                        {
                            Text = Convert.ToString(item.name),
                            Value = Convert.ToString(item.id)
                        });

            }
            return Json(result, JsonRequestBehavior.AllowGet);
        }
    }
}