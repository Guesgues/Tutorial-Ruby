class Tutorial
  def solution(x)
    str = x.to_s
    num = str.chars.sort.join.reverse!
  end

  def solution_3(a, b, c)
    mnum = [a, b, c].max
    if mnum == a
      i = [2, a].min
      str = 'a' * i
      a -= i
    elsif mnum == b
      i = [2, b].min
      str = 'b' * i
      b -= i
    else
      i = [2, c].min
      str = 'c' * i
      c -= i
    end
    i = 1
    while i > 0
      if str[-1] == 'a'
        if b > c
          i = if b + c >= a
                [2, b].min
              else
                [1, b].min
              end
          str += 'b' * i
          b -= i
        else
          i = if b + c >= a
                [2, c].min
              else
                [1, c].min
              end
          str += 'c' * i
          c -= i
        end
      elsif str[-1] == 'b'
        if a > c
          i = if a + c >= b
                [2, a].min
              else
                [1, a].min
              end
          str += 'a' * i
          a -= i
        else
          i = if a + c >= b
                [2, c].min
              else
                min(1, c)
              end
          str += 'c' * i
          c -= i
        end
      elsif a > b
        i = if a + b >= c
              [2, a].min
            else
              [1, a].min
            end
        str += 'a' * i
        a -= i
      else
        i = if a + b >= c
              [2, b].min
            else
              [1, b].min
            end
        str += 'b' * i
        b -= i
      end
    end
    str
  end
end

puts Tutorial.new.solution(123)
puts Tutorial.new.solution(456)
puts Tutorial.new.solution(829)

puts Tutorial.new.solution_3(6, 1, 1)
puts Tutorial.new.solution_3(1, 3, 1)
puts Tutorial.new.solution_3(0, 1, 8)
