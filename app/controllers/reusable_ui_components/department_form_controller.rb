module ReusableUiComponents
  class DepartmentFormController < ApplicationController
    def index
      @departments = [
        {
          id: 1,
          name: 'Udgama'
        },
        {
          id: 2,
          name: 'Udyamo'
        },
        {
          id: 3,
          name: 'FrontendTest'
        }
      ]
      @tenant_name = "Udgama Software and Systems"

      respond_to do |f|
        f.html { render 'reusable_ui_components/department_form/index' }
      end
    end

    def get_graph_data
      # url = params[:url]
      # access_token = params[:access_token]
      # data = []
      # response = HTTParty.get(url, headers: { "Authorization" => "Bearer #{access_token}" })
      # if response.success?
      #   data = JSON.parse(response.body)["value"]
      # end

      url = params[:url]
      data = []

      if url == "ids"
        data = [1, 2, 3, 4, 5]
      else
        data = ["aa", "bb", "cc"]
      end

      respond_to do |f|
        f.json { render json: data }
      end
    end
  end
end
