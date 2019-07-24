<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signIn.aspx.cs" Inherits="Discipleship.SignIn.signIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
    #divOne
    {
        width:400px;
        text-align:center;
        /*border:dotted 1px black;*/
    }
   
    #tblOne
    {
        width:100%;
        margin:0 auto;  
        position:center;
        align-self:center;
        align-items:center;
        align-content:center;
        border: solid 1px black;
    }
   
    </style>
    <link href="../Style.css" rel="stylesheet" />
    <link href="../Style.css" rel="stylesheet" />
   <%-- <link href="../css/StyleSheet1.css" rel="stylesheet" />
    <link href="../css/align.css" rel="stylesheet" />
   --%>






    <div style="text-align: center;" class="jumbotron">
 
            <div style="width: 400px; margin-left: auto; margin-right:auto;">
                 <table>       
                    <tr><th><H2>SIGN IN</H2></th></tr>

                        <tr><th><HR/></th></tr>

                        <tr><th><H4>USERNAME</H4></th></tr>

                        <tr><th><asp:TextBox ID="txtUserName" width="100%" class="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox></th></tr>
       
                        <tr><th><H4>PASSWORD</H4></th></tr>

                        <tr><th><asp:TextBox ID="txtPassword" width="100%" class="form-control" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox></th></tr>
                
                        <tr><th><H5></H5></th></tr>
                        <tr><th><asp:Button ID="btnSignIn" width="100%"  class="button" runat="server" OnClick="btnSignIn_Click" Text="Sign In" /></th></tr>
           
                        <tr><th>
                        <asp:LinkButton ID="lnkForgotPassword" runat="server">Forgot Password</asp:LinkButton></th></tr>
      
                         <tr><th><asp:Label ID="lblMessage" runat="server" Text="_" ForeColor="#FF3300"></asp:Label></th></tr>

                </table>
            </div>
    </div>

<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
</p>

    
<%--<p>&nbsp;</p>--%>
</asp:Content>
