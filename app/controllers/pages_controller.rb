class PagesController < ApplicationController

def index
  	render :layout => 'home.html.erb'
	@guide = Guide.all
	@guides = Guide.all
	@question = Question.all
	@questions = Question.all
	@service = Service.all
	@services = Service.all
end

def advice
  	@clients = Client.all
end

def team

end

def about

end

def contact

end

def summary
	
	@guide = Guide.all
	@guides = Guide.all
	@question = Question.all
	@questions = Question.all
	@service = Service.all
	@services = Service.all

end

def big_menu
  render :layout => 'plain.html.erb'
end
	
end
