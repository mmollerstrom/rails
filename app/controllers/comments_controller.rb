class CommentsController < ApplicationController
  def create
    @comments = Comments.create([:message])
end
