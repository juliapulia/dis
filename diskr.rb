puts "A = "
A = gets.chomp.to_f
if (A == 0)
   puts 'Нет решений'
   return
end
puts "B = "
B = gets.chomp.to_f
puts "C = "
C = gets.chomp.to_f
 
D = B*B - 4*A*C
puts"Дискриминант равен = " + D.to_s
if (D == 0)
   puts "x = "+(-B/2/A).to_s
else
   if (D > 0)
      puts "x1 = "+((-B-Math.sqrt(D))/2/A).to_s
      puts "x2 = "+((-B+Math.sqrt(D))/2/A).to_s
   else
      puts "Корней нет"
   end
end  