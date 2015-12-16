class GuidesController < ApplicationController
before_action :require_user


def index
	@guides = Guide.all
  	@client = Client.find(params[:client_id])
end

def new
	@guide = Guide.new
end

def create
	@guide = Guide.new(guide_params)
	if @guide.save
		flash[:success] = "That saved"
		redirect_to root_path
	else
		flash[:error] = "Something went wrong"
		render :new
	end
end

def show
  @guides = Guide.all
  @guide = Guide.find(params[:id])
end

def edit
  @guide = Guide.find(params[:id])
end

def update
  @guide = Guide.find(params[:id])
  if @guide.update(guide_params)
  	flash[:success] = "Changes saved"
    redirect_to root_path
  else
    flash[:error] = "Nope"
    render :new
  end
end

def destroy
  @guide = Guide.find(params[:id])
  @guide.delete
  flash[:success] = "Deleted"
  redirect_to root_path
end








private

def guide_params
	params.require(:guide).permit(
		:title,
		:body,
		:summary,
		:starting_out,
		:self_employed,
		:limited_company,
		:CIS_subcontractor,
		:seafarer,
		:renting_or_sold_property,
		:self_assesment,
		:overseas,
		:particular_tax_advice,
		:employed,
		:client_ids => []
	)
end


end
