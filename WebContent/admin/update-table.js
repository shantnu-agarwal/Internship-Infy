function foo() {
	var tab = document.getElementById("TableList");
	console.log("Total entries: " + tab.rows.length);
	var val = document.getElementById("abc").value;
	console.log("Showing only: " + val);
	var i = 1;
	for (var cnt = 0; cnt < tab.rows.length - 1; cnt++) {
		tab.rows[cnt].style.display = '';
	}
	for (var cnt = 0; cnt < tab.rows.length - 1; cnt++) {
		console.log("Found: " + tab.rows[i].cells[4].innerHTML);

		if (tab.rows[i].cells[4].innerHTML == val) {
			i++;
		} else {
			tab.rows[i].style.display = 'none';
			i++;
		}
	}
	console.log("Entries hidden: " + cnt);

}

var form = $('form');
form.submit(function() {
	if (confirm('Are you sure you want to remove the account?')) {
		$.ajax({
			type : "GET",
			url : "deleteAccount",
			data : this.serialize(),
			success : function(data) {
				var result = data;
				if (result == "OK") {
					console.log("job done");
				} else {
					console.log("failed");
				}
			}

		});
	}

	return false;
});
