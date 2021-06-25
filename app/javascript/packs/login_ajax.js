$('#submit-login-form').click(function () {
    // $('#login-form').submit();
    $.ajax({
        url: "/login/login_post",
        type: "post",
        data: {
            "user": $('#user').val(),
            "pass": $('#pass').val()
        },
        success: function (data) {

        },
        error: function (data) {
            alert("ff")
        }
    })
});