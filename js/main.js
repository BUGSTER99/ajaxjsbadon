$(document).ready(function(){
    function callResult() {
        $.ajax({
            url:"./server.php",
            dataType:"HTML",
            success: function(Result) {
               $("#result").html(Result);
            }
        })
    }

   

    function getEmail() {
        $.ajax({
            url:"./getEmail.php",
            data:"HTML",
            success: function(e){
               $("#emailresult").html(e); 
            }
        })
    }

    function getEmailDetailed() {
        var id = $("#id_email").val();
        $.ajax({
            url:"./getemaildetailed.php",
            type:"POST",
            data:{
                id:id
            },
            dataType:"HTML",
            success: function(e){
                $("#getEmailDetailed").html(e);
            }
        })
    }

    function sendEmail() {
        $("#email_form").validate({
            rules:
        {
            to_: {
            required: true,
            email: true
            },
            subject: {
                required: true,
            },
            email_content: {
                required: true,
            },
        },
            messages:
        {
                to_:{
                            required: "please enter email"
                        },
                subject: "please enter your email subject",
                email_content: "please enter your email content",
            },
        submitHandler: sendEmailProses 
            });
    }

    function forwardingEmail() {
        $("#forward-form").validate({
            rules:
        {
        id_email: {
        required: true,
        },
        email_forward: {
                required: true,
                email: true
                },
        },
            messages:
        {
            email_forward: "please enter your email address",
            },
        submitHandler: forwardingProses 
            });
    }

    function forwardingProses() {
        var data = {
            email_forwarded:$("#email_forward").val(),
            id_email:$("#id_email").val()
        };
        $.ajax({
            type:"POST",
            url:"./forwardproses.php",
            data:data,
            success: function(e){
                setTimeout(' window.location.href = "dashboard.php"; ',1000);
            }
        })
    }

    function Login() {
        $("#login-form").validate({
            rules:
        {
        password: {
        required: true,
        },
        user_email: {
                required: true,
                email: true
                },
        },
            messages:
        {
                password:{
                            required: "please enter your password"
                        },
                user_email: "please enter your email address",
            },
        submitHandler: loginProses 
            });
        }

    function loginProses() {
        var data = $("#login-form").serialize();
        $.ajax({
            type : 'POST',
            url  : './login_proses.php',
            data : data,
            success :  function(response)
             {     
                if(response == "ok"){
                    setTimeout(' window.location.href = "dashboard.php"; ',1000);
                } else{
                    alert("NOTOK");
                }
            }
        });
    }

    function sendEmailProses() {
        var data = $("#email_form").serialize();
        $.ajax({
            type    : 'POST',
            url     : './sendemail.php',
            data    : data,
            success: function(response){
                // alert("ok");
            }
        })
    }


    Login();
    sendEmail();
    getEmailDetailed();
    forwardingEmail();
    setInterval(callResult,1000);
    setInterval(getEmail,1000);
})