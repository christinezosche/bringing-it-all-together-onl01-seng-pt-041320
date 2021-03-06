class Dog

    # Remember, you can access your database connection anywhere in this class
    #  with DB[:conn]  
  
    attr_accessor :name, :breed
    attr_reader :id
   
    def initialize(name, breed, id=nil)
      @id = id
      @name = name
      @breed = breed
    end

    def self.create_table
        sql =  <<-SQL 
          CREATE TABLE IF NOT EXISTS dogs (
            id INTEGER PRIMARY KEY, 
            name TEXT, 
            breed TEXT
            )
            SQL
        DB[:conn].execute(sql) 
      end

end