################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise Hashes
#
#
################################################################################

# 1. create a hash named states comprised of three state names, including New South Wales, and their abbreviations

states = {
    "New South Wales" => "NSW",
    "Victoria" => "VIC",
    "Tasmania" => "TAS"
}

# 2. create second hash named request using url and ip as key names

# request = {
#     :url => "http://google.com",
#     :ip => "8.8.8.8"
# }

request = { url: "http://google.com", ip: "8.8.8.8" }


# 3. display the url in the request hash
puts request[:url]

# 4. display the abbreviation for New South Wales
puts states['New South Wales']

# 5. display whether the states hash contains the abbreviation NSW
puts states.has_value?('NSW')