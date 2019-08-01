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

        $(".forward-email").click(function() {
            console.log("A");
        })

        Login();
        sendEmail();
    setInterval(callResult,1000);
    setInterval(getEmail,1000);
})