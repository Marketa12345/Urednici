class Urednici < ActiveRecord::Base

	ratyrate_rateable "Ochota", "Spolehlivost", "Zkušenosti"

	has_many :reviews

	#searchkick




def self.search(search)
  if search
    self.where("name like ?", "%#{search}%")
  else
    self.all
  end
end


end
