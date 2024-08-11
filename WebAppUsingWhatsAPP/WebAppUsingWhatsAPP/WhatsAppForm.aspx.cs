using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Threading.Tasks;
using RestSharp;
using System.IO;

namespace WebAppUsingWhatsAPP
{
    public partial class WhatsAppForm : System.Web.UI.Page
    {

        public string errorMessage;
        public string whatsAppURL;
        public string filePath;




        public string UltraMsgAPIURL = System.Configuration.ConfigurationManager.AppSettings["UltraMsgAPIURL"];
        public string UltraMsgInstanceID = System.Configuration.ConfigurationManager.AppSettings["UltraMsgInstanceID"];
        public string UltraMsgToken = System.Configuration.ConfigurationManager.AppSettings["UltraMsgToken"];
        public string UltraMsgChatURL = System.Configuration.ConfigurationManager.AppSettings["UltraMsgChatURL"];
        public string UltraMsgDocumentURL = System.Configuration.ConfigurationManager.AppSettings["UltraMsgDocumentURL"];
        public string UltraMsgAttPath = System.Configuration.ConfigurationManager.AppSettings["UltraMsgAttPath"];
        public string UltraMsgHttpAttPath = System.Configuration.ConfigurationManager.AppSettings["UltraMsgHttpAttPath"];
        public string UltraMsgImageURL = System.Configuration.ConfigurationManager.AppSettings["UltraMsgImageURL"];
        public string UltraMsgDeletePath = System.Configuration.ConfigurationManager.AppSettings["UltraMsgDeletePath"];
        public string UltraMsgChatIDPath = System.Configuration.ConfigurationManager.AppSettings["UltraMsgChatIDPath"];
        



        public string UltraMsgFIleName;


         
        public string chatID;
       



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void openwhatsappWithMSG(object sender, ImageClickEventArgs e)
        {
            try
            {
           
                //THIS WILL OPEN THE WEB WHATSAPP WITH THE PROVIDED NUMBER AND TEXT
                whatsAppURL = "https://web.whatsapp.com/send?phone="+txtWhatsAppNumber.Text.Trim()+"&text=" + txtWhatsText.Text.Trim();
              
                Response.Write("<script type='text/javascript'>window.open('" + whatsAppURL + "');</script>");
            }
            catch(Exception ex)
            {
                errorMessage = ex.Message.ToString();
                txtError.Text = errorMessage;
                

            }
        }

        //BELOW METHOS ID USED TO SEND DOCUMENT TO THE GIVEN WHATSPP NUMBER
        public  async Task sendWhatsAppAttachment(string UltraMsgDocumentURL,  string UltraMsgToken, string UltraMsgTo, string UltraMsgFileName , string  UltraMsgFilePath)
        {

            string exceptionMessage;

        
            try
            {
                
                var url = UltraMsgDocumentURL;
                var client = new RestClient(url);

                var request = new RestRequest(url, Method.Post);

               
                client = new RestClient(url);

                request = new RestRequest(url, Method.Post);
                request.AddHeader("content-type", "application/x-www-form-urlencoded");
                request.AddParameter("token", UltraMsgToken);
                request.AddParameter("to", UltraMsgTo);
              
               
                
                request.AddParameter("filename", UltraMsgFileName);
                request.AddParameter("document", UltraMsgFilePath);

                request.AddParameter("caption", "Test document"+ DateTime.Now.ToString());
                request.AddParameter("priority", "");
                request.AddParameter("referenceId", "");
                request.AddParameter("nocache", "");
                request.AddParameter("msgId", "");
                request.AddParameter("mentions", "");


                RestResponse response = await client.ExecuteAsync(request);

              



            }
            catch (Exception ex)
            {

                exceptionMessage = ex.Message.ToString();

                txtError.Text = exceptionMessage;
            }


        }


       








        //THE BELOW METHOD IS USED TO SEND TEXT MESSAGE TO THE GIVEN WHATSAP NUMBER
        public static async Task sendWhatsAppText(string UltraMsgChatURL, string UltraMsgTextMessage, string UltraMsgToken, string UltraMsgTo)
        {

            string exceptionMessage;

            try
            {


                        var url = UltraMsgChatURL;  

                        var client = new RestClient(url);

                        var request = new RestRequest(url, Method.Post);
                        request.AddHeader("content-type", "application/x-www-form-urlencoded");
                        request.AddParameter("token", UltraMsgToken);
                        request.AddParameter("to",UltraMsgTo);
                        request.AddParameter("body",  UltraMsgTextMessage);
                        request.AddParameter("priority", "10");
                        request.AddParameter("referenceId", "");
                        request.AddParameter("msgId", "");
                        request.AddParameter("mentions", "");

                        await client.ExecuteAsync(request);

                
                        

                
            }
            catch(Exception ex)
            {

                        exceptionMessage = ex.Message.ToString();
               
                        

            }


        }

        public void btnSendtMessage_Click(object sender, ImageClickEventArgs e)
        {
            try
            {

                // SEND TEXT MESSAGE TO THE NUMBER GIVEN IN THE TEXT BOX
                if (txtWhatsText.Text.Trim().Length > 0)
                {
                    _ = sendWhatsAppText(UltraMsgChatURL, txtWhatsText.Text.Trim(), UltraMsgToken, txtWhatsAppNumber.Text.Trim());

                }

            
                lblMessage.Text = "Text sent to " + txtWhatsAppNumber.Text;
            }
            catch(Exception exc)
            {

                errorMessage = exc.Message.ToString();

                txtError.Text = errorMessage;

            }

        }

       
      
        protected void btnSendDcument_Click(object sender, ImageClickEventArgs e)
        {




            try
            {
                //THE BELOW METHOD IS CALLED TO SEND DOCUMENT
                _ = sendWhatsAppAttachment(UltraMsgDocumentURL, UltraMsgToken, txtWhatsAppNumber.Text.Trim(), "Test Document",txtDocument.Text.Trim());
                lblMessage.Text = "Document sent to " + txtWhatsAppNumber.Text;

            }
            catch(Exception ex)
            {

                txtError.Text = ex.Message.ToString();

            }
        }





        //BELOW METHOD IS DEFINED TO SEND IMAGE TO THE GIVEN WHATSAPP CONTACT
        public   async Task sendWhatsAppImage(string UltraMsgImageURL,  string UltraMsgToken, string UltraMsgTo, string UltraMsgImagePath, string UltraMsgImageCaption)
        {

            string exceptionMessage;

            try
            {

                var url = UltraMsgImageURL;
                var client = new RestClient(url);

                var request = new RestRequest(url, Method.Post);
                request.AddHeader("content-type", "application/x-www-form-urlencoded");
                request.AddParameter("token", UltraMsgToken);
                request.AddParameter("to", UltraMsgTo);
                request.AddParameter("image", UltraMsgImagePath);
                request.AddParameter("caption", UltraMsgImageCaption+ DateTime.Now.ToString());
                request.AddParameter("priority", "");
                request.AddParameter("referenceId", "");
                request.AddParameter("nocache", "");
                request.AddParameter("msgId", "");
                request.AddParameter("mentions", "");


                RestResponse response = await client.ExecuteAsync(request);

            }
            catch (Exception ex)
            {

                exceptionMessage = ex.Message.ToString();
                txtError.Text = exceptionMessage;
                
            }


        }

        protected void btnSendWhatsAppImage_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                //BELOW METHOD IS CALLED TO SEND IMAGE TO THE GIVEN NUMBER
                _ = sendWhatsAppImage(UltraMsgImageURL, UltraMsgToken, txtWhatsAppNumber.Text.Trim(), txtImagePath.Text.Trim(), "Test image");
                lblMessage.Text = "Image sent to " + txtWhatsAppNumber.Text; 
            }
            catch (Exception ex)
            {
                txtError.Text = ex.Message.ToString();


            }
        }

   
    }
}