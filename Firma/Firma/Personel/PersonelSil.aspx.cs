using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma.Personel
{
    public partial class PersonelSil : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
                int id = Convert.ToInt32(Request.QueryString["PERSONELID"]);
                var deger = db.TBL_PERSONEL.Find(id);
                deger.PERSONELDURUM = false;
                db.SaveChanges();
                Response.Redirect("Personel.Aspx");
        }
    }
}