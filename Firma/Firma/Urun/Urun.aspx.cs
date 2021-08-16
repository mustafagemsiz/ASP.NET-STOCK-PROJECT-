using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma.Urun
{
    public partial class Urun : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Db_FirmaEntities db = new Db_FirmaEntities();
            //var urun = db.TBL_URUN.Where(x=>x.URUNDURUM==true).ToList();
            var urun = (from x in db.TBL_URUN where x.URUNDURUM==true
                           select new
                           {
                               x.URUNID,
                               x.URUNAD,
                               x.URUNMARKA,
                               x.TBL_KATEGORI.KATEGORIAD,
                               x.URUNFIYAT,
                               x.URUNSTOK
                           }).ToList();
            Repeater1.DataSource = urun;
            Repeater1.DataBind();
        }
    }
}