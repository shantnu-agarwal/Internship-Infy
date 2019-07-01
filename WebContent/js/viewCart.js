var num = 1;
var total=0;

window.addEventListener('load', function() {
	console.log("All assests loaded.");
	var formElement = $("#viewcartform");
	console.log(formElement.serialize());
	$.ajax({
		type : "GET",
		url : "ViewCart",
		data : formElement.serialize(),
		success : function(data) {
			let parsed = JSON.parse(data);
			console.log("Parsed incoming data as " + parsed);
			var i = 0;
			var row_num = 1;
			var table = document.getElementById("cart-table");
			while (i < parsed.length) {
				console.log(parsed[i]);

				var row = table.insertRow(row_num);
				row.insertCell(0).innerHTML = parsed[i];
				row.insertCell(1).innerHTML = parsed[i + 1];
				row.insertCell(2);
				row.insertCell(3);

				i += 2;
				row_num++;
			}
			getData(table);
//			setTotal();
		}
	});
	return false;
});

var id;
function getData(table) {
	 for (i = 1; i < table.rows.length; i++) {
		 id = table.rows[i].cells[0].innerHTML;
		 console.log("READ FROM TABLE: " + id);
		 ajax(id,i,table);
	 }
	
}
function ajax(ID,I,table){
	$.ajax({
		type : "GET",
		url : "GetFromCartDB",
		data : {"ID": ID},		
		success : function(data) {
			console.log("RAW DATA : " + data);
			let parsed = JSON.parse(data);
			table.rows[I].cells[0].innerHTML = parsed.item_name;
			//quantity already set in table by initial ajax	
			table.rows[I].cells[2].innerHTML = "<a href=\"http://localhost:8080/Internship-Infy/inventory/show-item.jsp?id="+ID+"\"><img style=\"height:50px\" src=\"http://localhost:8080/Internship-Infy/productimages/" + parsed.image_name + "\"> </a>";
			table.rows[I].cells[3].innerHTML = parsed.item_price*table.rows[I].cells[1].innerHTML;
			total+=	parseInt(table.rows[I].cells[3].innerHTML);
			console.log("total increased to " + total);
			document.getElementById("totalCost").innerHTML = "Your total is: Rs." + total;
		}
	});
	return false;
}
