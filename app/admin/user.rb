ActiveAdmin.register User do
  permit_params :email, :name, :admin

  form do |f|
    f.inputs 'Identity' do
      f.input :name
      f.input :email
    end
    f.inputs 'Admin' do
      f.input :admin
    end
    f.actions
  end

  index do
    selectable_column
    column :id
    column :email
    column :name
    column :created_at
    column :admin
    actions
  end
end
