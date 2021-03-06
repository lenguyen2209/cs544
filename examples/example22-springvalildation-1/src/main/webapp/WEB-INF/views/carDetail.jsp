<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Details</title>
        <link href="../resources/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form:form commandName="car" action="../cars/${car.id}" method="post">
            <form:hidden path="id" />
            <form:errors path="*" cssClass="errorblock" element="div" />
            <table>
                <tr>
                    <td>Make:</td>
                    <td><form:input path="make" /> </td>
                    <td><form:errors path="make" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Model:</td>
                    <td><form:input path="model" /> </td>
                    <td><form:errors path="model" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Year:</td>
                    <td><form:input path="year" /> </td>
                    <td><form:errors path="year" cssClass="error" /> </td>
                </tr>
                <tr>
                    <td>Color:</td>
                    <td><form:input path="color" /> </td>
                    <td><form:errors path="color" cssClass="error" /> </td>
                </tr>
            </table>
            <input type="submit" value="update"/>
        </form:form>

        <form action="delete?carId=${car.id}" method="post">
            <button type="submit">Delete</button>
        </form>
    </body>
</html>