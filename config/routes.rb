# ReusableUiComponents::Engine.routes.draw do
# end

Rails.application.routes.draw do
    namespace :reusable_ui_components do
        get '/', to: 'department_form#index'
    end
end
