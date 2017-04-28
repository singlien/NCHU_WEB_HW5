

function summitt(){
	var name = document.getElementById('Name').value;
	var sexRadio = document.getElementsByName('sex');
	var sex;
	for(var i=0; i<sexRadio.length;i++){
		if(sexRadio[i].checked){
			sex = sexRadio[i].value;
			break;
		}
	}
	var BirthYear = document.getElementById('BirthYear').value;
	var BirthMonth = document.getElementById('BirthMonth').value;
	var BirthDay = document.getElementById('BirthDay').value;
	var selfIntro = document.getElementById('self-intro').value;

	if(!confirm(name,BirthYear,BirthMonth,BirthDay)){return;}

	var out=
		'<tr><td>姓名：'+name+'</td></tr>'+
		'<tr><td>性別：'+sex+ '</td></tr>'+
		'<tr><td>出生年月日：'+BirthYear+'/'+BirthMonth+'/'+BirthDay+'</td></tr>'+
		'<tr><td>自我介紹：'+selfIntro+'</td></tr>'

	alert('確認提交？'+
		'\n姓名：'+name+
		'\n性別：'+sex+
		'\n出生年月日：'+BirthYear+'/'+BirthMonth+'/'+BirthDay+
		'\n自我介紹：'+selfIntro);
	postData(out);
}

function confirm(name,BirthYear,BirthMonth,BirthDay){
	if(name==""){
		alert('請輸入姓名');
		return 0;
	}

	if(BirthYear=="" || BirthMonth=="" || BirthDay==""){
		alert('請輸入生日');
		return 0;
	}

	return 1

}

function postData(out){
        var output = document.getElementById("output");
        output.innerHTML = "歡迎您光臨 <br>"+out;
      }
