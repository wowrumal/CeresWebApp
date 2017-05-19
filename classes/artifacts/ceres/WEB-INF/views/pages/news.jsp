<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: stas-
  Date: 10/6/2016
  Time: 10:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container">
    <div class="card-panel white">
        <div class="card-title teal darken-1" style="margin-left: -2%; width: 104%; padding-left: 11%;">
            <h3 class="white-text">Новости</h3>
        </div>
        <div class="card-content" style="padding-left: 10%;">
            <c:forEach var="news" items="${newsList}" varStatus="loop" step="2">
                <div class="row">

                    <div class="card col s5 hoverable teal darken-1">
                        <div class="card-image waves-effect waves-block waves-light" style="margin-top: 10px;">
                            <img class="activator" src="resources/images/news/${newsList[loop.index].imageFileName}">
                        </div>
                        <div class="card-content">
                            <div class="row white" style="width: 118%; margin-left: -9%; padding: 0 8%;">
                                <span><fmt:formatDate type="both" dateStyle="short" timeStyle="short"
                                                                      value="${newsList[loop.index].modificationDate}" /></span>
                                <span class="right">${newsList[loop.index].author.student.name}Name ${newsList[loop.index].author.student.surname}Surname</span>
                            </div>
                            <span class="card-title white-text">${newsList[loop.index].title}</span>
                        </div>
                    </div>

                    <c:if test="${loop.index + 2 <= fn:length(newsList)}">
                        <div class="card col s5 offset-s1 hoverable teal darken-1">
                            <div class="card-image waves-effect waves-block waves-light" style="margin-top: 10px;">
                                <img class="activator" src="resources/images/news/${newsList[loop.index + 1].imageFileName}">
                            </div>
                            <div class="card-content">
                                <div class="row white" style="width: 118%; margin-left: -9%; padding: 0 8%;">
                                    <span><fmt:formatDate type="both" dateStyle="short" timeStyle="short"
                                                                          value="${newsList[loop.index].modificationDate}" /></span>
                                    <span class="right">${newsList[loop.index + 1].author.student.name}Name ${newsList[loop.index + 1].author.student.surname}Surname</span>
                                </div>
                                <span class="card-title white-text">${newsList[loop.index + 1].title}</span>
                            </div>
                        </div>
                    </c:if>
                </div>
                <!-- End row-->

            </c:forEach>
        </div>
    </div>
</div>