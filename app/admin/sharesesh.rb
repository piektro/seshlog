ActiveAdmin.register Sharesesh do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

actions :index, :create, :update, :destroy, :show

	index do
		id_column
		column :user
		column :created_at
		column :when
		column :where
		column :subject
		actions
	end
end
