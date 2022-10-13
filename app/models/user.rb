class User < ApplicationRecord

    def full_name
        first_name+" "+last_name
    end

    def us_name
        "#{last_name} #{first_name}"
    end

    def full_address
        "#{house_no} #{block} #{area} #{city}, #{country}"
    end

    def self.falana_name
        return 'hELLO'
    end
end
