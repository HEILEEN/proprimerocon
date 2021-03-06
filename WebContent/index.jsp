<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html lang="es" xmlns:ng="http://angularjs.org" id="ng-app" ng-app=FrmMainApp> 
	<head>		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Seguros Confianza</title>			
		<%
		  	ServletContext context = pageContext.getServletContext();
		  	String WEB_SERVER = context.getInitParameter("WEB_SERVER");
	    %>	    
	    <script >var WEB_SERVER='<%out.print(WEB_SERVER);%>';</script>
	    
		<script  src="lib/Angular/1.3.2/angular.js"></script>	    		
	    <script  src="lib/Angular/1.3.2/angular-route.js"></script>
	    <script  src="lib/Angular/1.3.2/angular-ui-tree.js"></script>
	    <script  src="lib/Angular/1.3.2/i18n/angular-locale_es-co.js"></script>
	    <script  src="lib/Angular/Multipart/angular-file-upload.js"></script>
	    <script  src="lib/Angular/Multipart/angular-file-upload-shim.js"></script>	    
	    <script  src="lib/bootstrap/Angular/ui-bootstrap-tpls-0.11.2.min.js"></script>    	    	          
	    	    
    	<!--ng grid...-->
	    <script  src="lib/Angular/angular-ui-ng-grid/3.0/jquery.min.js"></script>
    	<script  src="lib/Angular/angular-ui-ng-grid/3.0/ng-grid.debug.js"></script>
    	
    	<script  src="lib/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    	<script  src="lib/bootstrap/3.1.1/js/bootstrap.js"></script>
    	
	    <!--inclusion de estilos ...-->
	    <link  href="lib/CSS/Base.css" rel="stylesheet">
	    <link  href="lib/CSS/angular-ui-tree.min.css" rel="stylesheet">
	    <link  href="lib/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">  
 		<!--ng grid...-->
		<link href="lib/Angular/angular-ui-ng-grid/3.0/ng-grid.css" rel="stylesheet" type="text/css" />
		
		<!--inclusion de app, servicios, controles ...-->		
	    <script  src="WebResources/framework/frmmenu/FrmMenuApp.js"></script>
	    <script  src="WebResources/framework/frmmenu/FrmMenuService.js"></script>
	    <script  src="WebResources/framework/frmmenu/FrmMenuController.js"></script>
	    <script  src="WebResources/framework/frmmenu/FrmMenuFilter.js"></script>
	        					
		<script  src="WebResources/framework/frmperfil/FrmPerfilApp.js"></script>
	    <script  src="WebResources/framework/frmperfil/FrmPerfilService.js"></script>
	    <script  src="WebResources/framework/frmperfil/FrmPerfilController.js"></script>
	    <script  src="WebResources/framework/frmperfil/FrmPerfmoduController.js"></script>
	    
	    <script  src="WebResources/soporte/soporte/SoporteApp.js"></script>
	    <script  src="WebResources/soporte/soporte/SoporteService.js"></script>
	    <script  src="WebResources/soporte/soporte/SoporteController.js"></script>
	    <script  src="WebResources/soporte/soporte/SoporteChildService.js"></script>
	    <script  src="WebResources/soporte/soporte/SoporteChildController.js"></script>
		
		
		<script type="text/javascript" Language="JavaScript">
			document.createElement('ng-view');
		
		    $(document).ready(function() {
		        angular.bootstrap(document);
		    });
		</script>
			        					
	</head>		      
	
	<body>		
		<div id="encabezado">
			<header>
				<div>
					<!--logo-->
					<img alt="logo" src="Imagenes/Confianza/Header_Logofinal-01-01.png" style="float: left; margin-top:8px; margin-left:100px;" class="textotablas" height=58px width=245px> 
	  		    	<!--Honramos nuestro  nombre-->
					<img alt="bandera" src="Imagenes/Confianza/Honramos Nuestro NombreFB-01.png" style="float:right; margin-top:5px; margin-right:140px;" class="textotablas" height="64" width="315">
				</div>
			</header>
		</div><!--encabezado-->	
		
		<div id="menu">
		
			<div ng-controller="FrmMenuController">    
			  
				    <!-- Nested list template -->
				    <script type="text/ng-template" id="items_renderer.html">
                		<div ui-tree-handle>
                  			<a class="btn btn-danger btn-xs" data-nodrag ng-click="toggle(this)"><span class="glyphicon" ng-class="whatClassIsIt(this,item.menuhijo,item.modudurl)"></span></a>
                  			<a href="#/{{item.modudurl}}" data-nodrag >{{item.menutitu}}</a>
                		</div>
                		<ol ui-tree-nodes="options" ng-model="item.menuhijo" ng-class="{hidden: !collapsed}" data-nodrag>
                  			<li ng-repeat="item in item.menuhijo" ng-include="'items_renderer.html'" id="llista_imatges" data-nodrag>
                  			</li>
                		</ol>
        	  		</script>
				    <div ui-tree="options">
				      <ol ui-tree-nodes ng-model="menu" id="llista_imatges" data-nodrag>
				        <li ng-repeat="item in menu" ui-tree-node ng-include="'items_renderer.html'" data-nodrag></li>				        
				        
				        <li ui-tree-node data-nodrag>
				        	<div ui-tree-handle>
	                  			<a class="btn btn-danger btn-xs" data-nodrag ng-click="toggle(this)"><span class="glyphicon glyphicon-log-out"></span></a>
               					<a href="<c:url value="j_spring_security_logout" />" data-nodrag >Logout</a>
	                		</div>	                		
				        </li>
				        
				      </ol>
				    </div>				    				    

			        
			</div><!--ng-controller="FrmMenuController"-->	
			
		</div><!--menu ng-app="FrmMenuApp"-->	
		
		<div id="contenido" >
			<aside>
				<div ng-view></div>			
			</aside>
		</div><!--contenido-->	
		
		<div id="pie">
			<footer>
				<div style="background-color: #E4E4E2; width: 100%; height:100%; font-family: AvantGarde CE; font-size: small; " >
					<table style="height: 92px">
						<tr>
							<td  style="width: 273px; height: 36px;"></td>
							<td  style="width: 87px; height: 36px;"></td>
							<td  style="width: 185px; height: 36px;">
								<span lang="es" class="footer">APLICACIONES</span>
						    </td>
							<td  style="width: 88px; height: 36px;"></td>
							<td class="footer" style="width: 342px; height: 36px;">
								<span lang="es-co"><br /></span>
							</td>
							<td  style="width: 89px; height: 36px;"></td>
							<td  style="width: 173px; height: 36px;">&nbsp;</td>
							<td  style="width: 88px; height: 36px;"></td>
							<td  style="width: 274px; height: 36px;">&nbsp;</td>
							<td  style="width: 88px; height: 36px;"></td>
							<td  style="height: 36px"></td>
						</tr>
						<tr>
							<td  style="width: 273px; height: 50px;">								
							</td>
							<td  style="width: 87px; height: 50px;"></td>
							<td  style="width: 185px; height: 50px;">
								<span class="footer">
									<span lang="es">
										<a href="https://webmail.confianza.com.co/owa/auth/logon.aspx?replaceCurrent=1&amp;url=https%3a%2f%2fwebmail.confianza.com.co%2fowa%2f" target="_blank">Correos</a><br />
									</span>
									<span lang="es-co"><a href="http://srvfgdoc/se/" target="_blank">IsoSystem</a><br />
										<a href="http://srvfcore2:8080/InfoViewApp/logon.jsp" target="_blank">Crystal Reports</a>
									</span>
								</span>
							</td>
							<td  style="width: 88px; height: 50px;"></td>
							<td class="footer" style="width: 342px; height: 36px;">
								<span lang="es-co">
									<a href="http://srvvmshp:9005/BAL/Forms/AllItems.aspx?RootFolder=%2fBAL%2fLey%20de%20contrataci%c3%b3n%20estatal&FolderCTID=0x01200026D53D3410ABA54D82C8ED5BF1118F3D <http://srvvmshp:9005/BAL/Forms/AllItems.aspx?RootFolder=/BAL/Ley de contrataci%c3%b3n estatal&FolderCTID=0x01200026D53D3410ABA54D82C8ED5BF1118F3D" target="_blank">ASPECTOS LEGALES</a>
								</span><br />
								<a href="http://srvvmshp:9005/Documentos%20compartidos/Aviso_de_protección_de_datos[1].pdf" target="_blank">Aviso de Protección de Datos </a><br />
							</td>
							<td  style="width: 89px; height: 50px;"></td>
							<td  style="width: 173px; height: 50px;">&nbsp;</td>
							<td  style="width: 88px; height: 50px;"></td>
							<td  style="width: 274px; height: 50px;">&nbsp;</td>
							<td  style="width: 88px; height: 50px;"></td>
							<td  style="height: 50px">
								<table style="width: 23%">
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</footer>
		</div><!--pie-->	
		
	</body>
</html>
