using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma
{
    public partial class KategoriSil : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{        
            Db_FirmaEntities db = new Db_FirmaEntities();
            int gelenDeger = Convert.ToInt32(Request.QueryString["KATEGORIID"]);
            var param = db.TBL_KATEGORI.Find(gelenDeger);
            db.TBL_KATEGORI.Remove(param);
            db.SaveChanges();
            Response.Redirect("Kategori.Aspx");
            //}
            //catch (Exception)
            //{
            //    Response.Redirect("Kategori.Aspx");
            //}
        }
    }
}