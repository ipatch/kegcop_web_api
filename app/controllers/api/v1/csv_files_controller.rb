class API::V1::CsvFilesController < ApplicationController
  
  # see http://stackoverflow.com/questions/15040964/ for explanation
  skip_before_filter :verify_authenticity_token

  # before_filter only: [:create, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    render json: CsvFile.all
  end

  def show
    begin
      # @csv_file = CsvFile.find(params[:id])
      @csv_file = CsvFile.find_by_id(params[:csv_file_id])
      if @csv_file.nil?
        # puts " !not found for csv_file id#{@csv_file.id}"
      # add a conditional block to catch for,
      #...`ActiveRecord::RecordNotFound`
        # do something
        # csv_file = nil
        respond_to do | format |
          format.html { render(:file => File.join(Rails.root, 'public/404.html'), :status => 404, :layout => false) }
          # format.js { render json: @csv_file }
          format.json { render json: @csv_file, :status => 404 }
        end
      else
        redirect_to CsvFile.find(params[:id]).csv_file_url
        # render json: CsvFile.find(params[:id]).csv_file_url
        # test to see if cap is deleting files when deploying.
      end
    end
  end

  def new
      # @article = Article.new
    @csv_file = CsvFile.new
		# end
  end
  
  # POST /csv_files.json
  def create
		@csv_file = CsvFile.new(csv_file_params)
		# set the user_id in the controller not the form.
		# @article.user_id = current_user.id if current_user

		if @csv_file.save
      # redirect_to @article
      render json: @csv_file, 
      meta: { status: 201,
      message: "201 Created"},
      root: "csv_file"
		else
			render json: { error: "file can't be uploaded"}
		end
	end



  # POST /csv_files.json
  # def create
  #   render text: csv_params
  #   # binding.pry
  #   # @csv_file = CsvFile.new(csv_params)
  #   # if @csv_file.save
  #   #   # binding.pry
  #   #   render json: @csv_file, 
  #   #     meta: { status: 201,
  #   #       message: "201 Created"},
  #   #       root: "csv_file"
  #   # else
  #   #   render json: { error: "file can't be uploaded"}
  #   # end
  # end

  def edit
    @csv_file = CsvFile.find(params[:id])
    respond_to do |format|
      format.html { 
        render html:'edit' 
      }
      format.json { 
        render json:@csv_file.as_json(only: [:id])
      }
    end
  end

  def update
    respond_to do |format|
      if @csv_file.update(csv_params)
        format.html { redirect_to @csv_file, notice: 'csv file was updated.'}
        format.json { render :show}
      else
        format.html { render action: 'edit' }
        format.json { render json: @csv_file.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /csv_files/1
  # DELETE /csv_files/1.json
  def destroy
    @csv_file = CsvFile.find(params[:id])
    @csv_file.destroy
    redirect_to action: "index"
	end

  private

  def csv_file_params
    # def article_params
		# 	params.require(:article).permit(:title, :text, :slug, :meta_description)
		# end

    # binding.pry
    # params.require(:csv_file).permit(:csv_file_id, :csv_file_filename, :csv_file_content_type, :remove_csv_file)
    # params.permit(:csv_file_id, :csv_file_filename, :csv_file_content_type)
    
    # params.permit(:csv_file, options: [:csv_file_id, :csv_file_filename, :csv_file_content_type])

    # params.require(:csv_file).permit(:id, :csv_file_id, :csv_file_filename, :csv_file_content_type)

  
		params.require(:csv_file).permit(:csv_file_id, :csv_file_filename, :csv_file_content_type)
  end
end
