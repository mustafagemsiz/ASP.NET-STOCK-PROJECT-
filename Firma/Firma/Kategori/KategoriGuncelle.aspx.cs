using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma
{
    public partial class KategoriGuncelle : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
                TxtKategoriId.Text = id.ToString();
                var ad = db.TBL_KATEGORI.Find(id);
                TxtKategoriAd.Text = ad.KATEGORIAD.ToString();
            }



        }

        protected void BtnKategoriGuncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
            if (TxtKategoriAd.Text != "" && TxtKategoriAd.Text != " ")
            {
                var ad = db.TBL_KATEGORI.Find(id);
                ad.KATEGORIAD = TxtKategoriAd.Text;
                db.SaveChanges();
                Response.Redirect("Kategori.Aspx");
            }
            else
            {
                Response.Redirect("Kategori.Aspx");
            }
        }


    }
}
