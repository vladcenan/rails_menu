class Menu 
  include HTTParty 
  ENV["FOOD2FORK_KEY"] = '83a68d71762d61bc96b9e528297679f0'
			 
  base_uri 'http://food2fork.com/api'
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json
  
  def self.for term
    get("/search", query: {q: term})["recipes"]
  end
end
