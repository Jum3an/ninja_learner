class CheckoutController
 def create
    order = Order.find(params[:id])
    service = CheckoutFacade.new(order: order)
    service.call
    if service.success?
      render json: { success: true }
    else
      render json: { success: false }
    end
  end
end
