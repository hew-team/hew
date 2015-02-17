(function(){
	$(document).ready(function(){
		//submitボタンを押したときすべての入力チェックを行う
		$('input[name="signUp"]').click(function(){
			birthCheck();
			//すべてのチェックが通ればsubmit可能
			if(nameCheck() && sexCheck() && birthCheck() && mailCheck() && idCheck() && passCheck() && passReCheck()){
				return true;
			}else{
				return false;
			}
		});
	
		//フィールドからフォーカスが外れた時に各チェックを行う
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
		
		function sexCheck(){
			if(('input[name="sex').is(':checked')){
				return true;
			}else{
				$('#sexMsg').html('性別を入力してください。');
				return false;
			}
		}
		
		function birthCheck(){
			var year = $('#year').val();
			var month = $('#month').val();
			var day = $('#day').val();
			if(year.match(/\d/) && month.match(/\d/) && day.match(/\d/)){
				return true;
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
	});
})();