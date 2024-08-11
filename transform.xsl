<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Online Food Delivery Orders</title>
                <style>
                    table { width: 100%; border-collapse: collapse; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                </style>
            </head>
            <body>
                <h2>Food Delivery Orders</h2>
                <table>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer Name</th>
                        <th>Customer Email</th>
                        <th>Restaurant Name</th>
                        <th>Restaurant Location</th>
                        <th>Food Item</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Delivery Address</th>
                        <th>Delivery Time (mins)</th>
                        <th>Delivery Fee</th>
                    </tr>
                    <xsl:for-each select="foodDelivery/order">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="customer/name"/></td>
                            <td><xsl:value-of select="customer/email"/></td>
                            <td><xsl:value-of select="restaurant/name"/></td>
                            <td><xsl:value-of select="restaurant/location"/></td>
                            <td>
                                <xsl:for-each select="foodItems/item">
                                    <xsl:value-of select="name"/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="foodItems/item">
                                    <xsl:value-of select="quantity"/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="foodItems/item">
                                    <xsl:value-of select="price"/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                            <td><xsl:value-of select="delivery/address"/></td>
                            <td><xsl:value-of select="delivery/deliveryTime"/></td>
                            <td><xsl:value-of select="delivery/deliveryFee"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
