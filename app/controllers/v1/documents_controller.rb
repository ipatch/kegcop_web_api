module V1
  class DocumentsController < ApplicationController
    before_action :set_document, only: [:show, :edit, :update, :destroy]

    skip_before_action :verify_authenticity_token

    respond_to :html, :json
    
    # GET /documents
    def index
      @documents = Document.all
      json_response(@documents)
    end

    # GET /documents/1
    def show
    end

    # GET /documents/new
    def new
      @document = Document.new
    end

    # GET /documents/1/edit
    def edit
      respond_to do |format|
        format.html {
          render html:'edit'
        }
        format.json {
          json_response(@document)
          # render json:@csv_file.as_json(only: [:id])
        }
      end
    end

    # POST /documents
    def create
      @document = Document.new(document_params)

      if @document.save
        json_response(@document, :created)
      else
        render :new
      end
    end

    # PATCH/PUT /documents/1
    def update
      if @document.update(document_params)
        # redirect_to @document, notice: 'Document was successfully updated.'
        head :no_content
      else
        render :edit
      end
    end

    # DELETE /documents/1
    def destroy
      @document.destroy
      respond_to do |format|
        msg = { status: "ok", message: "Your document has been deleted"}
        format.json { render json: msg }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_document
        @document = Document.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def document_params
        params.permit(:csv_file)
      end
  end
end
