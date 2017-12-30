using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;



public partial class Administration_EditGallery : System.Web.UI.Page
{

    GallerySql gallery = new GallerySql();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["supervisor"] == null)
                Response.Redirect("Login.aspx");
        }

    }

    protected void Upload()
    {
        if (fuGallery.HasFile)
        {
            try
            {
                string fileName = Path.GetFileName(fuGallery.PostedFile.FileName);
                fuGallery.PostedFile.SaveAs(Server.MapPath("~/Gallery/") + fileName);
                lblMessage.Text = "Upload success";
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Upload faild";
                return;
            }


        }
    }


    protected void SaveToSql()
    {
        gallery.Image = Path.GetFileName(fuGallery.PostedFile.FileName);
        gallery.IsVisible = cbIsVisible.Checked;
        gallery.ImageOrder = Convert.ToInt32(txtOrder.Text);

        gallery.InsertImage();

    }




    protected void Save(object sender, EventArgs e)
    {

        try
        {
            Upload();
            SaveToSql();
            lblMessage.Text = lblMessage.Text + ", Save to Sql";
        }

        catch (Exception ex)
        {
            lblMessage.Text = lblMessage.Text + ", Save to Sql faild";
            return;
        }

        Response.Redirect(Request.Url.AbsoluteUri);

    }


}