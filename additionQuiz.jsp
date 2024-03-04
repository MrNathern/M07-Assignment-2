<%@ page import="java.util.Random" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Addition Quiz</title>
</head>
<body>

<%
// Number of questions in the quiz
int numberOfQuestions = 5;

// Generate random addition questions and store them in arrays
Random random = new Random();
int[] numbers1 = new int[numberOfQuestions];
int[] numbers2 = new int[numberOfQuestions];
int[] answers = new int[numberOfQuestions];

for (int i = 0; i < numberOfQuestions; i++) {
    numbers1[i] = random.nextInt(10) + 1; // Random number between 1 and 10
    numbers2[i] = random.nextInt(10) + 1;
    answers[i] = numbers1[i] + numbers2[i];
}
%>

<h2>Addition Quiz</h2>

<form action="checkAnswers.jsp" method="post">

<%
// Display the questions
for (int i = 0; i < numberOfQuestions; i++) {
%>
    <p>
        <%= numbers1[i] %> + <%= numbers2[i] %> =
        <input type="text" name="userAnswers" size="5" />
        <input type="hidden" name="correctAnswers" value="<%= answers[i] %>" />
    </p>
<%
}
%>

<input type="submit" value="Submit" />

</form>

</body>
</html>