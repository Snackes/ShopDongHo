$(document).ready(function() {
	

	//sử lí sự kiện cho numeric up-down
	$('.numeric-updown .btn-up').on('click', function() {

		$('.numeric-updown input').val(parseInt($('.numeric-updown input').val(),10)+1);
	});
	$('.numeric-updown .btn-down').on('click', function() {
		if($('.numeric-updown input').val()==1)
		{

		}
		else
		{
			$('.numeric-updown input').val(parseInt($('.numeric-updown input').val(),10)-1);	
		}

		
	});
	//end numeric up-down
	
	//sử lí sụ kiện chọn ảnh
	$('.main-image').elevateZoom({
 		 zoomType: "inner",

 		 cursor: "crosshair"
	});
	$('.image-product-another .img1').on('click', function() {

		var srcAnh= $('.image-product-another .img1').attr('src');
		$('.main-image').attr('src',srcAnh);
		$('.main-image').elevateZoom({
 		 zoomType: "inner",

 		 cursor: "crosshair"
	});

		


	});
	$('.image-product-another .img2').on('click', function() {

		var srcAnh= $('.image-product-another .img2').attr('src');
		$('.main-image').attr('src',srcAnh);
		$('.main-image').elevateZoom({
 		 zoomType: "inner",

 		 cursor: "crosshair"
	});

		


	});$('.image-product-another .img3').on('click', function() {

		var srcAnh= $('.image-product-another .img3').attr('src');
		$('.main-image').attr('src',srcAnh);
		$('.main-image').elevateZoom({
 		 zoomType: "inner",

 		 cursor: "crosshair"
	});

		


	});$('.image-product-another .img4').on('click', function() {

		var srcAnh= $('.image-product-another .img4').attr('src');
		$('.main-image').attr('src',srcAnh);
		$('.main-image').elevateZoom({
 		 zoomType: "inner",

 		 cursor: "crosshair"
	});

		


	});


	//end sử lí sự kiện chọn ảnh
	//sử lí sự kiện zoom ảnh
	//$('.main-image').elevateZoom();
	


	//end sử lí sự kiện zoom ảnh










});