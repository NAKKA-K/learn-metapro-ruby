class Entity
  attr_reader :table, :iden

  def initialize(table, ident)
    @table = table
    @ident = ident
    Database.sql "INSERT INTO #{@table} (id) VALUES (#{@ident})"
  end

  def set(col, val)
    Database.sql "UPDATE #{@table} SET #{col}='#{val}' WHERE id=#{@ident}"
  end

  def get(col)
    Database.sql("SELECT #{col} FROM #{@table} WHERE id=#{@ident}")[0][0]
  end
end

# This is a so redundancy code
class Movie < Entity
  def initialize(ident)
    super 'movies', ident
  end

  def title
    get 'title'
  end

  def title=(value)
    set 'title', value
  end

  def director
    get 'director'
  end

  def director=(value)
    set 'director', value
  end
end

movie = Movie.new(1)
movie.title = 'doctor' # use `def title=(value)` method
movie.director = 'stanry' # use `def director=(value)` method
