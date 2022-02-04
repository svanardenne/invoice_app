class InvoicesController < ApplicationController
  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = Invoice.new(invoice_params)
    if @invoice.save
      flash[:success] = 'Invoice Created!'
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  private

  def invoice_params
    params.require(:invoice).permit(:from_full_name,
                                    :from_email,
                                    :from_phone,
                                    :from_address,
                                    :from_country,
                                    :from_province,
                                    :from_postal_code,
                                    :from_notes,
                                    :to_full_name,
                                    :to_email,
                                    :to_phone,
                                    :to_address,
                                    :to_country,
                                    :to_province,
                                    :to_postal_code,
                                    :to_notes,
                                    :status)
  end
end
