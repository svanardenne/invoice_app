module InvoicesHelper
  def to_field(field)
    unless current_user.profile.current_template.nil?
      current_user.invoice_templates[current_user.profile.current_template - 1][field]
    end
  end
end
