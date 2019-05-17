<div id="pages-controller-cms-content" class="cms-content center cms-tabset $BaseCSSClasses" data-layout-type="border" data-pjax-fragment="Content">

	<div class="cms-content-header north">
		<div class="cms-content-header-info">
			<% include CMSBreadcrumbs %>
		</div>

		<div class="cms-content-header-tabs">
			<button id="filters-button" class="icon-button font-icon-search no-text" title="<% _t('CMSPagesController_Tools_ss.FILTER', 'Filter') %>"></button>
		</div>
	</div>

	<div class="cms-content-fields center ui-widget-content cms-panel-padded">
		$Tools

		<div class="cms-content-view cms-panel-deferred" id="cms-content-treeview" data-url="$LinkTreeView" data-deferred-no-cache="true">
			<%-- Lazy-loaded via ajax --%>
		</div>
		<!--
		<div id="cms-content-galleryview">
			<i>Not implemented yet</i>
		</div>
		-->

	</div>

</div>
