class CreateSuperheros < ActiveRecord::Migration
  def change
    create_table :super_heros do |t|
      t.string :name
      t.string :power
      t.string :biography
      t.integer :team_id
    end
  end
end
