module RestaurantsHelper

  def self.lookup_boro(boro_key)
    @@boro_hash[boro_key]
  end

  private
    @@boro_hash =
        {1 => "MANHATTAN",
         2 => "THE BRONX",
         3 => "BROOKLYN",
         4 => "QUEENS",
         5 => "STATEN ISLAND"}
end
