<cfoutput><!--- HELPBOX ---><div id="helpbox" class="helpbox" style="display: none">	<div class="helpbox_header">	  <div class="helpbox_header_title"><img src="images/icons/icon_guide_help.gif" align="absmiddle"> Help Tip</div>	</div>		<div class="helpbox_message" >	  <ul>	  	<li>Welcome to your ColdBox Dashboard application. This intuitive dashboard will help you get familiarized	  	with ColdBox and all of its features.</li>	  	<li>You can use the Home section to look at the framework's system information, cfc documentation and online resources.</li>	  	<li>The Settings section will let you see the read only settings of the framework, logging facility settings, file encoding	  	settings, change your dashboard password, and change your auto-update proxy settings.</li>	  	<li>The Tools sections includes an Application Skeleton Generator, Brian Rinaldi's CFC Generator and the ColdBox Log Viewer	  	application.</li>	  	<li>The Update section will let you see if there are any updates to your framework and you can either download the bits or auto-update	  	right from this cool application.</li>	  	<li>The Submit Bug is just a simple mail form that will let you email a new bug to the official bug registry.</li>	  </ul>	</div>	<div align="right" style="margin-right:5px;">	<input type="button" value="Close" onClick="helpoff()" style="font-size:9px">	</div></div><div class="maincontentbox">		<div class="contentboxes_header">		<div class="contentboxes_title"><img src="images/icons/systeminfo_icon.gif" align="absbottom" />&nbsp; System Information</div>	</div>		<div class="contentboxes">		<p>Welcome to your ColdBox Framework Dashboard Application. From this application you can view your system's information, have access to	online resources, framework cfc documentation, framework settings, application builder, etc. If you want to auto-update your	ColdBox installation, please click on the <strong>Update</strong> icon.</p>	<br>	<form name="infoform" id="infoform" action="">	<fieldset>		<legend ><strong>Framework Information</strong></legend>		<div style="margin: 5px">	    <table width="100%" border="0" cellspacing="0" cellpadding="5" class="tablelisting">	      	      <tr>            <td width="30%" align="right" valign="top"><strong>Framework ID:</strong></td>            <td valign="top" style="border-left:1px solid ##ddd">#getSetting("codename",1)# #getSetting("version",1)# #getSetting("suffix",1)#</td>          </tr>          <tr bgcolor="##ffffff">            <td align="right" valign="top"><strong>Author:</strong></td>            <td valign="top" style="border-left:1px solid ##ddd">#getSetting("author",1)#</td>          </tr>          <tr>            <td align="right" valign="top"><strong>Author Website:</strong></td>            <td valign="top" style="border-left:1px solid ##ddd">#getSetting("authorWebsite",1)#</td>          </tr>          <tr bgcolor="##ffffff">            <td align="right" valign="top"><strong>Official Email:</strong></td>            <td valign="top" style="border-left:1px solid ##ddd">#getSetting("AuthorEmail",1)#</td>          </tr>        </table>		</div>	</fieldset>	<br /><br />	<fieldset>		<legend ><strong>Framework Locations</strong></legend>		<div style="margin: 5px">	    <table width="100%" border="0" cellspacing="0" cellpadding="5" class="tablelisting">		   <tr>            <td valign="top" colspan="2" style="border-bottom:1px solid ##ddd"><img src="images/orange_arrows_down.gif" align="absmiddle" /><strong>Framework Path:</strong></td>          </tr>          <tr bgcolor="##ffffff">            <td valign="top" colspan="2">#getSetting("frameworkpath",1)#</td>          </tr>		   <tr>            <td valign="top" colspan="2" style="border-bottom:1px solid ##ddd"><img src="images/orange_arrows_down.gif" align="absmiddle" /><strong>Plugins Path:</strong></td>          </tr>          <tr bgcolor="##ffffff">          	 <td valign="top" colspan="2">#getSetting("FrameworkPluginsPath",1)#</td>          </tr>                    <tr>            <td valign="top" colspan="2" style="border-bottom:1px solid ##ddd"><img src="images/orange_arrows_down.gif" align="absmiddle" /><strong>Config Schema Path:</strong>            <input type="button" value="Open Schema!" onClick="window.location='/coldbox/system/config/config.xsd'" style="font-size:9px">            </td>          </tr>          <tr bgcolor="##ffffff">          	 <td valign="top" colspan="2">#getSetting("ConfigFileSchemaLocation",1)#</td>          </tr>          		   <tr>            <td valign="top" colspan="2" style="border-bottom:1px solid ##ddd"><img src="images/orange_arrows_down.gif" align="absmiddle" /><strong>Install Folder:</strong></td>           </tr>           <tr bgcolor="##ffffff">            <td valign="top" colspan="2">			<cfif getvalue("InstallFolderExits")>				#expandPath("/coldbox/install")#			<cfelse>				<div class="redtext">Not Found</div>			</cfif>			</td>          </tr>		   <tr>            <td valign="top" colspan="2" style="border-bottom:1px solid ##ddd"><img src="images/orange_arrows_down.gif" align="absmiddle" /><strong>Samples Folder:</strong>            <input type="button" value="Open Gallery!" onClick="window.location='/coldbox/samples'" style="font-size:9px"></td>		   </tr>		   <tr bgcolor="##ffffff">                     <td valign="top" colspan="2">			<cfif getvalue("SampleFolderExists")>				#expandPath("/coldbox/samples")#							<cfelse>				<div class="redtext">Not Found</div>			</cfif>			</td>          </tr>        </table>		</div>	</fieldset>	<br /><br />	<fieldset>		<legend ><strong>System Information</strong></legend>		<div style="margin: 5px">        <table width="100%" border="0" cellpadding="5" cellspacing="0"  class="tablelisting">          <tr>            <td width="30%" align="right" valign="top"><strong>Operating System: </strong></td>            <td valign="top" style="border-left:1px solid ##ddd">#getPlugin("fileutilities").getOSName()#</td>          </tr>         <tr bgcolor="##ffffff">            <td  align="right" valign="top"><strong>Inet Host: </strong></td>            <td valign="top" style="border-left:1px solid ##ddd">#getPlugin("fileutilities").getInetHost()#</td>          </tr>          <tr>            <td align="right" valign="top"><strong>Host Ip Address: </strong></td>            <td valign="top" style="border-left:1px solid ##ddd">#getPlugin("fileutilities").getipaddress()#</td>          </tr>           <tr bgcolor="##ffffff">            <td align="right" valign="top"><strong>Java Runtime Version: </strong></td>            <td valign="top" style="border-left:1px solid ##ddd">#getPlugin("fileutilities").getJavaRuntime()#</td>          </tr>           <tr>            <td  align="right" valign="top"><strong>Java Version: </strong></td>            <td valign="top" style="border-left:1px solid ##ddd">#getPlugin("fileutilities").getJavaVersion()#</td>          </tr>         <tr bgcolor="##ffffff">            <td align="right" valign="top"><strong>File Separator: </strong></td>            <td valign="top" style="border-left:1px solid ##ddd">#getSetting("OSFileSeparator",1)#</td>          </tr>          <tr>            <td align="right" valign="top"><strong>ColdFusion Engine:</strong></td>            <td valign="top" style="border-left:1px solid ##ddd">#server.ColdFusion.ProductName#</td>          </tr>		  <tr bgcolor="##ffffff">            <td align="right" valign="top"><strong>Engine Version:</strong></td>            <td valign="top" style="border-left:1px solid ##ddd">#server.ColdFusion.ProductVersion#</td>          </tr>        </table>		</div>	</fieldset>	</form>	</div>	</div></cfoutput>