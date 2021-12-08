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
    <title>Başvuru Formu</title>
</head>
<body>
    <h2 align="center"><% out.println("BAYİLİK ÖN BAŞVURU FORMU");%></h2>

    <form:form action="/saveForm" method="post" align="center" >
        AD SOYAD: <input type = "text" name= "nameSurname" />
        <br />
        <br />
        TC KİMLİK NO: <input type = "number" name = "tcNo"  />
        <br />
        <br />
        ADRES: <textarea type = "text" name = "address" style="height: 50px;width: 300px;alignment: center"></textarea>
        <br />
        <br />
        TELEFON: <input type = "number" name = "phoneNumber" />
        <br />
        <br />
        E-POSTA: <input type = "text" name = "email" style="width: 200px" />
        <br />
        <br />
        DOĞUM TARİHİ: <input type = "date" name = "dateOfBirth" />
        <br />
        <br />
        PERAKENDE TİCARETİ İLE UĞRAŞTINIZ MI? <input type = "text" name = "question1"/>
        <br /><br />
        LOKUMCU BABA’YI TERCİH ETMENİZİN SEBEBİ NEDİR? <textarea type = "text" name = "question2" style="height: 100px;width: 300px"></textarea>
        <br /><br />
        HANGİ İL/İLÇE/SEMT İÇİN LOKUMCU BABA İŞLETMECİLİĞİ
        DÜŞÜNÜYORSUNUZ? <input type = "text" name = "question3" style="width: 300px"/>
        <br /><br />
        YATIRIM MİKTARINIZ NEDİR? <input type = "text" name = "question4" />
        <br /><br />
        EKLEMEK İSTEDİKLERİNİZ: <textarea type = "text" name = "question5" style="height: 100px; width: 300px" ></textarea>
        <br/><br />
        <input type = "submit" value = "BAŞVUR" />
    </form:form>

</body>
</html>
