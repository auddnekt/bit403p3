<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
<body>
	<form method="post" action = "${pageContext.request.contextPath}/memberinsertresult">
		<label for = "StoreName">가게 이름</label>
		<input type="text" name = "StoreName" id = "StoreName"><br>

		<input type="button" onclick="sample3_execDaumPostcode()" value="주소 찾기"><br>
		<input type="text" name = "StoreAddr" id="sample3_address" placeholder="주소"><br>
		<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
		</div>		
		<label for = "StoreCategori">음식종류</label>
		<input type="text" name = "StoreCategori" id = "StoreCategori"><br>
		<label for = "StoreFood">대표메뉴</label>
		<input type="text" name = "StoreFood" id = "StoreFood"><br>
		<label for = "FoodWeather">추천날씨</label>
		<input type="text" name = "StoreWeather" id = "StoreWeather" placeholder="공란도 가능"><br>
		<label for = "StoreCall">전화번호</label>
		<input type="text" name = "StoreCall" id = "StoreCall"><br>
		<label for = "StoreCost">가격대</label>
		<input type="text" name = "StoreCost" id = "StoreCost"><br>
		<label for = "StoreParking">주차</label>
		<input type="text" name = "StoreParking" id = "StoreParking"><br>
		<label for = "StoreHours">영업시간</label>
		<input type="text" name = "StoreHours" id = "StoreHours"><br>
		<label for = "StoreBTime">브레이크타임</label>
		<input type="text" name = "StoreBTime" id = "StoreBTime"><br>
		<label for = "StoreClose">휴일</label>
		<input type="text" name = "StoreClose" id = "StoreClose"><br>
		<input type="submit" value = "전송">
		<h1>첨부파일 미리보기</h1>
  <hr>
  <table border="1">
    <tr>
      <th align="center" bgcolor="orange" width="500px">첨부파일</th>
    </tr>
    <tr>
      <td align="center">
        <input type="file" name="uploadFile" id="uploadFile" multiple maxlength="5">
        <div id="preview"></div>
      </td>
    </tr>
  </table>

	</form>
	
<script type="text/javascript">
  $(document).ready(function (e){
    $("input[type='file']").change(function(e){

      //div 내용 비워주기
      //$('#preview').empty();

      var files = e.target.files;
      var arr =Array.prototype.slice.call(files);
      
      //업로드 가능 파일인지 체크
      for(var i=0;i<files.length;i++){
        if(!checkExtension(files[i].name,files[i].size)){
          return false;
        }
      }
      
      preview(arr);
      
      
    });//file change
    
    function checkExtension(fileName,fileSize){

      var regex = new RegExp("(.*?)\.(jpeg|gif|png\)$");
      var maxSize = 20971520;  //20MB
      
      if(fileSize >= maxSize){
        alert('파일 사이즈 초과');
        $("input[type='file']").val("");  //파일 초기화
        return false;
      }
      
      if(!regex.test(fileName)){
        alert('JPEG,GIF,PNG 파일만 업로드 가능합니다.');
        $("input[type='file']").val("");  //파일 초기화
        return false;
      }
      return true;
    }
    
    function preview(arr){
      arr.forEach(function(f){
        
        //파일명이 길면 파일명...으로 처리
        var fileName = f.name;
        if(fileName.length > 10){
          fileName = fileName.substring(0,7)+"...";
        }
        
        

        
        //이미지 파일 미리보기
        if(f.type.match('image.*')){
          var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
          reader.onload = function (e) { //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
        	//div에 이미지 추가
        	var str = '<div style="display: inline-flex; padding: 10px;"><li>';
            str += '<span>'+fileName+'</span><br>';
            str += '<img src="'+e.target.result+'" title="'+f.name+'" width=100 height=100 /><br>';
            str += '<button type="button" class="delBtn" value="'+f.name+'" style="background: red">x</button><br>';
            str += '</li></div>';
            $(str).appendTo('#preview');
          } 
          reader.readAsDataURL(f);
        }else{
         alert("이미지가 아닙니다");
        }
        $(".delBtn").on("click", function(){
        	$(this).closest("div").detach();
        })
        
        var count = $("li").length;
        
        if(count>2){
        	alert("개수초과");
        }
        
        
      });//arr.forEach
    }
  });
  </script>



	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    // 우편번호 찾기 찾기 화면을 넣을 element
    var element_wrap = document.getElementById('wrap');

    function foldDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_wrap.style.display = 'none';
    }

    function sample3_execDaumPostcode() {
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample3_address").value = extraAddr;
                
                } else {
                    document.getElementById("sample3_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                //document.getElementById('sample3_postcode').value = data.zonecode;
                document.getElementById("sample3_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample3_address").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap);

        // iframe을 넣은 element를 보이게 한다.
        element_wrap.style.display = 'block';
    }
</script>
</body>
</html>