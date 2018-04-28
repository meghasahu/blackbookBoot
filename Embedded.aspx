<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Embedded.aspx.cs" Inherits="Embedded" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <!-- link for stylesheet.css-->
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <!-- link for icon in navbar-->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
     <!-- link for sticky effect in navbar -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  
    <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>jQuery Table LiveSearch Example</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
		<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script>
            $.fn.liveSearch = function (config) {
                var table = $(config.table), children, searchString;
                $(this).keyup(function () {
                    //Get all table columns
                    children = table.find('td');
                    searchString = $(this).val().toLowerCase();
                    //Hide all rows except the for table header
                    table.find('tr:gt(0)').hide();
                    //Loop through all table columns
                    children.each(function (index, child) {
                        //If search string matches table column
                        if (child.innerHTML.toLowerCase().indexOf(searchString) != -1) {
                            //Show table row
                            $(child).closest('tr').show();
                        };
                    });
                });
            };

		</script>
    <script>
        $.fn.liveSearch = function (e) {
            var t, n, i = $(e.table);
            $(this).keyup(function () {
                t = i.find("td"),
                    n = $(this).val().toLowerCase(),
                    i.find("tr:gt(0)").hide(), t.each(function (e, t)
                    { -1 != t.innerHTML.toLowerCase().indexOf(n) && $(t).closest("tr").show() })
            })
        };

    </script>
        <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
		<script >
            $(document).ready(function () {

                $('input#livesearch').liveSearch({
                    table: 'table#users'
                });

            });

		 </script>
         <style>

              /*sticky effect on nevbar & also create js in form tag*/
.sticky {
    position: fixed;
    width: 100%;
    left: 0;
    top: 0;
    z-index: 100;
    border-top: 0;
}

.content {
    padding: 16px;
}

         body { background-color:#fafafa;}
         .form-control
         {
             margin-left:300px;
             width:50px;
         }
         .input-group-addon{
             background-color:brown;
         }
                   .effect{
             background-color:#412003;
             font-size:20px;
             width:530px;
             color:#ffffff;
              margin-left:320px;
             
           }
                   .effect td:hover{
                       background-color:#693608;
                   }


 #livesearch{
    background: url(data:image/png;base64,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) no-repeat 10px 6px #fcfcfc;
    border:2px solid #d1d1d1;
    font: bold 12px Arial;
    color:#808080;
    width:200px;
    height:35px;
    padding:6px 15px 6px 35px;
    border-radius:20px;
    -webkit-transition: all 0.7s ease 0s;
    margin-top:10px;
    font-size:18px;
    margin-left:900px;
}

           #livesearch:focus {
               width:350px;
               outline: 0;
           }        

.content {
          background-image: url('images/library.jpg');
          height:1000px;
          width:100%;
          margin-top:0px;
               }
    


         </style>
	</head>
	<body class="lib">
		 <asp:Image ID="Image3" runat="server" ImageUrl="~/images/collegelogo.jpg" Width="180px" Height="40px" style="margin-left:20px" />
      <br />
    <div class="navbar">
    <ul>
    <li id="home"> <a href="Home.aspx"><i class="fa fa-home">&nbsp; </i>Home</a></li>
    <li id="cbook"><a href="CreateBook.aspx"><i class="fa fa-edit">&nbsp;</i>Create Book</a></li>
    <li id="lib"><a href="Home.aspx"><i class="fa fa-book">&nbsp;</i>Library</a>
        <ul>
            <li id="Website"><a href="Website.aspx">Websites</a></li>
             <li id="Website10"><a href="Embedded.aspx">Embedded</a></li>
             <li id="Website2"><a href="app.aspx">Mobile application</a></li>
        </ul>
    </li>
    <li id="setting" ><a href="Home.aspx">
    <i class="fa fa-asterisk">&nbsp;</i>Setting</a>
        <ul>
            <li id="logout"><a href="login.aspx"><i class="fa fa-sign-out">&nbsp</i>Logout</a></li>
            <li id="chang"><a href="changepassword.aspx"><i class="fa fa-archive" > &nbsp</i>ChangPassword</a></li>      
        </ul>
      </li>
          <li id="Extra" class="auto-style2"><a href="Home.aspx"><i class="fa fa-inbox">&nbsp;</i>Message</a></li>
        <li id="about as" class="auto-style2"><a href="Aboutus.aspx"> <i class="fa fa-group">&nbsp; </i>About Us</a></li>
 </ul>
</div>     
       
		<section class="content">
			<div class="container">
                
				<div class="input-group">
				<!--	<span class="input-group-addon"><i class="fa fa-search"></i></span>-->
					<input class="form-control" id="livesearch" placeholder="Search" type="text" />
				</div><br />
				<div class="effect">
                <table class="table" id="users">
					<tr>
						<td class="hidden-xs" style="text-align:center">Embedded</td>
					</tr>
                      <tr><td class="hidden-xs"><a href="pdf/Embedded/Finger print.pdf">Fingure Print based ATM system</a></td></tr>
                      <tr><td class="hidden-xs"><a href="pdf/Embedded/Attendence.pdf">Smart card attendence & door access</a></td></tr>
                    <tr><td class="hidden-xs"><a href="pdf/Embedded/Coin Based Mobile Charger.pdf">Coine based mobile charger </a></td></tr>
                    <tr><td class="hidden-xs"><a href="pdf/Embedded/School.pdf">School bus security system</a></td></tr>
                    <tr><td class="hidden-xs"><a href="pdf/Embedded/Single water.pdf">Single water tank monitor</a></td></tr>
                    <tr><td class="hidden-xs"><a href=" ">Multifunctional wireless robot</a></td></tr>
                    <tr><td class="hidden-xs"><a href=" ">Smart ration card </a></td></tr>
                    <tr><td class="hidden-xs"><a href=" ">Embedded gloves for blinds</a></td></tr>
                    <tr><td class="hidden-xs"><a href=" ">Intellingent robot</a></td></tr>
                    <tr><td class="hidden-xs"><a href=" ">Two wheelers expert</a></td></tr>
                    <tr><td class="hidden-xs"><a href=" ">E-locker system for VSIT</a></td></tr>
                    <tr><td class="hidden-xs"><a href=" ">Oprating multi tank water</a></td></tr>
                    <tr><td class="hidden-xs"><a href=" ">Automated soil moisture controller</a></td></tr>
                    <tr><td class="hidden-xs"><a href=" ">Attendence mgt system</a></td></tr>
                    <tr><td class="hidden-xs"><a href=" ">Highway toll tax system</a></td></tr>
                    <tr><td class="hidden-xs"><a href=" ">Multifunctional wireless robot</a></td></tr>
                    <tr><td class="hidden-xs"><a href=" ">Contant based image retrieval</a></td></tr>
                    <tr><td class="hidden-xs"><a href=" ">V-Print</a></td></tr>
                    <tr><td class="hidden-xs"><a href=" ">VSIT-alumni network</a></td></tr>
                   </table></div>
			</div><!-- /.container -->
		</section>
       
	</body>
</html>
