class CreateSpaces < ActiveRecord::Migration[6.1]
  def change
    create_table :spaces do |t|
      t.string :title
      t.string :size
      t.text :description
      t.string :img_url

      t.timestamps
    end
  end
end
