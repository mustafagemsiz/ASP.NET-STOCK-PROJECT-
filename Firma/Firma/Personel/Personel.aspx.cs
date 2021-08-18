using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;

namespace Firma.Personel
{
    public partial class Personel : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
                //var deger = db.TBL_PERSONEL.ToList();
                var deger = (from x in db.TBL_PERSONEL
                             where x.PERSONELDURUM == true
                             select new
                             {
                                 x.PERSONELID,
                                 x.PERSONELADSOYAD,
                                 x.PERSONELTELEFON,
                                 x.PERSONELADRES,
                             }).ToList();
                Repeater1.DataSource = deger;
                Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                TBL_PERSONEL t = new TBL_PERSONEL();
                t.PERSONELADSOYAD = TxtAdSoyad.Text;
                t.PERSONELTELEFON = TxtTelefon.Text; ;
                t.PERSONELADRES = TxtAdres.Text;
                t.PERSONELDURUM = true;
                db.TBL_PERSONEL.Add(t);
                db.SaveChanges();
                Response.Redirect("Personel.Aspx");
        }
    }
}