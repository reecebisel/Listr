class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show
    @categories = List.find(params[:id]).categories.all
    @users = List.find(params[:id]).users.all
  end

  def new
    @list = List.new
  end

  def edit
  end

  def create
    list_attr = list_params.clone
    list_attr[:user_ids] = [params[:list][:user_ids], current_user.id]
    @list = List.new(list_attr)
    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'List was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    list_attr = list_params.clone
    list_attr[:user_ids] = [params[:list][:user_ids], current_user.id]

    respond_to do |format|
      if @list.update(list_attr)
        format.html { redirect_to @list, notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_url, notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:title, :description, :user_ids, category_ids: [])
    end
end
