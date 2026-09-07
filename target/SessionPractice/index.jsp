<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles.css">
        <title>CD List</title>
    </head>

    <body>
        <h1>CD list</h1>
        <table>
            <tr>
                <th>Description</th>
                <th>Price</th>
                <th></th>
            </tr>

            <tr>
                <td>86 (the band) - True Life Songs and Pictures</td>
                <td>$14.95</td>
                <td>
                    <form action="CartServlet" method="post">
                        <input type="hidden" name="productCode" value="cd01">
                        <input type="hidden" name="description" value="86 (the band) - True Life Songs and Pictures">
                        <input type="hidden" name="price" value="14.95">
                        <input type="submit" value="Add To Cart">
                    </form>
                </td>
            </tr>

            <tr>
                <td>Paddlefoot - The first CD</td>
                <td>$12.95</td>
                <td>
                    <form action="CartServlet" method="post">
                        <input type="hidden" name="productCode" value="cd02">
                        <input type="hidden" name="description" value="Paddlefoot - The first CD">
                        <input type="hidden" name="price" value="12.95">
                        <input type="submit" value="Add To Cart">
                    </form>
                </td>
            </tr>

            <tr>
                <td>Paddlefoot - The second CD</td>
                <td>$14.95</td>
                <td>
                    <form action="CartServlet" method="post">
                        <input type="hidden" name="productCode" value="cd03">
                        <input type="hidden" name="description" value="Paddlefoot - The second CD">
                        <input type="hidden" name="price" value="14.95">
                        <input type="submit" value="Add To Cart">
                    </form>
                </td>
            </tr>

            <tr>
                <td>Joe Rut - Genuine Wood Grained Finish CD</td>
                <td>$14.95</td>
                <td>
                    <form action="CartServlet" method="post">
                        <input type="hidden" name="productCode" value="cd04">
                        <input type="hidden" name="description" value="Joe Rut - Genuine Wood Grained Finish CD">
                        <input type="hidden" name="price" value="14.95">
                        <input type="submit" value="Add To Cart">
                    </form>
                </td>
            </tr>

        </table>

    </body>
</html>