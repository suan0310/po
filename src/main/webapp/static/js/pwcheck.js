$.validator.addMethod("regex", function (value, element, regexp) {
  let re = new RegExp(regexp);
  let res = re.test(value);
  console.log(res, value, regexp, re);
  return res;
});

$(function () {
  $(".form").validate({
    rules: {
      passwd: {
        required: true,
        regex: "^.*(?=^.{8,15}$)(?=.*d)(?=.*[a-zA-Z]).*$",
        minlength: 8,
      },
      newpwch: {
        required: true,
        equalTo: "#newpw",
      },
    },

    messages: {
      passwd: {
        required: "비밀번호는 필수 입력입니다.",
        minlength: "최소 6자리 이상 입력해주세요",
        regex: "비밀번호에 문자/숫자를 포함해주세요",
      },
      newpwch: {
        required: "비밀번호를 확인하세요",
        equalTo: "비밀번호가 틀립니다",
      },
    },

    errorElement: "p",
    errorClass: "error",
    validClass: "vaild",
    submitHandler: function (form) {
      form.submit();
      alert("변경 완료");
    },
  });
});
