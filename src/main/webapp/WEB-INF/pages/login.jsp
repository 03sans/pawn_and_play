<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- JSTL core taglib for conditional rendering -->

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login</title>

  <!-- CSS imports -->
  <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/header.css" />
  <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/login.css" />
  <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/footer.css" />
</head>
<body>

  <!-- Include header -->
  <jsp:include page="header.jsp"/>
  
  <c:if test="${not empty sessionScope.success}">
    <div class="success-message">${sessionScope.success}</div>
    <c:remove var="success" scope="session"/>
</c:if>

  <main class="login-main">
    <section class="login-box">
      <h1>WELCOME BACK!</h1>

      <!-- Display login error message if exists -->
      <c:if test="${not empty errorMsg}">
        <p class="error-message">${errorMsg}</p>
      </c:if>

      <!-- Display logout success message if exists -->
      <c:if test="${not empty successMsg}">
        <p class="success-message">${successMsg}</p>
      </c:if>

      <!-- Login form posts to /login servlet -->
      <form action="${pageContext.request.contextPath}/login" method="post">
        <label>USERNAME:</label>
        <input type="text" name="username" required>

        <label>PASSWORD:</label>
        <input type="password" name="password" required>

        <button type="submit" class="login-btn">LOGIN</button>

        <p class="or">OR</p>

        <!-- Redirect to registration page -->
        <a href="${pageContext.request.contextPath}/registration">
          <button type="button" class="signup-btn">SIGN UP</button>
        </a>
      </form>
    </section>

    <!-- Right-hand image with motivational text -->
    <section class="login-image">
      <p class="board-text">THE BOARD IS SET.<br>ALL THAT IS MISSING IS <em>YOU!</em></p>
      <img src="${pageContext.request.contextPath}/resources/images/login.png" alt="Game Collage">
    </section>
  </main>

  <!-- Include footer -->
  <jsp:include page="footer.jsp"/>
</body>
</html>