<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PDF report</title>

<!-- jQuery library -->
<script src="js/jquery.min.js"></script>

<!-- jsPDF library -->
<script type="text/javascript" src="https://unpkg.com/jspdf@1.5.3/dist/jspdf.min.js"></script>

<!-- <script src="js/jsPDF/dist/jspdf.min.js"></script> -->

<script type="text/javascript">

	function generate_PDF(){
		
		var doc = new jsPDF();
		var elementHTML = $('#content').html();
		
		var specialElementHandlers = {
		    '#elementH': function (element, renderer) {
		        return true;
		    }
		};
		doc.fromHTML(elementHTML, 15, 15, {
		    'width': 170,
		    'elementHandlers': specialElementHandlers
		});

		// Save the PDF
		doc.save('sample-document.pdf');
		
	}
</script>

</head>
<body>

	<button onclick="generate_PDF();">Download Report</button>

	<div id="content">
		<h1> Artwork Report</h1>
		<p>
			Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia
		</p>
	</div>
	
	<div id="elementH"></div>
	
	<%System.out.println("Read upto here..."); %>

</body>
</html>