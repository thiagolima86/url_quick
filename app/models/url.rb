class Url < ApplicationRecord

  def full
    "#{BASEURL}/#{short_url}"
  end
end
