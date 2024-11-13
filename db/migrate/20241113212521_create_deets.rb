class CreateDeets < ActiveRecord::Migration[7.1]
  def change
    create_table :deets do |t|
      t.string :content

      t.timestamps
    end
  end
end
