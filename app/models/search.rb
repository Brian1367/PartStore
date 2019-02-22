class Search < ApplicationRecord
  Search = Car.select("column1, column2, column3")
  Search = Search.joins(:part)
  Search = Search.where(:column1 => true && :column2 => true && :column3 +> true)
end
