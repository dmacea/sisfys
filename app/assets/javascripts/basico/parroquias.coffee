# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
 
$(document).on 'change', '#basico_parroquia_pais_id', (evt) ->
		$.ajax $(this).data('url'),
			type: 'GET'
			dataType: 'script'
			data: {
				pais_id: $("#basico_parroquia_pais_id option:selected").val(),
				select: "basico_parroquia_estado_id"
			}
			error: (jqXHR, textStatus, errorThrown) ->
				console.log("AJAX Error: #{textStatus}")
			success: (data, textStatus, jqXHR) ->
				console.log("Dynamic estado select OK!")

$(document).on 'change', '#basico_parroquia_estado_id', (evt) ->
		$.ajax $(this).data('url'),
			type: 'GET'
			dataType: 'script'
			data: {
				estado_id: $("#basico_parroquia_estado_id option:selected").val(),
				select: "basico_parroquia_municipio_id"
			}
			error: (jqXHR, textStatus, errorThrown) ->
				console.log("AJAX Error: #{textStatus}")
			success: (data, textStatus, jqXHR) ->
				console.log("Dynamic estado select OK!")

