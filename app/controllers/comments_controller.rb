class CommentsController < ApplicationController
    def create
      @place = Place.find(params[:place_id])
      @comment = Comment.new(comment_params)
       if @comment.save
        ActionCable.server.broadcast 'comment_channel', { content: @comment, user_name: @comment.user.nickname }
       end
    end
  
    private
      def comment_params
        params.require(:comment).permit(:text).merge(user_id: current_user.id, place_id: params[:place_id])
      end
end
