class CompanyController < ApplicationController
  scaffold :company

# ORDERS
  def add_order
    @order=Company.find(params[:id]).orders.create(params[:order])
    if request.xhr?
      flash[:notice] = "Commentaire modifié !"
      render(:partial => "order", :locals => { :order => @order } )
    else
      flash[:notice] = "Commentaire ajouté !"
      redirect_to :action => "show", :id => params[:id]
    end
#    flash[:notice] = "Commentaire ajouté !"
#    redirect_to :action => "show", :id => params[:id]
  end

  def remove_order
    @order=Order.find(params[:order_id]);
    @order.destroy
    if request.xhr?
      flash[:notice] = "Order " + params[:order_id] + " removed !"
      render(:partial => "order", :locals => { :order => @order } )
    else
      flash[:notice] = "Order " + params[:order_id] + " removed !"
      redirect_to :action => "show", :id => @order.company
    end    
  end
  
# LICENSES
  def add_license
    @license=Company.find(params[:id]).licenses.create(params[:license])
    flash[:notice] = "License added !"
    if request.xhr?
      render(:partial => "license", :locals => { :license => @license } )
    else
      redirect_to :action => "show", :id => params[:id]
    end
#    flash[:notice] = "Commentaire ajouté !"
#    redirect_to :action => "show", :id => params[:id]
  end

  def remove_license
    @license=License.find(params[:license_id]);
    @license.destroy
    flash[:notice] = "License " + params[:license_id] + " removed !"
    if request.xhr?
      render(:partial => "license", :locals => { :license => @license } )
    else
      redirect_to :action => "show", :id => @license.company
    end    
  end
end
