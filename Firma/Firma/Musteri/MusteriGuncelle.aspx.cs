using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma.Musteri
{
    public partial class MusteriGuncelle : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
                if (Page.IsPostBack == false)
                {
                    int id = Convert.ToInt32(Request.QueryString["MUSTERIID"]);
                    var musterı = db.TBL_MUSTERI.Find(id);
                    TxtAd.Text = musterı.MUSTERIAD;
                    TxtSoyad.Text = musterı.MUSTERISOYAD;
                    TxtNumara.Text = musterı.MUSTERITELEFON;
                }
        }

        protected void BtnMusteriGuncelle_Click(object sender, EventArgs e)
        {
                int id = Convert.ToInt32(Request.QueryString["MUSTERIID"]);
                var musteri = db.TBL_MUSTERI.Find(id);
                musteri.MUSTERIAD = TxtAd.Text;
                musteri.MUSTERISOYAD = TxtSoyad.Text;
                musteri.MUSTERITELEFON = TxtNumara.Text;
                db.SaveChanges();
                Response.Redirect("Musteri.aspx");
        }
    }
}