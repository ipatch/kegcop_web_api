# app/controllers/v1/csv_files_controller.rb
module V1
  class CsvFilesController < ApplicationController

    skip_before_action :verify_authenticity_token

    respond_to :html, :json
    
    # GET / csv_files
    def index
      @csv_files = CsvFile.all
      # respond_with(@csv_files)
      json_response(@csv_files)
    end

    # POST /csv_files
    def create
      csv_file = CsvFile.new
      csv_file.csv_file = params[:csv_file]
      csv_file.save
      render :text => "Ok"
    end

    # GET /csv_files/:id
    def show
      json_response(@csv_file)
    end

    # PUT /csv_files/:id
    def update
      @csv_file.update(csv_file_params)
      head :no_content
    end

    # DELETE /csv_files/:id
    def destroy
      @csv_file.destroy
      head :no_content
    end

    # def json_response(object, status = :ok)
    #   render json: object, status: status
    # end

    private
      def csv_file_params
        # whitelist params
        params.permit()
      end

      def set_csv_file
        @csv_file = CsvFile.find(params[:id])
      end
      # def csv_file_params
      #   params.permit(:csv_file)
      # end
  end
end
