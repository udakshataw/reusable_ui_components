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
  end
end
