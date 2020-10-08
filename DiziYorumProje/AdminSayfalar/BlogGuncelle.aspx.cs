using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class BlogGuncelle : System.Web.UI.Page
    {
        BlogDiziEntities1 db = new BlogDiziEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = Convert.ToInt32(Request.QueryString["BLOGID"]);
            if (Page.IsPostBack == false)
            {
                var turler = (from x in db.TBLTUR
                              select new
                              {
                                  x.TURAD,
                                  x.TURID
                              }).ToList();
                DropDownList1.DataSource = turler;
                DropDownList1.DataBind();

                var kategoriler = (from x in db.TBLKATEGORI
                                   select new
                                   {
                                       x.KATEGORIAD,
                                       x.KATEGORIID
                                   }).ToList();
                DropDownList2.DataSource = kategoriler;
                DropDownList2.DataBind();

                var degerler = db.TBLBLOG.Find(y);
                TextBox1.Text = degerler.BLOGBASLIK;
                TextBox2.Text = degerler.BLOGTARIH.ToString();
                TextBox3.Text = degerler.BLOGGORSEL;
                TextBox4.Text = degerler.BLOGICERIK;
                DropDownList1.SelectedValue = degerler.BLOGTUR.ToString();
                DropDownList2.SelectedValue = degerler.BLOGKATEGORI.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["BLOGID"]);
            var blog = db.TBLBLOG.Find(y);
            blog.BLOGBASLIK = TextBox1.Text;
            blog.BLOGTARIH = DateTime.Parse(TextBox2.Text);
            blog.BLOGGORSEL = TextBox3.Text;
            blog.BLOGICERIK = TextBox4.Text;
            blog.BLOGTUR = byte.Parse(DropDownList1.SelectedValue.ToString());
            blog.BLOGKATEGORI = byte.Parse(DropDownList2.SelectedValue.ToString());
            db.SaveChanges();
            Response.Redirect("Bloglar.Aspx");



        }
    }
}