class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map { |actor| actor }
  end

  def locations
    self.auditions.map { |actor| actor.location }
  end

  def lead
    self.auditions.each do |actor|
      if actor.hired
        return actor
      end
    end

    'no actor has been hired for this role'
  end

  def understudy
    count = 0
    self.auditions.each do |actor|
      if actor.hired
        count += 1
        if count == 2
          return actor
        end
      end
    end

    'no actor has been hired for this role'
  end
end