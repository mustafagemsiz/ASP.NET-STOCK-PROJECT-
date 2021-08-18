using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma
{
    public partial class KategoriEkle : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        TBL_KATEGORI tbl = new TBL_KATEGORI();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnKategoriEkle_Click(object sender, EventArgs e)
        {
            if (TxtKategori.Text != "" && TxtKategori.Text != " ")
            {
                tbl.KATEGORIAD = TxtKategori.Text;
                db.TBL_KATEGORI.Add(tbl);
                db.SaveChanges();
                Response.Redirect("Kategori.Aspx");
            }
            else
            {
                Response.Redirect("KategoriEkle.Aspx");
            }
        }
    }
}
