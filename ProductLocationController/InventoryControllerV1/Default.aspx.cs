using InventoryControllerV1.Helpers;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventoryControllerV1
{
    public partial class _Default : Page
    {
        static string strConnection = ConfigurationManager.ConnectionStrings["dbConnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    DataSet dsFlowerRoom = SqlHelper.ExecuteDataset(strConnection, "GetMeasures");
                    ddMeasure.DataSource = dsFlowerRoom.Tables[0];
                    ddMeasure.DataTextField = "Abbreviation";
                    ddMeasure.DataValueField = "iId";
                    ddMeasure.DataBind();
                }
            }
            catch (Exception ex)
            {

            }//GetMeasures
        }

        protected void btnSaveNewProduct_Click(object sender, EventArgs e)
        {
            try
            {
                //InsertNewProduct
                var ProductName = txtProductName.Text;
                var AlternativeName = txtOtherName.Text;
                var Price = txtPrice.Text;
                var Qty = txtProductQTY.Text;
                var iMeasure = ddMeasure.SelectedValue;

                var PackageDetails = SqlHelper.ExecuteDataset(strConnection, "InsertNewProduct", ProductName, AlternativeName, Price, Qty, iMeasure);

            }
            catch (Exception ex)
            {
            }
        }
    }
}