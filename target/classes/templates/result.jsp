<!DOCTYPE html>
<html>
<head>

<title>Result Page</title>
</head>
<body>

	<h3 class="bg-danger text-center mb-5 p-2">Check Your Score Here</h3>
	
	<div class="d-flex justify-content-center">
		<p>Participant name:&nbsp;&nbsp;</p>
		<p th:if="${result}" th:text="${result.username}"></p>
	</div>

	<div class="d-flex justify-content-center">
		<p>Total correct answer:&nbsp;&nbsp;</p>
		<p th:if="${result}" th:text="${result.totalCorrect}"></p>
	</div>

	<div class="d-flex justify-content-center">
		<p>Total false answer:&nbsp;&nbsp;</p>
		<p th:if="${result}" th:text="5 - ${result.totalCorrect}"></p>
	</div>
	
	
	<div class="d-flex justify-content-center mt-4">
		<button type="button" th:onclick="window.location.href='/score'"
			class="btn btn-outline-warning mx-auto">View Score Board</button>
		<button type="button" th:onclick="window.location.href='/home'"
			class="btn btn-outline-warning mx-auto">Back to Homepage</button>
	</div>
</body>
</html>