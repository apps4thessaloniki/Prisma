
<g:if test="${results}">
	<div id="list-decision" class="content scaffold-list" role="main">

		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>

		<div class="pagination search_table">
			<util:remotePaginate action="list" total="${decisionInstanceTotal}"
				params="['source':source]" update="list-decision" id="pagination" />
		</div>

		<g:render template="/common/table_results" model="['source':source]" />

	</div>
</g:if>
<g:else>
	<p>Καμία απόφαση δεν ταιριάζει στην αναζήτησή σας</p>
	<p>
		<img alt="" src="${resource(dir: 'images', file: 'spinner_alt.png')}">
	</p>
</g:else>
