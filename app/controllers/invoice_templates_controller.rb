class InvoiceTemplatesController < ApplicationController
  def new
    @invoice_template = InvoiceTemplate.new
  end
end
