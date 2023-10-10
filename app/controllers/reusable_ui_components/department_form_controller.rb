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
      puts "Inside get graph data---------------"
      url = params[:url]
      access_token = params[:access_token]
      data = []
      response = HTTParty.get(url, headers: { "Authorization" => "Bearer #{access_token}" })
      if response.success?
        data = JSON.parse(response.body)["value"]
      end

      respond_to do |f|
        f.json { render json: data }
      end
    end

    def fetch_all_data(link, token)
      allData = []
  
      response = HTTParty.get(link, headers: { "Authorization" => "Bearer #{token}" })
      resp_body = JSON.parse(response.body)
      allData = resp_body["value"]
      next_link = resp_body["@odata.nextLink"]
  
      if next_link.present?
        while next_link
          data = HTTParty.get(next_link, headers: { "Authorization" => "Bearer #{token}" })
          body_data = JSON.parse(data.body)
          vals = body_data["value"]
          vals.each do |v|
            allData << v
          end
          next_link = body_data["@odata.nextLink"]
        end
      end

      
      respond_to do |f|
        f.json { render json: allData }
      end
    end
  end
end
