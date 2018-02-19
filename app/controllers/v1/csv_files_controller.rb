# app/controllers/v1/csv_files_ocontroller.rb
module V1
  class CsvFilesController < ApplicationController

    skip_before_action :verify_authenticity_token

    respond_to :html, :json
    
    def index
      @csv_files = CsvFile.all
      # respond_with(@csv_files)
      json_response(@csv_files)
    end

    # POST /csv_files.json
    def create
      csv_file = CsvFile.new
      csv_file.csv_file = params[:csv_file]
      csv_file.save
      render :text => "Ok"
    end

    def json_response(object, status = :ok)
      render json: object, status: status
    end

    private
      # def csv_file_params
      #   params.permit(:csv_file)
      # end
end
