<%@page import="model.Hangxe"%>
<%@page import="controller.Chucnang"%>
<%@page import="model.Lopxe"%>
<%@page import="dao.Get_data"%>
<%@page import="conect_data.Dbconnect"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	<% 
		Dbconnect db = new Dbconnect();
		Get_data gdt = new Get_data(); 
		Chucnang cn = new Chucnang();		

		ArrayList<String> list_size = gdt.Get_Size();
		ArrayList<String> list_vanh = gdt.Get_Vanh();
		ArrayList<Hangxe> data_hangxe = db.Data_Hang_Xe_Size_Lop();
		
		ArrayList<String> list_hangxe = new ArrayList<>();
		ArrayList<String> list_tenxe = new ArrayList<>();
		
		for(Hangxe h: db.Data_Hang_Xe_Size_Lop()){
			list_hangxe.add(h.getHang());
			list_tenxe.add(h.getTenxe());
		}
	
		list_hangxe = cn.sapXepTangDan(cn.loaiBoPhanTuTrungNhau(list_hangxe));
		list_tenxe = cn.sapXepTangDan(cn.loaiBoPhanTuTrungNhau(list_tenxe));
		
	%>	

	<script type="text/javascript">
		function click_Vanhlop(vanh_) {
			// Lấy giá trị từ JSP
		    var list_size_raw = '<%= list_size %>';
			
			// do chuỗi chưa chuẩn nên bỏ kí tự đầu và cuối và tách bằng dấu ,
			var list_size_ = list_size_raw.slice(1, -1).split(',');

			// trỏ tới select sizelop
			var select = document.getElementById('sizelop');

			// clean sạch select
			while (select.options.length > 0) {
				select.remove(0);
			}
			
			//set giá trị đầu tiên cho option
			var option_1 = document.createElement("option");
			option_1.text = "Size lốp";
			select.appendChild(option_1);

			// đổ dữ liệu vào select
		    for (let index = 0; index < list_size_.length; index++) {
				if(list_size_[index].split(vanh_).length > 1){
					var option = document.createElement("option");
					option.text = list_size_[index].trim();
					option.value = list_size_[index].trim();
					select.appendChild(option);
				}				
			}	
		}	

		function click_sizelop(sizelop_){	
		    // Gửi cả hai giá trị lên servlet bằng cách chuyển hướng trang
			var url = "leao-atlas-michelin-loc-theo-size?sizelop=" + sizelop_;
		    window.location.href = url;
		}		
	</script>

	<script type="text/javascript">
		function click_hangxe(hangxe) {
			// Lấy giá trị từ JSP
		    var list_tenxe_raw = '<%= list_tenxe %>';	
			
			// do chuỗi chưa chuẩn nên bỏ kí tự đầu và cuối và tách bằng dấu ,
			var list_tenxe_ = list_tenxe_raw.slice(1, -1).split(',');
			
			// trỏ tới select sizelop
			var select = document.getElementById('tenxe');
	
			// clean sạch select
			while (select.options.length > 0) {
				select.remove(0);
			}
			
			//set giá trị đầu tiên cho option
			var option_1 = document.createElement("option");
			option_1.text = "Tên xe";
			select.appendChild(option_1);
	
			// đổ dữ liệu vào select
		    for (let index = 0; index < list_tenxe_.length; index++) {
				if(list_tenxe_[index].split(hangxe).length > 1){
					var option = document.createElement("option");
					option.text = list_tenxe_[index].trim();
					option.value = list_tenxe_[index].trim();
					select.appendChild(option);
				}
				
			}
		}
		
		function click_tenxe(tenxe) {
		    // Gửi cả hai giá trị lên servlet bằng cách chuyển hướng trang
			var url = "loc_theo_hang_xe?tenxe=" + tenxe;
		    window.location.href = url;
		}
	</script>

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="row">
					<div class="col-12 d-flex justify-content-center">
						<strong style="font-size: 20px;">Lọc theo size lốp</strong>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="select-locsize">
		<select id="vanh" onchange="click_Vanhlop(this.value)">
			<option selected>Vành</option>
			<% for(String vanh_: list_vanh){ %>
				<option value="<%=vanh_ %>">
					<%=vanh_ %>
				</option>
				<%} %>
		
		</select>
	
		<select id="sizelop" onchange="click_sizelop(this.value)">
			<option selected>Size lốp</option>
			<option value=""></option>
		</select>
	</div>

	<div style="margin-left: auto; margin-right: auto; margin-top: 10px; border-top: 1px solid #BBBBBB; width: 70%;" class="line"></div>

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="row">
					<div class="col-12 d-flex justify-content-center">
						<strong style="font-size: 20px;">Tìm theo hãng xe</strong>
					</div>
			
				</div>
			</div>
		</div>
	</div>
	
	<div class="select-locsize">			
		<select id="hangxe" onchange="click_hangxe(this.value)">
			<option selected>Hãng</option>
			<% for(String hang_: list_hangxe){ %>
				<option value="<%=hang_ %>">
					<%=hang_ %>
				</option>
				<%} %>				
		</select>

		<select id="tenxe" onchange="click_tenxe(this.value)">
			<option selected>Tên xe</option>
			<option value=""></option>
		</select>
	</div>
	
	<div style="margin-left: auto; margin-right: auto; margin-top: 10px; border-top: 1px solid #BBBBBB; width: 70%;" class="line"></div>
	
</body>
</html>