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

    setInterval(callResult,1000);
})