class CreateSplunks < ActiveRecord::Migration[7.1]
  def change
    create_table :splunks do |t|
      t.string :content

      t.timestamps
    end
  end
end
