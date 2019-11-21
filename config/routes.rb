Rails.application.routes.draw do
  # # メモ一覧取得
  # get 'memos' , to: 'memos#index'

  # # 新規メモ作成
  # post 'memos/:id' , to: 'memos#create'
  # # 既存メモ更新
  # put 'memos/:id' , to: 'memos#update'
  # # メモ詳細取得
  # get 'memos/:id' , to: 'memos#show'
  # # メモ削除
  # delete 'meos/:id' , to: 'memos#destroy'

  # resources :memos, only: %i(index create update show destroy) do
  #   resources :comments, only: %i(index create update show destroy)
  # end

  namespace :api do
    resources :memos do
      resources :comments, only: [:create, :update, :destroy]
    end
end
  # get 'memos/:id/comments' , to: 'comments#index'

  # #コメント一覧取得
  # get 'memos/:id/comments/:id' , to: 'comments#show'
  # # コメント追加
  # post 'memos/:id/comments/:id' , to: 'commments#create'
  # # コメントの更新
  # put 'memos/:id/comments/:id' , to: 'comments#update'
  # # コメントの削除
  # delete 'memos/:id/comments/:id' , to: 'comments#destroy'


end
