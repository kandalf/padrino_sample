Sequel.migration do
  up do
    create_table :users do
      primary_key :id
      String :name
      String :email
      String :nickname
      String :provider
      String :image
      DateTime :created_at
      DateTime :updated_at
    end
  end

  down do
    drop_table :users
  end
end
