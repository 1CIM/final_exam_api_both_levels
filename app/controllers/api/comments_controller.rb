class Api::CommentsController < ApplicationController
  def create
    comment = Comment.create(params.permit(:article_id, :body))
    if comment.persisted?
      render json: { message: 'Nice comment bro' }, status: 201
    else
      render json: { error_message: 'No empty comments bro!' }, status: 422
    end
  end
end
