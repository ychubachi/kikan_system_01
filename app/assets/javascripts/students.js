$(document).ready(function(){
	var modal = $('#modal');
	var showButton = $('.scaffold-btn-show');
	modal.dialog({
		autoOpen: false,
		width :640,
		height:480
	});
	showButton.click(function(){
		var id = $(this).attr('data_id');
		var url = '/students/'+id+'.json';
		$.getJSON(url,{}, function(student){
			var html = '<ul>';
			html += '<li>名前:'+ student.name +'</li>';
			html += '<li>登録日:'+ student.created_at +'</li>';
			html += '<li>更新日:'+ student.updated_at +'</li>';
			html += '</ul>';
			modal.dialog({
				title: 'student_id:' + student.id + ' detail...'
			});
			modal.dialog('open');
			modal.html(html);
		});
	});
});
