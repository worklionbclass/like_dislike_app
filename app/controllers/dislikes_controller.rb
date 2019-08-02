class DislikesController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        
        dislike = Dislike.find_by(post_id: @post.id, user_id: current_user.id)
        
        if dislike.present?
            dislike.destroy
        else
            Dislike.create(post_id: @post.id, user_id: current_user.id)
        end
        
        redirect_back(fallback_location: root_path)
    end
end
