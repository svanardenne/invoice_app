class InvoicesController < ApplicationController
  before_action :authenticate_user!

  def show
    @invoice = Invoice.find(params[:id])
  end

  def new
    @invoice = Invoice.new
  end

  def create
    @invoice = current_user.invoices.build(invoice_params)
    if @invoice.save
      flash[:success] = 'Invoice Created!'
      redirect_to root_url
    else
      render new_invoice_path
    end
  end

  def edit
    @invoice = Invoice.find(params[:id])
  end

  private

  def invoice_params
    params.require(:invoice).permit(:from_full_name,
                                    :from_email,
                                    :from_phone,
                                    :from_address,
                                    :from_city,
                                    :from_country,
                                    :from_province,
                                    :from_postal_code,
                                    :to_full_name,
                                    :to_email,
                                    :to_phone,
                                    :to_address,
                                    :to_city,
                                    :to_country,
                                    :to_province,
                                    :to_postal_code,
                                    :notes,
                                    :status,
                                    :invoice_number)
  end
end
