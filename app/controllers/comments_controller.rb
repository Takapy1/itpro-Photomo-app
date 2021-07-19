class CommentsController < ApplicationController
  # before_action :set_comment, only: %i[ show edit update destroy ]

  # GET /comments or /comments.json
  # def index
  #   @comments = Comment.all
  # end

  # GET /comments/1 or /comments/1.json
  # def show
  # end

  # GET /comments/new
  # def new
  #   @comment = Comment.new
  # end

  # GET /comments/1/edit
  # def edit
  # end

  # POST /comments or /comments.json
  def create
    @comment = Comment.new(comment_params)
    @comment.photo_id = params[:photo_id]
    @comment.viewer_id = current_user.id
    
    if @comment.save
      redirect_to request.referer
    else
      @photo = @comment.photo
      @comments = @photo.comments
      render "photos/show"
    end


    # respond_to do |format|
    #   if @comment.save
    #     format.html { redirect_to @comment, notice: "Comment was successfully created." }
    #     format.json { render :show, status: :created, location: @comment }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @comment.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    Comment.find_by(id: params[:id], photo_id: params[:photo_id]).destroy
    respond_to do |format|
      format.html { redirect_to photo_url(params[:photo_id]) }
      format.json { head :no_content }
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  # def update
  #   respond_to do |format|
  #     if @comment.update(comment_params)
  #       format.html { redirect_to @comment, notice: "Comment was successfully updated." }
  #       format.json { render :show, status: :ok, location: @comment }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @comment.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:content)
    end
end
