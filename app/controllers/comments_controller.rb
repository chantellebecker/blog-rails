class CommentsController < ApplicationController
	def create
		@comment = Comment.create(comment_params)
		respond_to do |format|
			if @comment.save
				format.html{redirect_to blog_post_path(@comment.blog_post_id), notice: 'Comment was successfully created.'}
			else
				format.html{redirect_to blog_post_path}
			end
		end
	end

	def edit
		@blog_post = BlogPost.find(params[:blog_post_id])
		@comment = Comment.find(params[:id])
	end

	def update
		@comment = Comment.find(params[:id])
		respond_to do |format|
			if @comment.update(comment_params)
				format.html{redirect_to blog_post_path(@comment.blog_post_id), notice: 'Comment was successfully updated.'}

			else
				format.html{redirect_to blog_post_path}
			end
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		respond_to do |format|
			format.html{redirect_to blog_post_path(@comment.blog_post), notice: 'Comment was successfully destroyed.'}
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:author, :datetime, :comment_entry, :blog_post_id)
	end
end

