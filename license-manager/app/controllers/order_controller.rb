class OrderController < ApplicationController
  scaffold :order
  
  before_filter :login_required

  def new
    @order=Order.new
    @company=Company.find(params[:id])
    @order.company=@company
  end
  
  def create
    @order = Company.find(params[:id]).orders.create(params[:order])
    redirect_to :controller => 'company', :action => 'show', :id => @order.company
  end
  
#  def list
#    redirect_to :controller => "company", :action => "show", :id => @order.company
#    redirect_to :controller => "company", :action => "show", :id => @order.company
#  end
end
