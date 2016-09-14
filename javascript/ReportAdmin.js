/**
 * File: ReportAdmin.js
 */

(function($) {
	function paramsToObject(params) {
		var newParamsObject = {};

		$.each(params, function(index, pair) {
			newParamsObject[pair.name] = pair.value;
		});

		return newParamsObject;
	}

	$.entwine('ss', function($){
		$('.ReportAdmin .cms-edit-form').entwine({
			onsubmit: function(e) {
				var url = $.path.parseUrl(document.location.href).hrefNoSearch, 
					params = this.find(':input[name^=filters]').serializeArray();
				params = $.grep(params, function(param) {return (param.value);}); // filter out empty
				if(params) url = $.path.addSearchParams(url, paramsToObject(params));
				$('.cms-container').loadPanel(url);
				return false;
			}
		});
	
	});
})(jQuery);
