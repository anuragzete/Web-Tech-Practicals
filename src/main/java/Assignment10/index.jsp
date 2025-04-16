<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="form.css">
    </head>
    <body>
        <!--form  action="calcservlet" method="POST">
            <input type="text" name="t1">
            <input type="text" name="t2">
            <input type="text" name="choice">

            <select name="choice">
                <option value="1">+</option>
                <option value="2">-</option>
                <option value="3">*</option>
                <option value="4">/</option>
            </select>

            <input type="submit" value="ADD">

        </form -->

        <h1>Calculator</h1>
        <div>
        <form action="calcservlet" method="POST">
            <p>First Number: </p><input type="text" name="t1">
            <p>Second Number: </p><input type="text" name="t2"><br />
            <!--<select name="option">
                <option value="add()">Addition</option>
                <option value="sub()">Addition</option>
                <option value="mul()">Multiplication</option>
                <option value="div()">Division</option>
            </select>-->

            <input type="radio" name="choice" value="1" /><p class="pc">Addition</p><br />
            <input type="radio" name="choice" value="2" /><p class="pc">Subtraction</p><br
/>
            <input type="radio" name="choice" value="3" /><p
class="pc">Multiplication</p><br />
            <input type="radio" name="choice" value="4" /><p class="pc">Division</p><br />
            <input type="submit"  value="Submit" />
        </form>
        </div>


    </body>
</html>