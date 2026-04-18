<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customvalidation.aspx.cs" Inherits="WebApplication9.customvalidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                        <table align="center" border="1" style:"accent-color">
                <tr>
                    <td>
            <table align="center" border="1">
                <tr>
                    <td>Name :</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvname" ControlToValidate="txtname" ForeColor="Red" runat="server" ErrorMessage="please enter name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                

                <tr>
                    <td>Course :</td>
                    <td>
                        <asp:TextBox ID="txtcourse" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvcourse" ControlToValidate="txtcourse" ForeColor="Red" runat="server" ErrorMessage="please enter course"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                  <td>Mobile :</td>
                   <td>
                      <asp:TextBox ID="txtmobile" runat="server" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvmobile" ControlToValidate="txtmobile" ForeColor="Red" runat="server" ErrorMessage="please enter mobile number"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="revmobile" ControlToValidate="txtmobile" runat="server" ForeColor="Red" ErrorMessage="Please enter valid Mobile number" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    </td>
</tr>

                <tr>
                    <td>Email : </td>
                    <td>
                         <asp:TextBox ID="txtemail" runat="server" ></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvemail" ControlToValidate="txtemail" ForeColor="Red" runat="server" ErrorMessage="please enter email"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="revemail" ControlToValidate="txtemail" runat="server" ForeColor="Red" ErrorMessage="Please enter correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                 <tr>
                  <td>Age : :</td>
                <td>
                  <asp:TextBox ID="txtage" runat="server" ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="rfvage" ForeColor="Red" ControlToValidate="txtage" runat="server" ErrorMessage="please enter age"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvage" runat="server" ControlToValidate="txtage" ErrorMessage="age must be between 18 and 60" ForeColor="Red" OnServerValidate="cvage_ServerValidate"></asp:CustomValidator>

                </td>
                     </tr>

                <tr>
                    <td>Password :</td>
                    <td>
                       <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvpassword" ForeColor="Red" runat="server"  ErrorMessage="please enter password" ControlToValidate="txtpwd"></asp:RequiredFieldValidator>
                  

                    </td>
                </tr>
                 <tr>
                    <td>Confirm Password :</td>
                      <td>
                         <asp:TextBox ID="txtconfirmpwd" runat="server" TextMode="Password" ></asp:TextBox>
                           <asp:RequiredFieldValidator ID="rfvcpwd" ForeColor="Red" runat="server" ErrorMessage="please enter confirm password" ControlToValidate="txtconfirmpwd"></asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="cvconfirmpwd" runat="server" ErrorMessage="Please enter confirm password" ControlToCompare="txtpwd" ControlToValidate="txtconfirmpwd" ForeColor="Red"></asp:CompareValidator>
     </td>
 </tr>
            </table>
            <table align="center">
                <tr>
                    <td><asp:Button ID="btnsubmit" runat="server" CausesValidation="true" Text ="Submit" OnClick="btnsubmit_Click" /></td>
                </tr>
            </table>
             <table align="center">
                <tr>
                 <td><asp:Label ID="lblmsg" runat="server" /></td>
               </tr>
            </table>
</td>
                    </tr>
                            </table>
        </div>
    </form>
</body>
</html>
