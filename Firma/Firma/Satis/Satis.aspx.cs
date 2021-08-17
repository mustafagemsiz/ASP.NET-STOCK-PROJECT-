using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma.Satis
{
    public partial class Satis : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //var satis = db.TBL_SATIS.ToList();
            var satis = (from x in db.TBL_SATIS
                         select new
                         {
                             x.SATISID,
                             x.TBL_URUN.URUNAD,
                             x.TBL_PERSONEL.PERSONELADSOYAD,
                             MUSTERI = x.TBL_MUSTERI.MUSTERIAD + " " + x.TBL_MUSTERI.MUSTERISOYAD,
                             x.FIYAT
                         }).ToList();
            Repeater1.DataSource = satis;
            Repeater1.DataBind();
        }
    }
}