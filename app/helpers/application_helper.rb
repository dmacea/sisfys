module ApplicationHelper
	def nav_bar
		content_tag(:ul, class: "nav nav-pills nav-stacked") do
	  		elementos = []
	  		yield(elementos)
	  		elementos.join.html_safe
		end
   	end
 
	def nav_link(text, path=nil,controlador =nil)
    	options = controller.controller_name ==controlador ? { class: "active" } : {}
    	content_tag(:li, options) do
      		link_to text, path, style: "font-size:13px;"
    	end
	end

	def sub_menu title
	  content_tag :li do
		elementos = []
		a = content_tag(:a,title,{"class" => "dropdown-toggle", "data-toggle" => "dropdown", "href" => "#", "role" => "button", "aria-haspopup" => "true", "aria-expanded" => "false" })
		submenu = content_tag(:ul,{class: "dropdown-menu"}) do 
			elementosSub = []
			yield(elementosSub)
			elementosSub.join.html_safe
		end 
		elementos.append a
		elementos.append submenu
	    elementos.join.html_safe
	  end
	end 

	def menu 
		nav_bar do |nav|
			nav.append nav_link("Sisf&s",root_path)
			basico = sub_menu "Basico" do |elementos|
				elementos.append nav_link("Países",basico_paises_path,"paises")
				elementos.append nav_link("Estados",basico_estados_path,"estados")
				elementos.append nav_link("Municipios",basico_municipios_path,"municipios")
				elementos.append nav_link("Parroquias",basico_parroquias_path,"parroquias")
				elementos.append nav_link("Personas Juridicas ",basico_persona_juridicas_path,"personaJuridicas")
			end 
			registro = sub_menu "Registro" do |elementos|
				elementos.append nav_link("Cliente",basico_paises_path,"paises")
			end 
			nav.append(basico)
			nav.append(registro)
		end 
	end 

	def paginador(lista)
		contenido = []
		contenido.append(content_tag(:div,content_tag(:label,page_entries_info(lista)),class: "col-md-4",align: "right")) 
		contenido.append(content_tag(:div, will_paginate(lista,renderer: BootstrapPagination::Rails),class: "col-md-8",align: "right")) 
		content_tag :div,contenido.join.html_safe(), class: "botonera"
	end 


  def buscar(url,columnas)
    form_tag url, class: 'navbar-form navbar-right',method: 'get',role: "search" do     
	    content_tag :div , class: "form-group form-group-sm" do |div|
	    	array = [] 
	    	array << text_field_tag(:search, params[:search], class:"form-control", style:"width:inherid",placeholder: "Buscar")  
	    	array << select_tag(:sort ,options_for_select(columnas,params[:sort]), class: "form-control",style: "width:100px;")
	        array << submit_tag("Buscar",class: 'btn btn-default btn-sm', :name => nil)  
	        array.join.html_safe
	    end 
    end 
  end 

  def table_head(titulos)
  	content_tag :thead do |head|
  		content_tag :tr do |tr|
  			contenido = []
				titulos.each do |titulo|
					contenido.append(content_tag(:th,titulo[:title]))
				end 
  			contenido.join.html_safe 
  		end 
  	end 
  end 



end
