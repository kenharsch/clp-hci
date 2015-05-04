class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all.order('name')
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @posts = Post.where(:user_id=>@user.id)
    @evaluations = Evaluation.where(:user_id=>@user.id).order('user_rank ASC')
    
    ordered = true
    rank = 1
    @evaluations.each do |eval|
      if eval.post.ta_rank.nil?
        ordered = false

      elsif eval.post.ta_rank - rank < 0
        ordered = false
        rank = eval.post.ta_rank
      else
        rank = eval.post.ta_rank
      end
    end
    
    @delta = 0

    if ordered == false
      delta = 0
      abs_rank = 1
      prev_rank = 1
      @evaluations.each do |evaluation|
        if evaluation.post.ta_rank.nil?
          delta += 0
        elsif evaluation.post.ta_rank == prev_rank 
          delta += 0
        elsif evaluation.post.ta_rank == abs_rank
          delta += 0
        else
          delta += (evaluation.post.ta_rank - abs_rank).abs
        end
        abs_rank += 1
        prev_rank = evaluation.post.ta_rank
      end
     @delta = delta
   end

  end


  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
  
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :nickname, :email, :image_url, :password, :posts, :group_id, :optout)
    end
end
