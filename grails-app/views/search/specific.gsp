<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<body>
	<div class="body">
		<p>Specific search</p>
		<g:formRemote name="specific"
			url="[controller:'search', action:'searchspecific']" update="results">
			<label for="prot_num">Protocol Number:</label>
			<g:textField name="prot_num" />
			<br />
			<label for="unit">Unit:</label>
			<richui:autoComplete name="unit"
				action="${createLinkTo('dir': 'ajax/unitAJAX')}"
				onItemSelect="${remoteFunction(controller: 'ajax' , action: 'selUn', params: '\'id=\' + id')}" />
			<br />
			<label for="org">Organization:</label>
			<richui:autoComplete name="org"
				action="${createLinkTo('dir': 'ajax/orgAJAX')}"
				onItemSelect="${remoteFunction(controller: 'ajax' , action: 'selOrg', params: '\'id=\' + id')}" />
			<br />
			<label for="signer">Signer:</label>
			<richui:autoComplete name="signer"
				action="${createLinkTo('dir': 'ajax/signerAJAX')}" />
			<br />
			<label for="fromDate">From Date:</label>
			<g:datePicker name="fromDate" precision="day"
				noSelection="['':'-No Selection-']" default="none" years="${Calendar.instance.get(Calendar.YEAR)..2010}"/>
			<br />
			<label for="toDate">To Date:</label>
			<g:datePicker name="toDate" precision="day"
				noSelection="['':'-No Selection-']" default="none" years="${Calendar.instance.get(Calendar.YEAR)..2010}"/>
			<br />
			<input name="pageId" type="hidden" value="admin_panel" />
			<g:submitButton name="search" />
		</g:formRemote>
		<div id="results"></div>
	</div>
	</div>
</body>
</html>