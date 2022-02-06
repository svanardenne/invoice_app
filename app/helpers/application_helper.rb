module ApplicationHelper
  # Returns the full title on a per-page basis
  def full_title(page_title = '')
    base_title = 'Invoice App'
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  # Creates active sladd onlinks if the page is correct
  def current_class?(test_path)
    return 'active' if request.path == test_path

    ''
  end
end
