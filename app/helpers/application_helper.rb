module ApplicationHelper
  def full_title(title)
    full_title = ''
    full_title = if title
                   "#{title} | Invoice App"
                 else
                   'Invoice App'
                 end
    full_title
  end
end
