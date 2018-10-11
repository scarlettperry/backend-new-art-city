class EventSerializer < ActiveModel::Serializer
  attributes :id, :api_exhibition_id, :exhibition_name, :exhibition_link, :exhibition_description, :exhibition_media, :date_start, :date_end, :venue_name, :venue_link, :address, :latitude, :longitude, :phone_number, :opening_hour, :closing_hour, :days_closed, :img_url, :is_free

  has_many :user_events
  has_many :users, through: :user_events
  
end
