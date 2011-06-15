<html>
<head>
<title></title>
</head>
<body>
<%
	WbdProductionHelper helper = null;
	JspHelper jh = null;
	String snippetVar_myProperty;
	String snippetVar_thisNavpoint;
%>
<!--START-->
<%@page import="tooltwist.wbd.WbdProductionHelper"%>
<%@page import="com.dinaa.data.XData"%>
<%@page import="tooltwist.dexter.widgets.Junk1Widget"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	//************* Remove this if you don't have a production helper for this widget
	Junk1WidgetProductionHelper h = (Junk1WidgetProductionHelper) helper;
	XData data = h.getData(jh);

	// Get the url for a navpoint, with aotomatic parameters added
	String nextPageUrl = RoutingUIM.navpointUrl(jh, snippetVar_myNavpoint, AutomaticUrlParametersMode.INSERT_AUTOMATIC_URL_PARAMETERS_NOW);
%>

<!-- ********** INSERT HTML HERE ********** -->
<div %%idDefinition%% class="Junk1" style="width:200px; height:50px; border-style:solid; border-width:1px;">
	Hello World<br/>
	My Property = <%=snippetVar_myProperty%><br/>
	<a href="+nextPageUrl+">next page</a>
</div>

<!--END-->
</body>
</html>
