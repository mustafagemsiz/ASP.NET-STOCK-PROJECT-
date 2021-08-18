using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma.Personel
{
    public partial class PersonelGuncelle : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
                if (Page.IsPostBack == false)
                {
                    int id = Convert.ToInt32(Request.QueryString["PERSONELID"]);
                    var personel = db.TBL_PERSONEL.Find(id);
                    TxtAdSoyad.Text = personel.PERSONELADSOYAD;
                    TxtTelefon.Text = personel.PERSONELTELEFON;
                    TxtAdres.Text = personel.PERSONELADRES;
                }
        }

        protected void BtnMusteriGuncelle_Click(object sender, EventArgs e)
        {
                int id = Convert.ToInt32(Request.QueryString["PERSONELID"]);
                var personel = db.TBL_PERSONEL.Find(id);
                personel.PERSONELADSOYAD = TxtAdSoyad.Text;
                personel.PERSONELTELEFON = TxtTelefon.Text;
                personel.PERSONELADRES = TxtAdres.Text;
                db.SaveChanges();
                Response.Redirect("Personel.Aspx");
        }
    }
}