<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <xsl:template match="/">
        <link rel="stylesheet" type="text/css" href="maintable.css"/>
        <html>
            <head>
                <title>
유럽 추천 여행지
                </title>
            </head>
            <body>
                <h1><a  href="Euro_travel.xml">
                    유럽 추천 여행지
                                    </a></h1>
                <nav id="topMenu">
                    <ul>
                        <li>
                            <a class="menuLink" href="./그리스.xml">그리스</a>
                        </li>
                        <li>
                            <a class="menuLink" href="./영국.xml">영국</a>
                        </li>
                        <li>
                            <a class="menuLink" href="./프랑스.xml">프랑스</a>
                        </li>
                        <li>
                            <a class="menuLink" href="./독일.xml">독일</a>
                        </li>
                    </ul>
                </nav>
                <xsl:for-each select="web/Europe/travel[name='센강']">
                    <xsl:choose>
                        <xsl:when test="@select='건물'">
                            <table>
                                <tr>
                                    <td><img id="subimg">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('./image/',picture2/@file)" />
                                        </xsl:attribute>
                                        <xsl:attribute name="width">
                                            <xsl:value-of select="picture2/@w" />
                                        </xsl:attribute>
                                        <xsl:attribute name="height">
                                            <xsl:value-of select="picture2/@h" />
                                        </xsl:attribute>
                                    </img></td>
                                    <td rowspan="3"><img id="mainimg">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('./image/',picture1/@file)" />
                                        </xsl:attribute>
                                        <xsl:attribute name="width">
                                            <xsl:value-of select="picture1/@w" />
                                        </xsl:attribute>
                                        <xsl:attribute name="height">
                                            <xsl:value-of select="picture1/@h" />
                                        </xsl:attribute>
                                    </img></td>
                                    <td rowspan="3">
                                        <h2>
                                            <xsl:value-of select="name" />
                                        </h2>
                                        <p>국가: <xsl:value-of select="city/@country" />
                                    </p>
                                    <p>도시: <xsl:value-of select="city" />
                                    </p>
                                    <p>건축가: <xsl:value-of select="buillder" />
                                    </p>
                                    <p>이야기<br/><xsl:value-of select="story" />
                                    </p></td>
                                  </tr>
                                  <tr>
                                    <td><div style="border :1px solid black; padding 10px;" id="subimg">이미지를 준비중입니다.</div></td>
                                  </tr>
                                  <tr>
                                    <td><div style="border :1px solid black; padding 10px;" id="subimg">이미지를 준비중입니다.</div></td>
                                    </tr>
                                    </table>
                        </xsl:when>
                        <xsl:otherwise>
                            <table>
                                <tr>
                                    <td><img id="subimg">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('./image/',picture2/@file)" />
                                        </xsl:attribute>
                                        <xsl:attribute name="width">
                                            <xsl:value-of select="picture2/@w" />
                                        </xsl:attribute>
                                        <xsl:attribute name="height">
                                            <xsl:value-of select="picture2/@h" />
                                        </xsl:attribute>
                                    </img></td>
                                    <td rowspan="3"><img id="mainimg">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="concat('./image/',picture1/@file)" />
                                        </xsl:attribute>
                                        <xsl:attribute name="width">
                                            <xsl:value-of select="picture1/@w" />
                                        </xsl:attribute>
                                        <xsl:attribute name="height">
                                            <xsl:value-of select="picture1/@h" />
                                        </xsl:attribute>
                                    </img></td>
                                    <td rowspan="3">
                                        <h2>
                                            <xsl:value-of select="name" />
                                        </h2>
                                        <p>국가: <xsl:value-of select="city/@country" />
                                        </p>
                                        <p>위도: <xsl:value-of select="place/@latitude" />
                                        </p>
                                        <p>경도: <xsl:value-of select="place/@longitude" />
                                        </p>
                                        <p>이야기<br/><xsl:value-of select="story" />
                                        </p></td>
                                  </tr>
                                  <tr>
                                    <td><div style="border :1px solid black; padding 10px;" id="subimg">이미지를 준비중입니다.</div></td>
                                  </tr>
                                  <tr>
                                    <td><div style="border :1px solid black; padding 10px;" id="subimg">이미지를 준비중입니다.</div></td>
                                    </tr>
                                </table>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
                <hr/>
                <h3>
                    이런 여행지는 어떠세요?
                </h3>
                <div id="maintable">
                    <xsl:for-each select="web/Europe/travel[position()&lt;=3]">
                    <a>
                        <xsl:attribute name="href"><xsl:value-of select="concat('./',name,'.xml')" /></xsl:attribute>
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="concat('./image/',picture1/@file)" />
                            </xsl:attribute>
                            <xsl:attribute name="width">
                                <xsl:value-of select="picture1/@w" />
                            </xsl:attribute>
                            <xsl:attribute name="height">
                                <xsl:value-of select="picture1/@h" />
                            </xsl:attribute>
                        </img>
                        <br />
                        <xsl:value-of select="name" />
                        <br />
                        <xsl:value-of select="city" />
                        </a>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>