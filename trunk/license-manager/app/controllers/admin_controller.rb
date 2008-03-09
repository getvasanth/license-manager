class AdminController < ApplicationController
  def createCompany name,address,group,contact,country,phone,fax,email,status
    @company=Company.new
    @company.name=name
    @company.address=address
    @company.group=group
    @company.contact=contact
    @company.country=country
    @company.phone=phone
    @company.fax=fax
    @company.email=email
    @company.status=status
    @company.save
  end

  def createCompanies
    
    flash[:notice] = "Companies created !"
    redirect_to :action => "index"
  end
end