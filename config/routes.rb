# ReusableUiComponents::Engine.routes.draw do
# end

Rails.application.routes.draw do
    namespace :reusable_ui_components do
        get '/', to: 'department_form#index'
        get '/graph_data', to: 'department_form#get_graph_data'
    end
end
