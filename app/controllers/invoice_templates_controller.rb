class InvoiceTemplatesController < ApplicationController
  def new
    @invoice_template = InvoiceTemplate.new
  end

  def create
    @invoice_template = current_user.invoice_templates.build(invoice_template_params)
    if @invoice_template.save
      flash[:success] = 'Invoice Template Created!'
      redirect_to new_invoice_path
    else
      render 'static_pages/home'
    end
  end

  private

  def invoice_template_params
    params.require(:invoice_template).permit(:to_full_name,
                                             :to_email,
                                             :to_phone,
                                             :to_address,
                                             :to_city,
                                             :to_country,
                                             :to_province,
                                             :to_postal_code,
                                             :notes)
  end
end
