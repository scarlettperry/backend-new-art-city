class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :api_exhibition_id
      t.string :exhibition_name
      t.string :exhibition_link
      t.string :exhibition_description
      t.string :exhibition_media, array: true
      t.string :date_start
      t.string :date_end
      t.string :venue_name
      t.string :venue_link
      t.string :address
      t.string :latitude
      t.string :longitude
      t.string :phone_number
      t.string :opening_hour
      t.string :closing_hour
      t.string :days_closed
      t.string :img_url
      t.boolean :is_free

      t.timestamps
    end
  end
end
