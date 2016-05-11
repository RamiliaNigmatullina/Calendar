class MyClass
  def getNewNumber(givenNumber)
    puts givenNumber

    givenNumber = givenNumber.to_s

    newNumber = String.new
    number = -1
    count = 0

    givenNumber.each_char do |char|
      currentNumber = char.to_i

      if currentNumber == number
        count += 1
      else 
        if count != 0
          newNumber = newNumber + count.to_s + number.to_s
          #newNumber = "#{newNumber}#{count}#{number}"
        end
        number = currentNumber
        count = 1
      end
    end

    newNumber = newNumber + count.to_s + number.to_s
    #newNumber = "#{newNumber}#{count}#{number}"

    #getNewNumber(newNumber)
  end
end

myClass = MyClass.new

number = 1
10.times { number = myClass.getNewNumber(number) }