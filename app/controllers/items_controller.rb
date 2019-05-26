class ItemsController < ApplicationController
  
  before_action :find_item, only: [:show, :edit, :update, :destroy]
  
  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new 
  end
  
  def create 
    @item = Item.new(item_params)
    
    if @item.save 
      flash[:success] = "商品が新しく登録されました。"
      redirect_to items_url
    else 
      flash.now[:danger] = "商品の登録に失敗しました。"
      render :new 
    end
  end

  def edit
  end
  
  def update 
    
    if @item.update(item_params)
      flash[:success] = "商品のデータを更新しました。"
      redirect_to item_url(@item)
    else 
      flash[:danger] = "商品のデータの更新に失敗しました。"
      render :edit 
    end 
    
  end 
  
  def destroy 
    @item.destroy 
    flash[:success] = "「#{@item.name}」のデータを削除しました。"
    redirect_to items_url
  end
  
  private 
  
  def find_item
    @item = Item.find(params[:id])
  end 
  
  def item_params
    params.require(:item).permit(:name, :price)
  end
  
  
end