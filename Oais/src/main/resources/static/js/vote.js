var oTbl;

//Row 추가
function insRow() {
    oTbl = document.getElementById("addTable");
    var oRow = oTbl.insertRow();
    oRow.onmouseover = function () {
        oTbl.clickedRowIndex = this.rowIndex
    }; //clickedRowIndex - 클릭한 Row의 위치를 확인;
    var oCell = oRow.insertCell();

    //삽입될 Form Tag
    var frmTag = "<input type=text name=addText style=width:200px; height:20px;> ";
    frmTag += "<input type=button value='삭제' onClick='removeRow()' style='cursor:hand'>";
    oCell.innerHTML = frmTag;
}

//Row 삭제
function removeRow() {
    oTbl.deleteRow(oTbl.clickedRowIndex);
}

function frmCheck() {
    var frm = document.form;

    for (var i = 0; i <= frm.elements.length - 1; i++) {
        if (frm.elements[i].name == "addText") {
            if (!frm.elements[i].value) {
                alert("텍스트박스에 값을 입력하세요!");
                frm.elements[i].focus();
                return;
            }
        }
    }
}


//해시태그 추가 기능
$(document).ready(function () {
    var tag = {};
    var counter = 0;

    // 입력한 값을 태그로 생성한다.
    function addTag (value) {
        tag[counter] = value;
        counter++; // del-btn 의 고유 id 가 된다.
    }

    // tag 안에 있는 값을 array type 으로 만들어서 넘긴다.
    function marginTag () {
        return Object.values(tag).filter(function (word) {
            return word !== "";
        });
    }

    // 서버에 제공
    $("#tag-form").on("submit", function (e) {
        var value = marginTag(); // return array
        $("#rdTag").val(value);

        $(this).submit();
    });

    $("#tag").on("keypress", function (e) {
        var self = $(this);

        //엔터나 스페이스바 눌렀을때 실행
        if (e.key === "Enter" || e.keyCode == 32) {

            var tagValue = self.val(); // 값 가져오기

            // 해시태그 값 없으면 실행X
            if (tagValue !== "") {

                // 같은 태그가 있는지 검사한다. 있다면 해당값이 array 로 return 된다.
                var result = Object.values(tag).filter(function (word) {
                    return word === tagValue;
                })

                // 해시태그가 중복되었는지 확인
                if (result.length == 0) {
                    $("#tag-list").append("<li class='tag-item'>"+tagValue+"<span class='del-btn' idx='"+counter+"'><img src='/img/xbtn.png'></span></li>");
                    addTag(tagValue);
                    self.val("");
                } else {
                    alert("태그값이 중복됩니다.");
                }
            }
            e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
        }
    });

    // 삭제 버튼
    // 인덱스 검사 후 삭제
    $(document).on("click", ".del-btn", function (e) {
        var index = $(this).attr("idx");
        tag[index] = "";
        $(this).parent().remove();
    });
})