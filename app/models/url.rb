class Url < ApplicationRecord

  def full
    "#{BASEURL}/u/#{short_url}"
  end
end
