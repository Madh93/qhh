module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Qhh"      
    end
  end
end
