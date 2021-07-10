// $('.sizebtn>input').click(function() {
//     var i = $(this).css('border') == 'none';
//     if ($(this).css('border') == 'none') {
//         $(this).css({ 'border': '2px solid black' })
//     } else {
//         $(this).css({ 'border': 'none' })
//     }
// })

function previewImage(targetObj, View_area) {
    var preview = document.getElementById(View_area); //div id
    var ua = window.navigator.userAgent;

    var files = targetObj.files;
    for (var i = 0; i < files.length; i++) {
        var file = files[i];
        var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
        if (!file.type.match(imageType))
            continue;
        var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
        if (prevImg) {
            preview.removeChild(prevImg);
        }
        var img = document.createElement("img");
        img.id = "prev_" + View_area;
        img.classList.add("obj");
        img.file = file;
        img.style.width = '160px';
        img.style.height = '160px';
        preview.appendChild(img);
        if (window.FileReader) { // FireFox, Chrome, Opera 확인.
            var reader = new FileReader();
            reader.onloadend = (function(aImg) {
                return function(e) {
                    aImg.src = e.target.result;
                };
            })(img);
            reader.readAsDataURL(file);
        } else { // safari is not supported FileReader
            //alert('not supported FileReader');
            if (!document.getElementById("sfr_preview_error_" +
                    View_area)) {
                var info = document.createElement("p");
                info.id = "sfr_preview_error_" + View_area;
                info.innerHTML = "not supported FileReader";
                preview.insertBefore(info, null);
            }
        }
    }
}