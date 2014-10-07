<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Login, App_Web_4nubvwhw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <title>Sleek Forms</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" href="style.css" type="text/css" />

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="wrapper">

	<center>	<form class="form1" action="index.html">

			<div class="formtitle">Login to your account</div>

			<div class="input">
				<div class="inputtext">Username: </div>
				<div class="inputcontent">

					<input type="text" />

				</div>
			</div>

			<div class="input nobottomborder">
				<div class="inputtext">Password: </div>
				<div class="inputcontent">

					<input type="password" />
					<br/>

				</div>
			</div>

			<div class="buttons">
                <a href="Register.aspx">Not Register Yet?</a>

				<input class="orangebutton" type="submit" value="Login" />

				<input class="greybutton" type="submit" value="Cancel" />

			</div>

		</form></center>

    </div>
    <p></p>
    <p></p>
    <p></p>

    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

