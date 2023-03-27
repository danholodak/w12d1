# == Schema Information
#
# Table name: pokemons
#
#  id         :bigint           not null, primary key
#  number     :integer          not null
#  name       :string           not null
#  attack     :integer          not null
#  defense    :integer          not null
#  poke_type  :string           not null
#  image_url  :string           not null
#  captured   :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Pokemon < ApplicationRecord
    validates :number, :name, :attack, :defense, :poke_type, :image_url, presence: true
    validates :captured, inclusion: [true, false]

    validates :name, length: {in: 3..255}, uniqueness: {message: "'%{value}' is already in use"}
    validates :number, uniqueness: {message: "'%{value}' is already in use"}
    validates :attack, :defense, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100, message: "should be between 0 and 100" }
    validates :number, numericality: {greater_than: 0, message: "should be greater than 0"}

    




end
