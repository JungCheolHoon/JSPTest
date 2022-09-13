$(document).ready(function(){
	$.get("/JSPTest/jsp/scoreXML.jsp",
		function(data) {
			var names = data.getElementsByTagName("name");
			var kors = data.getElementsByTagName("kor");
			var engs = data.getElementsByTagName("eng");
			var maths = data.getElementsByTagName("math");
			var totals = data.getElementsByTagName("total");

			for (var i = 0; i < 3; i++) {
				$("#tbody").append("<tr>"+  
					"<th>"+names[i].childNodes[0].nodeValue+"</th>"+
					"<td>"+engs[i].childNodes[0].nodeValue+"</td>"+
					"<td>"+maths[i].childNodes[0].nodeValue+"</td>"+
					"<td>"+totals[i].childNodes[0].nodeValue+"</td>"+			
				"</tr>");
			}
		})
})