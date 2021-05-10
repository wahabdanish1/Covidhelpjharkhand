using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Covidhelp
{
    public partial class Home : System.Web.UI.Page
    {
        public enum MessageType { Success, Error, Info, Warning };

        protected void Page_Load(object sender, EventArgs e)
        {
            //ShowMessage("Superb! Its Working", MessageType.Success);

            ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", "swal('Good job!', 'You clicked the button!', 'success')", true);
            
        }

        protected void ShowMessage(string Message, MessageType type)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
        }
    }
}