class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(safe_param)
    @comment.save
    redirect_to article_path(@article)
  end






  def safe_param
    params.require(:comment).permit(:message, :email)
  end

end
