require './lib/row'

class Solver
  def solve(puzzle)
#  1) turn text puzzle into domain objects
#    2) try solving
#    3) turn domain objects back to text
  #   26594317
  #  715638942
  #  394721865
  #  163459278
  #  948267153
  #  257813694
  #  531942786
  #  482176539
  #  679395421
    rows = build_rows(puzzle)

    rows.each {|row| row.solve}

    generate_output(row) #from set of rows

  end

  def generate_output(rows)
    rows.collect do |row|
      row.cells.collect { |cell| cell.value}.join
    end.join("\n")
  end


  def build_rows(puzzle)
    #  rows = []

      puzzle.each_line do |line|
        #   26594317
        #markers = line.chars

        row = Row.new
        row.set_values(line.chomp)
        row
        # if marker is not blank,
        # convert the string to integer
        #store that value in the appropriate
        #position/index of row

    markers.each_with_index do |marker, index|
      if marker != "" && marker != "\n"
        puts "Setting #{marker} in position #{index}"
        value = marker.to_i
        row.cells[index].value = value
      end
    end
          #rows << row
    end
  end
end
