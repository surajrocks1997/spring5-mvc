<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!Doctype html>
<html>
<head>
<title>Customer Confirmation</title>
</head>
<body>
	The Customer is confirmed: ${customer.firstName} ${customer.lastName}
	<br>
	Free Passes are: ${customer.freePasses}
</body>
</html>