
    $(document).ready(function() {
    	 
        //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
        $(".modal").validate({
            rules: {
            	TK: "required",
            	MK: "required",
            },
        });

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
			HoTen: "required",
			DiaChi: "required",
		},
	    messages: {
            ho: "Chiều dài chuỗi trong khoảng từ 4 – 10 ký tự",
            ten: "Chiều dài chuỗi trong khoảng từ 4 – 10 ký tự",
        }
        });
        
	});