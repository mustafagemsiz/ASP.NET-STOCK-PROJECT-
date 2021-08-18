using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma.Urun
{
    public partial class UrunSil : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
                int id = Convert.ToInt32(Request.QueryString["URUNID"]);
                var urun = db.TBL_URUN.Find(id);
                urun.URUNDURUM = false;
                db.SaveChanges();
                Response.Redirect("Urun.Aspx");
        }
    }
}