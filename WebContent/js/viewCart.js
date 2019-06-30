var num = 1;

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
				

				i += 2;
				row_num++;
			}
			getData(table);

		}
	});
	return false;
});

function getData(table) {
	 for (i = 1; i < table.rows.length; i++) {
		 var id  = table.rows[i].cells[0].innerHTML;
		 console.log("READ FROM TABLE: " + id);
	 
		 $.ajax({
				type : "GET",
				url : "GetFromCartDB",
				data : {"ID": id},
				success : function(data) {
					table.rows[i].cells[0].innerHTML = "#";
					table.rows[i].cells[1].innerHTML = "ITEM NAME";
					table.rows[i].cells[2].innerHTML = "ITEM QUANTITY";
					table.rows[i].cells[3].innerHTML = "ITEM COST";
					table.rows[i].cells[4].innerHTML = "SELLER NAME";
					table.rows[i].cells[5].innerHTML = "PHOTO";
					
				}
			});
			return false;
	 }
	
}

