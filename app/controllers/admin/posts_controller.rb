class Admin::PostsController < Admin::BaseController
  
  before_action :set_post, only: [
    :edit,
    :update,
    :destroy
  ]
  
  
  def dashboard
    @published_post_count = Post.published.count
    @draft_post_count = Post.drafted.count
  end
  
  def index
    @posts = Post.published.page(params[:page]).per(50)
  end
  
  def drafts
    @posts = Post.drafted.page(params[:page]).per(50)    
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to admin_posts_dashboard_path, notice: "Nuevo mensaje publicado."
    else
      flash[:alert] = "Mensaje no publicado."
      render :new
    end
  end

  def edit
  end

  def update
    @post.slug = nil
    if @post.update(post_params)
      redirect_to admin_posts_dashboard_path, notice: "Mensaje correctamente editado."
    else
      flash[:alert] = "El mensaje no ha sido editado."
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to admin_posts_path, notice: "El mensaje ha sido eliminado."
  end
  
  
  private
  
  def set_post
    @post = Post.friendly.find(params[:id])
  end
  
  def post_params
    params.require(:post).permit(
    :title,
    :content_md,
    :draft,
    :updated_at
    )
  end
  
  
end
