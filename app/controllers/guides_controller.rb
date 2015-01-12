class GuidesController < ApplicationController


def index
	@guides = Guide.all
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



private

def guide_params
	params.require(:guide).permit(
		:title,
		:body,
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
