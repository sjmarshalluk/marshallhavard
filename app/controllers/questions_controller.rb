class QuestionsController < ApplicationController

before_action :require_user

def index
	@questions = Question.all
end

def new
	@question = Question.new
end

def create
	@question = Question.new(question_params)
	if @question.save
		flash[:success] = "That saved"
		redirect_to questions_path
	else
		flash[:error] = "Something went wrong"
		render :new
	end
end

def show
  @question = Question.find(params[:id])
	render :layout => 'plain.html.erb'
end

def edit
  @question = Question.find(params[:id])
end

def update
  @question = Question.find(params[:id])
  if @question.update(question_params)
    flash[:success] = "Changes saved"
    redirect_to questions_path
  else
    flash[:error] = "Nope"
    render :new
  end
end

def destroy
  @question = Question.find(params[:id])
  @question.delete
  flash[:success] = "Deleted"
  redirect_to questions_path
end


private

def question_params
	params.require(:question).permit(
		:question,
		:answer,
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
