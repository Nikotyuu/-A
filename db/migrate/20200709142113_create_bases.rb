class CreateBases < ActiveRecord::Migration[5.1]
  def change
    create_table :bases do |t|
      t.string :name
      t.string :base_id
      t.string :attendance

      t.timestamps
    end
  end
end
