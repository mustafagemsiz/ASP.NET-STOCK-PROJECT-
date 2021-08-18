using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma.Musteri
{
    public partial class MusteriSil : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
                int id = Convert.ToInt32(Request.QueryString["MUSTERIID"]);
                var musteri = db.TBL_MUSTERI.Find(id);
                musteri.MUSTERIDURUM = false;
                db.SaveChanges();
                Response.Redirect("Musteri.Aspx");
        }
    }
}