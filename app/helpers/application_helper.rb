module ApplicationHelper
	def nav_item(name, path)
    content_tag 'li', class: (current_page?(path) ? 'active' : nil) do 
    	link_to name,path 
    end
  end

  def pluralize_sk(count, singular, plural_1, plural_2)
  	#count.to_s + "" + plural_1

  	case count
      when 0
      	"#{count} #{plural_1}"
  	  when 2..4
  	  	"#{count} #{plural_2}"
  	  when 1
  	  	"#{count} #{singular}"
  	  else
  	  	"#{count} #{plural_1}"
  	  end

  end

end
