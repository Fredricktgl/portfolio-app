class CreateWebsites < ActiveRecord::Migration[5.1]
  def change
    create_table :websites do |t|
      t.string :web_url
      t.string :git_url
      t.string :name
      t.string :description
      t.string :tools
      t.string "filepicker_url", default: ""
      t.timestamps
    end
  end
end
