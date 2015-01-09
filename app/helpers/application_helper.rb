module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Que Hago Hoy"      
    end
  end
end
