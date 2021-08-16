using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Firma.Entity;
namespace Firma.Urun
{
    public partial class UrunEkle : System.Web.UI.Page
    {
        Db_FirmaEntities db = new Db_FirmaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
            var kategori = (from x in db.TBL_KATEGORI select new { x.KATEGORIID, x.KATEGORIAD }).ToList();
            DropDownList1.DataTextField = "KATEGORIAD";
            DropDownList1.DataValueField = "KATEGORIID";
            DropDownList1.DataSource = kategori;
            DropDownList1.DataBind();
            }
        }

        protected void BtnKategoriEkle_Click(object sender, EventArgs e)
        {
            TBL_URUN t = new TBL_URUN();
            t.URUNAD = TxtUrun.Text;
            t.URUNSTOK = short.Parse(TxtStok.Text);
            t.URUNMARKA = TxtMarka.Text;
            t.URUNFIYAT =decimal.Parse(TxtFiyat.Text);
            t.URUNKATEGORI =byte.Parse(DropDownList1.SelectedValue);
            db.TBL_URUN.Add(t);
            db.SaveChanges();
            Response.Redirect("Urun.Aspx");

        }
    }
}