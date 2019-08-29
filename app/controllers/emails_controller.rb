class EmailsController < ApplicationController
  
  def index
    @emails = Email.all
  end

  def show
  end

  def new

  end

  def create
    @email = Email.new(object:Faker::Book.title,
    body:Faker::Lorem.paragraph)
    @email.save
    # flash.now[:success] = "Mail envoyé!"
    respond_to do |format|
      format.html { redirect_to root_path}
      format.js { }
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
