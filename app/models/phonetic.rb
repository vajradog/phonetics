class Phonetic < ActiveRecord::Base
  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug

  def generate_slug
    self.slug ||= word.parameterize
  end

  def to_param
    slug
  end
end
