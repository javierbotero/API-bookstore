class ChangeApiKeysColumnAccesToken < ActiveRecord::Migration[6.1]
  def change
    change_table :api_keys do |t|
      t.rename :acces_token, :access_token
    end
  end
end
