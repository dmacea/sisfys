
<% @estados.insert(0,["Seleccione",""]) %>
$(<%=escape_javascript("#{params[:select]}") %>).empty()
  .append("<%= escape_javascript(options_for_select(@estados)) %>")