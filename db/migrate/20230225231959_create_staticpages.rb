class CreateStaticpages < ActiveRecord::Migration[7.0]
  def change
    create_table :staticpages do |t|
      t.string :flickr_id

      t.timestamps
    end
  end
end
