class API::V1::CsvFilesController < ApplicationController
  
  # see http://stackoverflow.com/questions/15040964/ for explanation
  skip_before_filter :verify_authenticity_token

  # validate :csv_extension

  def index
    @csv_files = CsvFile.all
    if @csv_files
      render json: @csv_files,
        # each_serializer: PictureSerializer,
        root: "csv_files"
    else
      @error = Error.new(text: "404 Not found",
                          status: 404,
                          url: request.url,
                          method: request.method)
      render json: @error.serializer
    end 
  end

  def show
    if @csv_file
      render json: @csv_file,
              # serializer: PictureSerializer,
              root: "csv_file"
    else
      # @error = Error.new(text: "404 Not found",
      #                     status: 404,
      #                     url: request.url,
      #                     method: request.method)
      # render json: @error.serializer
      render json: { error: "file can't be found :'("}
    end
  end

  # POST /csv_files.json
  def create
    # binding.pry
    @csv_file = CsvFile.new(csv_params)

    if @csv_file.save

      # binding.pry
      render json: @csv_file,
        # serializer: PictureSerializer, 
        meta: { status: 201,
          message: "201 Created"},
          root: "csv_file"
    else
      render json: { error: "file can't be uploaded"}
      # @error = Error.new(text: "500 Server Error",
      #   status: 500,
      #   url: request.url,
      #   method: request.method)
      # render :json => @error.serializer
    end
  end

  def update
  end

  def delete
  end

  private

  def csv_params
    # binding.pry
    params.permit(:csv_file, :csv_file_filename, :csv_file_id, :csv_file_content_type) # 
    # params.require(:csv_file).permit(:tempfile,:original_filename,:content_type,:headers)
    # params.require(:csv_file).permit(:csv_files)
    # params.permit(:csv_files)
  end
end
