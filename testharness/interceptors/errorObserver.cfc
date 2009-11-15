<!-----------------------------------------------------------------------
********************************************************************************
Copyright 2005-2008 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.coldboxframework.com | www.luismajano.com | www.ortussolutions.com
********************************************************************************

Author     :	Luis Majano
Date        :	9/28/2007
Description :
	An error observer
----------------------------------------------------------------------->
<cfcomponent name="errorObserver"
			 hint="This is a simple error observer"
			 output="false"
			 extends="coldbox.system.Interceptor">

<!------------------------------------------- CONSTRUCTOR ------------------------------------------->

	<cffunction name="Configure" access="public" returntype="void" hint="Configuration" output="false" >
		<!--- Nothing --->
		
	</cffunction>

<!------------------------------------------- INTERCEPTION POINTS ------------------------------------------->

	<cffunction name="onException" access="public" returntype="void" hint="My very own custom interception point. " output="false" >
		<!--- ************************************************************* --->
		<cfargument name="event">
		<cfargument name="interceptData">
		<!--- ************************************************************* --->
		<cfset getPlugin("Logger").logEntry("information","an error ocurred")>
		<cfscript>
			appendToBuffer('<h1>This is a Test</h1>');
		</cfscript>
	</cffunction>
	
	
	<cffunction name="onLog" access="public" returntype="void" output="false" interceptionPoint>
		<cfargument name="event">
		<cfargument name="interceptData">
		<cfset getPlugin("Logger").info("onLog called: #arguments.toString()#")>
	</cffunction>


</cfcomponent>