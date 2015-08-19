class Person < ActiveRecord::Base
  belongs_to :organisation

  validates_presence_of :first_name, :last_name, :organisation

  def self.people_and_organisation
    Person.joins(:organisation)
  end

  def self.search(conditions)
    if conditions.empty?
      Person.joins(:organisation)
    else
      # if conditions.try(:[], :title)
      #   Person.joins(:organisation).where('lower(organisations.title) like ?', conditions[:title])
      # else
        where = ''
        conditions.each do |key, value|
          where+= ' or ' unless where.empty?
          if key == :title
            where+= "lower(organisations.title) like :#{key}"
          else
            where+= "lower(#{key.to_s}) like :#{key}"
          end
        end

        p ">>>>>>>>>>>>>>>>>> where #{where}  LLLLLL"
        Person
        .joins(:organisation)
        .where(where,conditions)
      # end
    end
  end

end
