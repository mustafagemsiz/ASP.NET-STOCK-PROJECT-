using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma.LinqCard
{
    public partial class Istatistik : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Label1.Text = db.TBL_URUN.Count().ToString();
                Label2.Text = db.TBL_MUSTERI.Count().ToString();
                Label3.Text = db.TBL_SATIS.Sum(x => x.FIYAT).ToString();
                Label4.Text = db.TBL_PERSONEL.Count().ToString();
                Label5.Text = db.TBL_URUN.Where(x => x.URUNDURUM == true).Count().ToString();
                Label6.Text = db.TBL_URUN.Where(x => x.URUNDURUM == false).Count().ToString();
                Label7.Text = (from x in db.TBL_URUN orderby x.URUNSTOK descending select x.URUNAD).FirstOrDefault().ToString();
                Label8.Text = db.TBL_KATEGORI.Count().ToString();
            }
            catch (Exception)
            {

               Response.Redirect("/Page/Hata.aspx");
            }

        }
    }
}