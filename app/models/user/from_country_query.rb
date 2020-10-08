class User
  class FromCountryQuery
    attr_reader :country

    def initialize(country)
      @country = country
    end

    def call
      User.where(country: country)
    end
  end
end