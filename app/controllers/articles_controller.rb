class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show edit update destroy ]

  # GET /articles or /articles.json
  def index
    if params[:query].present?

      # Convert the params to a array.
      # then Loop into the whole search table and convert each row into an array and compare it with the params array.
      # If the params array includes the row array then it will be added update the rows array
      # elese, save the new params array into the search table.

      # params_array = params[:query].split(" ")
      # rows = []
      # Search.all.each do |row|
      #   row_array = row.input.split(" ")
      #   if params_array.include?(row_array)
      #     rows << row
      #   else
      #     Search.create(input: params[:query])
      #   end
      # end








      # @articles = Search.find_by(input: params[:query].strip)
      # if @articles.present?
      #   sleep(1)
      #   @articles.update_attributes(input: params[:query].strip)
      #   # if params[:query].strip.length > 5
      #   #   Search.create(input: params[:query].strip)
      #   # end
      # else
      #   sleep(1)
      #   if params[:query].strip.length > 5
      #     Search.create(input: params[:query].strip)
      #   end
      # end
     

    else
      @articles = Article.all
    end
  end

  # GET /articles/1 or /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles or /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to article_url(@article), notice: "Article was successfully created." }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to article_url(@article), notice: "Article was successfully updated." }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url, notice: "Article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:title, :content)
    end

end
