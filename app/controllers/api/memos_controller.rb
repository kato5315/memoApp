module Api
  class MemosController < ApplicationController
    before_action :set_post , only: [:show, :update, :destroy]
    #　メモの一覧
    def index
    allMemo = Memo.all
      render :json => { status: 'SUCCESS', data: allMemo }
    end

    # メモ詳細情報取得
    def show
      render :json => { status: 'SUCCESS', data: @post }
    end

    # メモ削除
    def destroy
      render :json => { status: 'SUCCESS', data: @post }
    end

    # 新規メモ登録
    def create
      post = Post.new(post_params)
        if post.save 
          render :json => { status: 'SUCEESS', data: post } 
        else
          render :json => { status: 'ERROR', data: post }
        end
    end

    # メモ内容更新
    def update
      if @post.update( post_params )
        render :json => { status: 'SUCCESS', data: @post }
      else

      end
        render :json => { status: 'ERROR' , data: @post.errors}
    end

    private 

    def post_params
      params.require(:memo).permit(:id, :title, :body)
    end

    def set_post
      @post = memo.find(params[:id])
    end
  end
end