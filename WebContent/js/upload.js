$(function(){
	
	var files = null;
	// FormDataオブジェクトを用意
	var fd = new FormData();
	var x = 0;
	var y = 0;
	
	$('document').ready(function(){
		$('#button').click(function(e){
			e.preventDefault();
			if(files && checkName() && checkDesc() && checkPoint() && checkCategory()){
				uploadFiles(fd);

			}else{
				alert('入力項目を確認して下さい');
			}
		});
		
		x = $(window).width() * 0.8;
		y = $(window).height() * 0.8;
		$('#dialog1').dialog({
			  autoOpen: false,
			  height: y,
			  width: x,
			  title: 'apk',
			  closeOnEscape: false,
			  modal: true,
			  buttons: {
			    "OK": function(){
			      $(this).dialog('close');
			    }
			  }
			});
		$('#dialog2').dialog({
			  autoOpen: false,
			  height: y,
			  width: x,
			  title: 'icon',
			  closeOnEscape: false,
			  modal: true,
			  buttons: {
			    "OK": function(){
			      $(this).dialog('close');
			    }
			  }
			});
		$('#apk').click(function(){
			$('#dialog1').dialog('open');
		});
		$('#icon').click(function(){
			$('#dialog2').dialog('open');
		});

	});
	
	function checkName(){
		var val = $('input[name="name"]').val();
		if(val != '') return true;
		else return false;
	}
	
	function checkDesc(){
		var val = $('textarea[name="description"]').val();
		if(val != '') return true;
		else return false;
	}
	
	function checkPoint(){
		var val = $('#point').val();
		val = val.replace(/[Ａ-Ｚａ-ｚ０-９]/g,function(s){
			return String.fromCharCode(s.charCodeAt(0)-0xFEE0);
			});
		if(val != '' && val.match(/\d/)) return true;
		else return false;
	}
	
	function checkCategory(){
		var val = $('select[name="select"]').val();
		if(val != '' && val != 'カテゴリ') return true;
		else return false;
	}
	

	$("#drag-area2").on("dragover",function(e){
		e.preventDefault();
		$('#dialog2').css('background-color', '#ccc');
	});
	$("#drag-area2").on("dragleave",function(e){
		e.preventDefault();
		$('#dialog2').css('background-color', '#fff');
	});
	/*================================================
	  ファイルをドロップした時の処理
	=================================================*/
	$('#drag-area1').bind('drop', function(e){

		// デフォルトの挙動を停止
		e.preventDefault();
		// ファイル情報を取得
		files = e.originalEvent.dataTransfer.files;
		for(var i=0; i<files.length; i++){
			//fileNameAreaにファイル情報を表示
			var elm = $('<p>' + files[i].name + " " + files[i].size + "byte" + '</p>');
			$('#fileNameArea1').append(elm);
		}

		// ファイルの個数を取得
		var filesLength = files.length;
		// ファイル情報を追加
		for (var i = 0; i < filesLength; i++) {
			fd.append("files[]", files[i]);
		}
		
		console.log(fd);
	
	}).bind('dragenter', function(){
		// デフォルトの挙動を停止
		return false;
	}).bind('dragover', function(){
		// デフォルトの挙動を停止
		return false;
	});
	
	
	$('#drag-area2').bind('drop', function(e){
		// デフォルトの挙動を停止
		e.preventDefault();
		// ファイル情報を取得
		files = e.originalEvent.dataTransfer.files;
		for(var i=0; i<files.length; i++){
			files[i].name = ('icon_' + files[i].name);
			//fileNameAreaにファイル情報を表示s
			var elm = $('<p>' + files[i].name + " " + files[i].size + "byte" + '</p>');
			$('#fileNameArea2').append(elm);
			console.log(files[i].name);
		}

		// ファイルの個数を取得
		var filesLength = files.length;
		// ファイル情報を追加
		for (var i = 0; i < filesLength; i++) {
			fd.append("files[]", files[i]);
		}
		console.log(fd);
		
		var file = event.dataTransfer.files[0];
		// ファイルタイプ(MIME)で対応しているファイルか判定
		if (!file.type.match(/image\/\w+/)) {
		    alert('画像ファイル以外は利用できません');
		    return;
		}
		
		//ドラッグした画像を表示
		var reader = new FileReader(); 
		reader.onload = function() {
		    var imageObject = $('<img>');
		    imageObject.attr('width', '100px');
		    imageObject.attr('src', reader.result);
		    imageObject.attr('id', 'image');
		    $('#drag-area2').append(imageObject);
		};
		
		reader.onerror = function(e) {
		    var result = $('#result');
		    result.html('');
		    for (var key in reader.error) {
		        result.append(key + '=' + reader.error[key] + '<br>');
		    }
		};
		reader.readAsDataURL(file);
		
		
		
	}).bind('dragenter', function(){
		// デフォルトの挙動を停止
		return false;
	}).bind('dragover', function(){
		// デフォルトの挙動を停止
		return false;
	});
});
	/*================================================
	  アップロード処理
	=================================================*/
	function uploadFiles(fd) {

		//フォームの値をFormDataオブジェクトに追加
		fd.append('name', $('input[name="name"]').val());
		fd.append('description', $('textarea[name="description"]').val());
		fd.append('point', $('#point').val());
		fd.append('select', $('select[name="select"]').val());
		
		// Ajaxでアップロード処理をするファイルへ内容渡す
		$.ajax({
			url: './UploadFileServlet',
			type: 'POST',
			data: fd,
			processData: false,
			contentType: false,
			success: function(data) {
				console.log('ファイルがアップロードされました。');
				window.location.href = "successUpload.jsp";
			}
		});
	}