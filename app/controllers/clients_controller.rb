class ClientsController < ApplicationController

def index
	@clients = Client.all
end

def new
	@client = Client.new
end

def create
	@client = Client.new(client_params)
	if @client.save
		flash[:success] = "That saved"
		redirect_to clients_path
	else
		flash[:error] = "Something went wrong"
		render :new
	end
end

def show
  @client = Client.find(params[:id])
end

def edit
  @client = Client.find(params[:id])
end

def update
  @client = Client.find(params[:id])
  if @client.update(client_params)
    flash[:success] = "Changes saved"
    redirect_to client_path
  else
    flash[:error] = "Nope"
    render :new
  end
end



private

def client_params
	params.require(:client).permit(
		:title,
		:headline,
		:intro,
		:help_intro,
		:advice_intro,
		:summary
	)
end

end
