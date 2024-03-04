<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Quiz Results</title>
</head>
<body>

<%
// Retrieve user answers from the form
String[] userAnswers = request.getParameterValues("userAnswers");
int[] correctAnswers = Arrays.stream(request.getParameterValues("correctAnswers"))
        .mapToInt(Integer::parseInt)
        .toArray();

// Check the user's answers and calculate the score
int score = 0;
for (int i = 0; i < userAnswers.length; i++) {
    int userAnswer = Integer.parseInt(userAnswers[i]);
    if (userAnswer == correctAnswers[i]) {
        score++;
    }
}
%>

<h2>Quiz Results</h2>

<p>You scored <%= score %> out of <%= userAnswers.length %> questions correctly.</p>

</body>
</html>