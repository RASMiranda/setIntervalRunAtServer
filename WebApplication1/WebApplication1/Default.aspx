<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <script type = "text/javascript">
        function dumb_setInterval() {
            setInterval(function(){alert('dumb setInterval after 5000ms!');}, 5000);    
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
		<p><asp:ImageButton id="formSrvBtn"
		    runat="server" 
		    OnClientClick="dumb_setInterval();"
		    AlternateText="This server img button's setInterval does not work!"
		>			
		</asp:ImageButton></p>
		<p><button id="formCltBtn"
		    onclick="dumb_setInterval();"
		>
			This client button's setInterval does not work!
		</button></p>
    </form>
    <p><button id="cltBtn"
        onclick="dumb_setInterval();"
    >
		This client button's setInterval works!
	</button></p>
</body>
</html>