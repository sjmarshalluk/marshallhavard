class ServicesController < ApplicationController

before_action :require_user


def index
	@services = Service.all
end

def new
	@service = Service.new
end

def create
	@service = Service.new(service_params)
	if @service.save
		flash[:success] = "That saved"
		redirect_to root_path
	else
		flash[:error] = "Something went wrong"
		render :new
	end
end

def show
  	@service = Service.find(params[:id])
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    if @service.update(service_params)
      flash[:success] = "Changes saved"
      redirect_to root_path
    else
      flash[:error] = "Nope"
      render :new
    end
  end



private

def service_params
	params.require(:service).permit(
		:name,
		:description,
		:starting_out,
		:self_employed,
		:limited_company,
		:CIS_subcontractor,
		:seafarer,
		:renting_or_sold_property,
		:self_assesment,
		:overseas,
		:particular_tax_advice,
		:employed
	)
end


end
