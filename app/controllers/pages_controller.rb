class PagesController < ApplicationController

def index
	@guide = Guide.all
	@guides = Guide.all
	@question = Question.all
	@questions = Question.all
	@service = Service.all
	@services = Service.all
end

end
