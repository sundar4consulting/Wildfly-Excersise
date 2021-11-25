<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="org.jboss.ejb3.model.CatalogSessionBeanFacade" %>
<%@ page import="org.jboss.ejb3.model.Catalog" %>


<%@ page import="java.util.List" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<body>
<%

//beanRemote=calculatorBean.create();

Context context = new InitialContext();
// Using the local JNDI name lookup in the java:app namespace ,retrieve the
// CatalogSessionBeanFacade component:
CatalogSessionBeanFacade bean = (CatalogSessionBeanFacade) context.lookup("java:app/jboss-ejb3-ejb/CatalogSessionBeanFacade!org.jboss.ejb3.model.CatalogSessionBeanFacade");
// Invoke the createTestData method and retrieve the List Catalog entities. Iterate
// over the Catalog entities and output the catalog ID as the journal name:
bean.createTestData();
List<Catalog> catalogs = bean.getAllCatalogs();
out.println("<br/>" + "List of Catalogs" + "<br/>");
for (Catalog catalog : catalogs) {
out.println("Catalog Id:");
out.println("<br/>" + catalog.getId() + "<br/>");
out.println("Catalog Journal:");
out.println(catalog.getJournal() + "<br/>");
}
%>

</body>
</html>