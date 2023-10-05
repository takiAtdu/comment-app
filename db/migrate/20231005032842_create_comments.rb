class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :comment
      t.string :highlighted_text
      t.integer :start_offset
      t.integer :end_offset
      t.integer :text_id

      t.timestamps
    end
  end
end
