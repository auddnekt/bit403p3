<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src = "https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	
	<div id = "showWeatherForcast"></div>
	
	<script type="text/javascript">
		$(document).ready(function(){
//			$("#getWeatherForcast").click(function(){

				$.ajax({
					url: 'http://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=f864cb8b429877a2f548008e3260e8a5&units=metric&lang=kr',
					//api.openweathermap.org/data/2.5/weather?lat=35&lon=139
					dataType: 'json',
					type: 'get',
					
					success: function(data){
						var wf = '';
						$.each(data.weather, function(index, val){

							if(val.id>=700 && val.id<=800){
								val.id='구름';
							}
							else if(val.id>=802 && val.id<=804){
								val.id='구름';
							}
							else if(val.id>=600 && val.id<=622){
								val.id='눈';
							} 
							else if(val.id==800){
								val.id='맑음';
							}
							else if(val.id>=500 && val.id<=531){
								val.id='비';
							}
							
							var temp='';
							
							if(data.main.temp>=30){
								var temp='더움';
							}
							else if(data.main.temp<=10){
								var temp='추움';
							}
							
							wf+='<p><b>'+data.name+"</b><imb src="+ val.icon + ".png></p>"+
							data.main.temp+'&deg;C'+' | ' +val.id +' | ' +temp;
						});
						$("#showWeatherForcast").html(wf);
					}
					
				})
//			})
		})
	</script>
</body>
</html>