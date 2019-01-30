class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.text :pins_name
      t.text :url
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
