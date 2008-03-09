class LicenseController < ApplicationController
  scaffold :license

  before_filter :login_required

  def new
    @license=License.new
    @company=Company.find(params[:id])
    @license.company=@company
  end
  
  def create
    @license = Company.find(params[:id]).licenses.create(params[:license])
    redirect_to :controller => 'company', :action => 'show', :id => @license.company
  end
end
