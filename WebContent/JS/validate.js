
    $(document).ready(function() {
    	 
        //Validate cho form đăng nhập
        $(".modal").validate({
            rules: {
            	uname: "required",
            	pws: "required",
            },
        messages: {
        	uname: "Bạn phải nhập tên tài khoản",
        	pws: "Bạn phải nhập mật khẩu",
        }
        });
        
        
        $('#ok').off('click').on('click',function()
        {
        	if($('#formabc').valid())
        		{
        		
        		}
        })
        

        $(".modal").validate({
			rules: {
			TK: { min: 6 }, //Giá trị tối thiểu
			MK: { max : 10 }, //Giá trị tối đa
			},
        messages: {
            ho: "Chiều dài chuỗi trong khoảng từ 4 – 10 ký tự",
            ten: "Chiều dài chuỗi trong khoảng từ 4 – 10 ký tự",
        }
        });
        
        $(".form_ThongTinThanhToan").validate({
			rules: {
			uname: "required",
			DiaChi: "required",
		},
	    messages: {
        	uname: "Bạn phải nhập tên tài khoản",
        	pws: "Bạn phải nhập mật khẩu",
        }
        });
        
	});