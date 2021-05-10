<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Covidhelp.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" integrity="sha512-f8gN/IhfI+0E9Fc/LKtjVq4ywfhYAVeMGKsECzDUHcFJ5teVwvKTqizm+5a84FINhfrgdvjX8hEJbem2io1iTA==" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" integrity="sha512-XVz1P4Cymt04puwm5OITPm5gylyyj5vkahvf64T8xlt/ybeTpz4oHqJVIeDtDoF5kSrXMOUmdYewE4JS/4RWAA==" crossorigin="anonymous"></script>

<%--    <style type="text/css">
        .message
        {
            width: 100%;
            height:25%;
            position: fixed;
            top: 50px;
            z-index: 100000;
            padding: 3%;
            font-size: large;
            
        }
    </style>
    <script type="text/javascript">
        $(document).ready(
            function ()
            {       
                function ShowMessage(message, messagetype) {
                    $('#alert_container').show('fade',message,messagetype);
                });
                $('#lnkclose').click(function(){
                    $('#alert_container').hide('fade');
                });

                //function ShowMessage(message, messagetype) {
                //    var cssclass;
                //    switch (messagetype) {
                //        case 'Success':
                //            cssclass = 'alert-success'
                //            break;
                //        case 'Error':
                //            cssclass = 'alert-danger'
                //            break;
                //        case 'Warning':
                //            cssclass = 'alert-warning'
                //            break;
                //        default:
                //            cssclass = 'alert-info'
                //    }
                //    $('#alert_container').append('<div id="alert_div" style="margin: 0 10%; -webkit-box-shadow: 8px 9px 12px 3px #999;width:50%; height:80%; padding-left: 4%; line-height: 2.5;" class="alert fade in ' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong><i class="icon icon_info"></i>  ' + messagetype + '!</strong> <span>' + message + '</span></div>');
                //    return false;
            });
    </script>--%>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="alert_container" class="alert alert-danger collapse">
                <a id="lnkclose" href="#" class="close">&times;</a>
                
            </div>

            <div class="row">
                <div class="col-lg-12">
                <div class="message" id="alert_container1"></div>
                    </div>
            </div>


        </div>
    </form>
</body>
</html>
