module InvoicesHelper
  def to_field(field)
    if current_user.invoice_templates.any? && !current_user.profile.current_template.nil?
      InvoiceTemplate.find_by(id: current_user.profile.current_template)[field]
    else
      ''
    end
  end
end
