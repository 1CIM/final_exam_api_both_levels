class Api::CommentsController < ApplicationController
  def create
    comment = Comment.create(params.permit(:article_id, :body))
    render json: {message: 'Nice comment bro'}, status: 201
  end
end
