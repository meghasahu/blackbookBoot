<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create.aspx.cs" Inherits="create" %>

<html>
    
    <head>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
        <style>
            textarea {
                width: 80%;
                height: 80%;
                margin-left: 10%;
                margin-top: 0;
                border:1px solid black;
            }
       </style>
    </head>
    <body>
        
<form>
    <nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <ul class="nav navbar-nav">
            <li><a><span class="glyphicon glyphicon-arrow-left"></span></a></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">File
            <span class="caret"></span></a>
             <ul class="dropdown-menu">
                <li><a>New</a></li>
                <li><a>Open</a></li>
                <li><a>Save</a></li>
                 <li><a>Save As</a></li>
                <li><a>Print</a></li>
            </ul>

        </li>
            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Edit <span class="caret"></span></a>
                 <ul class="dropdown-menu">
                <li><a>Cut</a></li>
                <li><a>Copy</a></li>
                <li><a>paste</a></li>
                 <li><a>find</a></li>
            </ul>
            </li>
            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Format <span class="caret"></span></a>
                 <ul class="dropdown-menu">
                <li><a>Font</a></li>
                <li><a>Bold</a></li>
                <li><a>Italic</a></li>
                 <li><a>Size</a></li>
                <li><a>Color</a></li>
                </ul>

            </li>

            <li ><a><span class="glyphicon glyphicon-floppy-save" style="color:mediumpurple"></span></a></li>
    </ul>
        </div>
        </nav>
  <textarea></textarea>  
</form>
</body>
</html>