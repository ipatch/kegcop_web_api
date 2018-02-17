class API::V1::CsvFilesController < ApplicationController
  
  # see http://stackoverflow.com/questions/15040964/ for explanation
  skip_before_filter :verify_authenticity_token

  def index
    render json: CsvFile.all
  end

  def show
    @csv_file = CsvFile.find(params[:id])
      redirect_to CsvFile.find(params[:id]).csv_file_url
      # render json: CsvFile.find(params[:id]).csv_file_url
      # test to see if cap is deleting files when deploying.
  end

  # POST /csv_files.json
  def create
    # binding.pry
    @csv_file = CsvFile.new(csv_params)
    if @csv_file.save
      # binding.pry
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
    redirect_to csv_files_path
	end

  private

  def csv_params
    # binding.pry
    params.permit(:csv_file, :remove_csv_file)
  end
end
