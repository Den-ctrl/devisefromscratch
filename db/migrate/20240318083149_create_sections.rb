class CreateSections < ActiveRecord::Migration[7.1]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :short_name

      t.timestamps
    end
  end
end
