class API::V1::CsvFilesController < ApplicationController
  
  # see http://stackoverflow.com/questions/15040964/ for explanation
  skip_before_filter :verify_authenticity_token

  respond_to :html, :json

  def index
    # render json: CsvFile.all
    # render json: @csv_file = CsvFile.all
    # render json: @csv_file = CsvFile.order('created_at')
    render json: CsvFile.all
  end

  def show

    # @csv_file = CsvFile.find_by_id(params[:id])
    # if @csv_file.nil?
    #   respond_to do | format |
    #     format.html { render(:file => File.join(Rails.root, 'public/404.html'), :status => 404, :layout => false) }
    #     format.json { render json: @csv_file, :status => 404 }
    #   end
    # else
		  # respond_to do |format|
			#   format.html # show.html.erb
      #   format.json { render json: @csv_file }
      # end
      # redirect_to = CsvFile.find(params[:id]).csv_file_url

      


      # GET /attachments/:token/:backend_name/:processor_name/*args/:id/:filename

      # @csv_file = CsvFile.find(params[:id])

      # url = Refile.(Refile.store.get(params[:id]), filename: @csv_file.csv_file_filename)

      # @url = @csv_file.csv_file_url

      # puts "#{@url}"

      # path = @csv_file.file.backend.path(@csv_file_id)

      # path = @csv_file.backend.path(@csv_file_id)

      # path = open(@csv_file.csv_file_url)

      # path = open(@csv_file.url)

      # filename = @csv_file.csv_file_filename

      # type = @csv_file.csv_file_content_type

      # @file = open(@download.csv_file_url)

      # send_file url, :type => 'text/csv', :disposition => 'attachment'

      # send_file( @file, :filename => File.basename(@download.file.file.filename.to_s))


      # send_file @url, disposition: 'attachment', type: 'text/csv', filename: filename

      # send_file file_path(@csv_file, :csv_file), disposition: 'attachment', type: 'text/csv', filename: filename

    #   file_path =
    # Refile.attachment_url(object_id, :file, filename: object.csv_file_filename)

    @csv_file = CsvFile.find_by_id(params[:id])

    # csv_file_download_path = @csv_file.csv_file_url

    file_id = CsvFile.find(params[:id])

    # download = CsvFile.find(params[:id])

    # path = open("#{csv_file_download_path}" + "#{file_id}")
    

    # path = open("#{Rails.root}/public" + "#{download}" + "#{Refile.attachment_url}")

    send_file path,
    disposition: 'attachment', type: 'text/csv', filename: csv_file_filename


      # send_file '/path/to/file', :type => 'image/jpeg', :disposition => 'attachment'
    # end
  end

  # def file_path
  #   Refile.attachment_url(object, :file, filename: object.csv_file_filename)
  # end


    # @csv_file = CsvFile.find_by_id(params[:id])
    # if @csv_file.nil?
    #   respond_to do | format |
    #     format.html { render(:file => File.join(Rails.root, 'public/404.html'), :status => 404, :layout => false) }
    #     # format.js { render json: @csv_file }
    #     format.json { render json: @csv_file, :status => 404 }
    #   end
    # else
      # redirect_to CsvFile.find_by_id(params [:csv_file_id]).csv_file_url
      
      # @csv_file.csv_file_url
      
      # redirect_to CsvFile.find(params[:id]).csv_file_url

      # render json: @csv_file = CsvFile.find_by_id(params[:id]).csv_file_url
      
      # render json: CsvFile.find(params[:id]).csv_file_url
      
      # test to see if cap is deleting files when deploying.


  def new
    @csv_file = CsvFile.new
  end
  
  # POST /csv_files.json
  def create
		@csv_file = CsvFile.new(csv_file_params)

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
      # params.permit(:csv_file)
      # params.require(:article).permit(:title, :text, :slug, :meta_description)
      # params.require(:csv_file).permit(:csv_file)
      params.require(:csv_file)
    end
end
