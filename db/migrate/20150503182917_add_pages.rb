class AddPages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title, null: false
      t.string :slug, null: false
      t.text :description
      t.integer :parent_page_id
      t.integer :user_id
      t.integer :position
      t.integer :page_template_id
      t.integer :theme_id
      t.boolean :active
      t.integer :symlinked_page_id
      t.boolean :external_link
      t.string :external_link_url
      t.string :external_link_target
      t.integer :package_id
      t.datetime :checked_out_at
      t.datetime :checked_in_at

      t.timestamps null: false
    end
  end
end
