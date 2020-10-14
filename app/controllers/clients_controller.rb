class ClientsController < ApplicationController
    before_action :set_client, only: [:show, :update, :destroy]

    # GET /clients
    def index
        @clients = Client.all
        json_response(@clients)
    end

    # POST /clients
    def create
        @client = Client.create!(client_params)
        json_response(@client, :created)
    end

    # GET /clients/:id
    def show
        json_response(@client)
    end

    # PUT /clients/:id
    def update
        @client.update(client_params)
        head :no_content
    end

    # DELETE /clients/:id
    def destroy
        @client.destroy
        head :no_content
    end

    private

    def client_params
        # whitelist params
        params.permit(:name, :business_name, :rfc, :id_direction, :cellphone, :telephone, :email)
    end

    def set_client
        @client = Client.find(params[:id])
    end
end
