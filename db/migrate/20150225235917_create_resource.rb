class CreateResource < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :organization
      t.integer :max_count
    end
  end
end
