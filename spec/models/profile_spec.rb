require "rails_helper"

RSpec.describe Profile, :type => :model do
  it 'has class of Profile'
  it 'orders by name' do
    chloe = Profile.create!(name: 'Chloe', gender: 'female', breed: 'German Shepard', city: 'Tucson', state: 'Arizona', age: 15, pro_pic: 'rayban.jpg', description: 'test', user_id: 1)
    charlie = Profile.create!(name: 'Chloe', gender: 'female', breed: 'German Shepard', city: 'Tucson', state: 'Arizona', age: 15, pro_pic: 'rayban.jpg', description: 'test', user_id: 1)

    expect(Profile.ordered_by_name).to eq([charlie, chloe])
    expect(Profile.count).to eq 2
  end
end
# id                     | integer                     | not null default nextval('users_id_seq'::regclass)
# email                  | character varying           | not null default ''::character varying
# encrypted_password     | character varying           | not null default ''::character varying
# reset_password_token   | character varying           |
# reset_password_sent_at | timestamp without time zone |
# remember_created_at    | timestamp without time zone |
# sign_in_count          | integer                     | not null default 0
# current_sign_in_at     | timestamp without time zone |
# last_sign_in_at        | timestamp without time zone |
# current_sign_in_ip     | inet                        |
# last_sign_in_ip        | inet                        |
# created_at             | timestamp without time zone | not null
# updated_at             | timestamp without time zone | not null
