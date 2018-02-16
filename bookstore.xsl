<!-- bookstore.xsl -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" />
  <xsl:template match="/">
    <html>
      <head>
        <title>Bookstore Details</title>
      </head>

      <body>
        <xsl:apply-templates select="bookstore" />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="bookstore">
    <xsl:for-each select="bookstore">
      <h3><xsl:value-of select="name"/></h3> <br/>
      <h3><xsl:value-of select="address"/></h3> <br/>
      <img src="{logo@src}"/> <br/>
      <h3><xsl:value-of select="email"/></h3> <br/>
      <h3><xsl:value-of select="phone"/></h3> <br/>

      <h3>Book Details</h3>
      <table border="1">
        <tr>
          <th rowspan="2">Book ID</th>
          <th rowspan="2">Book Title</th>
          <th colspan="2">Price</th>
          <th rowspan="2">Publisher</th>
          <th rowspan="2">Author</th>
          <th rowspan="2">Picture</th>
        </tr>
        <tr>
          <th>CAD</th>
          <th>USD</th>
        </tr>
        <xsl:for-each select="book">
          <tr>
            <td colspan="2"><xsl:value-of select="book/@bookid"/></td>
            <td colspan="2"><xsl:value-of select="booktitle"/></td>
            <td><xsl:value-of select="price/@cad"/></td>
            <td><xsl:value-of select="price/@usd"/></td>
            <td colspan="2"><xsl:value-of select="publisher"/></td>
            <td colspan="2"><xsl:value-of select="author"/></td>
            <td colspan="2"><img src="{picture@src}"/></td>
          </tr>
                <h3>Employee Details</h3>
                <table border="1">
                  <tr>
                    <th>Employee ID</th>
                    <th>Name</th>
                    <th>Date Employed</th>
                    <th>Hourly Rate</th>
                    <th>Email</th>
                    <th>Phone(s)</th>
                  </tr>
                  <xsl:for-each select="book">
                    <tr>
                      <td><xsl:value-of select="employee/@employeeid"/></td>
                      <td><xsl:value-of select="employeename"/></td>
                      <td><xsl:value-of select="dateemployed"/></td>
                      <td><xsl:value-of select="hourlyrate"/></td>
                      <td><xsl:value-of select="empemail"/></td>
                      <td><xsl:value-of select="empphone"/></td>
                    </tr>
        </xsl:for-each>
      </table>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
