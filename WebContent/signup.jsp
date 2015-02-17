<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規登録</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>
<body>
	<ul>
		<li><a href="index.jsp">home</a></li>
		<li><a href="upload.jsp">upload</a></li>
	</ul>
	<h1>新規会員登録</h1>
	<div id="msg" style="color:red"></div><br>
	<form method="post" action="SignUpServlet">
		<label>ユーザ名：<input type="text" name="name"></label><div id="nameMsg"></div><br>
		性別：
		<label>男：<input type="radio" name="sex" value="1"></label>
		<label>女：<input type="radio" name="sex" value="2"></label><br>
		<label>生年月日</label>
		<select id="year" name="year">
			<option>-----</option>
			<option>1989</option>
		</select>
		<label for="year">年</label>
		<select id="month" name="month">
			<option>-----</option>
			<option>11</option>
		</select>
		<label for="month">月</label>
		<select id="day" name="day">
			<option>-----</option>
			<option>08</option>
		</select>
		<label for="day">日</label><br>
		<label>メールアドレス：<input type="text" name="mail"></label><div id="mailMsg"></div><br>
		<label>ログインID：<input type="text" name="id"></label><div id="idMsg"></div><br>
		<label>パスワード：<input type="password" name="passwd"></label><br>
		<label>パスワード(再入力)：<input type="password" name="passwdRetype"></label><div id="passMsg"></div><br>
		<label for="question">秘密の質問</label>
		<select id="question" name="question">
			<option>-----</option>
		</select><br>
		<label>秘密の質問の答え：<input type="text" name="ans"></label>
		<div>
			利用規約・・・・・
		</div><br>
		<input type="submit" value="利用規約を確認の上登録" name="signUp">
	</form>
	<script type="text/javascript">


		$(document).ready(function(){
		});
		
		$('input[name="signUp"]').click(function(){
			console.log(nameCheck());
			console.log(mailCheck());
			console.log(idCheck());
			console.log(passCheck());
			console.log(passReCheck());
			if(nameCheck() && mailCheck() && idCheck() && passCheck() && passReCheck()){
				return true;
			}else{
				return false;
			}
		});

		$('input[name="name"]').blur(function(){
			nameCheck();
		});
		$('input[name="mail"]').blur(function(){
			mailCheck();
		});
		$('input[name="id"]').blur(function(){
			idCheck();
		});
		$('input[name="passwd"]').blur(function(){
			passCheck();
		});
		$('input[name="passwdRetype"]').blur(function(){
			passReCheck();
		});
		
		function nameCheck(){
		//ユーザー名の入力チェック
			var val = $('input[name="name"]').val();
			if(val != ""){
				if(val.length > 20){
					$('#nameMsg').html('名前文字数オーバー');
					return false;
				}
				if(val.length <= 20){
					$('#nameMsg').html('');
					return true;
				}
			}else{
				return false;
			}
		}
		
		function mailCheck(){
			//メールアドレスの入力チェック
			var val = $('input[name="mail"]').val();
			if(val != ""){
				if(!val.match(/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/)){
					$('#mailMsg').html('メアドエラー');
					return false;
				}else{
					$('#mailMsg').html('');
					return true;
				}
			}else{
				return false;
			}
		}
		function idCheck(){
			//IDの入力チェック
			var val = $('input[name="id"]').val();
			var flg = false;
			if(val != ""){
				if(val.length > 20){
					$('#idMsg').html('id文字数オーバー');
				}else{
					//ajaxでjspにPOSTを送りデータベースチェック
					$.ajax({
						type: "POST",
						url: "/hew/checkId.jsp",
						async: false,
						data:{
							"id":val
						},
						success: function(data){
							if(data == 0){
								$('#idMsg').html('使用可能なIDです');
								flg = true;
							}else{
								$('#idMsg').html('使用不可能なIDです');
							}
						}
					});
				}
			}
			return flg;
		}
		function passCheck(){
			//パスワード入力チェック
			var val = $('input[name="passwd"]').val();
			var val2 = $('input[name="passwdRetype"]').val();
			if(val2 != ""){
				if(val != val2){
					$('#passMsg').html('パスワードが一致しない');
					return false;
				}else{
					$('#passMsg').html('');
					return true;
				}
			}else{
				return false;
			}
		}
		function passReCheck(){
			//パスワード再入力チェック
			var val = $('input[name="passwdRetype"]').val();
			var val2 = $('input[name="passwd"]').val();
			if(val != ""){
				if(val != val2){
					$('#passMsg').html('パスワードが一致しない');
					return false;
				}else{
					$('#passMsg').html('');
					return true;
				}
			}else{
				return false;
			}
		}
	</script>
</body>
</html>