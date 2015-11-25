class FormController < ApplicationController
  def index
    @hoges = Hoge.all
    @foos = Foo.all
  end

  def new
    @hoge = Hoge.new
    @foo = @hoge.foos.build
  end

  def create
    @hoge = Hoge.new(hoge_params)
    unless @hoge.save
      render :new
    end
    redirect_to form_index_path, notice: '登録しました'
  end
  
  private

  def hoge_params
    params[:hoge].permit(:name, foos_attributes: [:name])
  end
end
