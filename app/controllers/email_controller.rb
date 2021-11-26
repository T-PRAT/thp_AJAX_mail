class EmailController < ApplicationController
  def index
    @emails = Email.all
  end

  def create
    @email = Email.create(object: Faker::Lorem.sentence(word_count: 4), content: Faker::Lorem.paragraph, author: Faker::Name.first_name, receiver: Faker::Name.first_name)
    respond_to do |format|
      format.html {redirect_to root_path}
      format.js {}
    end
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html {redirect_to root_path}
      format.js {}
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
  end
end
