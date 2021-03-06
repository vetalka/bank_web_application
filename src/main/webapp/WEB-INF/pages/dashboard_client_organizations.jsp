<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>
        <spring:message code="application.name"/>
    </title>
</head>
<body>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->


    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="content-header">
                <h1>Оплата покупок и услуг: ${service.name}</h1>
            </div>
            <div class="col-lg-8 col-xs-6">
                <c:forEach items="${service.organizations}" var="organization">
                    <div class="col-lg-6 col-xs-6">
                        <h4 class="category">  <strong>${categoryService.name}</strong></h4>
                        <ul>
                                <li>
                                    <img src="/resources/img/organization/${organization.logotype}" class="image-category" alt="category"/>
                                    <a href="/dashboard/client/payment-services/${organization.id}" class="organization"> ${organization.name}</a>
                                </li>
                        </ul>
                    </div><!-- ./col -->
                </c:forEach>
            </div><!-- ./col -->

        </div><!-- /.row -->

    </section><!-- /.content -->
</div><!-- /.content-wrapper -->


<!-- add class .active for li[num] in sidebar-menu -->
<input id="meta.page.li.num" type="hidden" value="2" />

</body>

</html>

