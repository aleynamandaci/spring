<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: aleynamandaci
  Date: 2.12.2021
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Control Page</title>
</head>
<body>
    <h1 align="center"><% out.println("BAYİLİK ÖN BAŞVURU FORMU");%></h1>

    <form action="form.jsp" method="POST">
        AD SOYAD: <input type = "text" name = "name_surname"  >
        <br />
        TC KİMLİK NO: <input type = "number" name = "tc_no"  >
        <br />
        ADRES: <input type = "text" name = "address"  >
        <br />
        TELEFON: <input type = "number" name = "phone_number"  >
        <br />
        E-POSTA: <input type = "text" name = "email"  >
        <br />
        DOĞUM TARİHİ: <input type = "date" name = "date_of_birth"  >
        <input type = "submit" value = "GÖNDER" />
    </form>




</body>
</html>
