using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma.Musteri
{
    public partial class Musteri : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var deger = db.TBL_MUSTERI.ToList();
            Repeater1.DataSource = deger;
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            TBL_MUSTERI t = new TBL_MUSTERI();
            t.MUSTERIAD = TxtMusteriAd.Text;
            t.MUSTERISOYAD = TxtMusteriSoyad.Text;
            t.MUSTERITELEFON = TxtMusteriTelefon.Text;
            db.TBL_MUSTERI.Add(t);
            db.SaveChanges();
            Response.Redirect("Musteri.Aspx");
        }
    }
}