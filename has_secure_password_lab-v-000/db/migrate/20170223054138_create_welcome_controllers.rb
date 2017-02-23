class CreateWelcomeControllers < ActiveRecord::Migration
  def change
    create_table :welcome_controllers do |t|

      t.timestamps null: false
    end
  end
end
