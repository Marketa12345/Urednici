class Urednici < ActiveRecord::Base

	ratyrate_rateable "Ochota", "Spolehlivost", "Zkušenosti"

	has_many :reviews

	searchkick

end
