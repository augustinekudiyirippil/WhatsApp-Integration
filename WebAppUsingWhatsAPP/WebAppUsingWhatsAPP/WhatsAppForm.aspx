<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WhatsAppForm.aspx.cs" Inherits="WebAppUsingWhatsAPP.WhatsAppForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 228px;
        }
        .auto-style2 {
            width: 228px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            width: 161px;
        }
        .auto-style5 {
            width: 161px;
        }
        .auto-style6 {
            width: 173px;
            height: 23px;
        }
        .auto-style7 {
            width: 173px;
        }
        .auto-style8 {
            width: 56%;
        }
        .auto-style9 {
            width: 186px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%; font-family: Arial; font-size: medium;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style4"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" style="font-family: Arial; font-size: large">Whatsapp Contacts</td>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server"  Text="Button" Visible="False"   />
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">WhatsApp number (to):</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtWhatsAppNumber" runat="server">+440000000000</asp:TextBox>
                    </td>
                    <td class="auto-style7"> Message:</td>
                    <td>
                        <asp:TextBox ID="txtWhatsText" runat="server" Width="909px">Provide message here</asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style7"> Document:</td>
                    <td>
                        <asp:TextBox ID="txtDocument" runat="server" Width="906px">https://www.adobe.com/support/products/enterprise/knowledgecenter/media/c4611_sample_explain.pdf</asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style7"> Image:</td>
                    <td>
                        <asp:TextBox ID="txtImagePath" runat="server" Width="906px">https://www.google.co.uk/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png</asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <table class="auto-style8">
                            <tr>
                                <td class="auto-style9">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">
                        <asp:ImageButton ID="btnCallWhatsApp" runat="server" Height="46px" ImageUrl="~/Assets/Images/whatsappimg.jpg" OnClick="openwhatsappWithMSG" Width="46px" />
                                </td>
                                <td>
                        <asp:ImageButton ID="btnSendTextMessage" runat="server" ImageUrl="~/Assets/Images/whatsapBlue.jpg" OnClick="btnSendtMessage_Click"  />
                                </td>
                                <td>
                                    <asp:ImageButton ID="btnSendDcument" runat="server" height="39px" ImageUrl="~/Assets/Images/whatsAppSendDocument.jpg" OnClick="btnSendDcument_Click" width="42px" />
                                </td>
                                <td>
                                    <asp:ImageButton ID="btnSendWhatsAppImage" runat="server" height="45px" ImageUrl="~/Assets/Images/SendWhatsAppPicture.jpg" OnClick="btnSendWhatsAppImage_Click" width="49px" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Open whatspp onlie</td>
                                <td>Send text </td>
                                <td>Send document</td>
                                <td>Send image</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" Text="   "></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server"  Text="Button" ViewStateMode="Disabled" Visible="False" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtError" runat="server" Height="121px" Width="504px">Exception message will be captured here</asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        Pre requirements</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        1) Create an account in https://user.ultramsg.com/signup.php</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        2) Find the instance&nbsp; from https://user.ultramsg.com/app/instances/instances.php</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        3) Provide th details in the Web.config file in this project</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
