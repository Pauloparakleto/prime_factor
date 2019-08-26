class Factorization
    def prime_factors number
        @number = number
        @prime_factors_array = []
        factore_number
        return @prime_factors_array

    end
    def factore_number
        puts "Começando a fatorizar o número #{@number}..."
        while @number != 1
            puts "O número #{@number} é maior do que 1, portanto será fatorado."
            odd_valued?

        end
        

    end

    def odd_valued?
        puts "Testando se #{@number} é par ou impar..."
        if @number.even? == true
            puts "É par."
            divide_by_2
            
        elsif @number%3 == 0
            puts "#{@number} não é par. É múltiplo de 3"
            divide_by_3
        else
            puts "Também não é multiplo de 3"
            find_next_multiple
            divide_by_next_multiple 

        end
    end

    def divide_by_2
        puts "Dividindo #{@number} por 2."
        @number = @number/2
        puts "O resultado é #{@number}"
        @prime_factors_array.push(2)
        puts "prime factori: #{@prime_factors_array}"
        return @number
    end

    def divide_by_3
        @number = @number/3
        @prime_factors_array.push(3)
        return @number
    end
    def find_next_multiple
        puts "Encontre o próximo múltiplo de #{@number}."
        @next_multiple = 4
        while (@number% @next_multiple != 0)
            puts "#{@number} não é múltiplo de #{@next_multiple}"
            @next_multiple = @next_multiple + 1
            @whatc_over_100000 = @next_multiple
            puts "Próximo candidato a multiplo é #{@next_multiple}."
            if @whatc_over_100000 == 100000
                puts "Encontrar o prime_factori vai demorar mais do que o esperado. Interrompemos o programa."
                exit
            end
            
        end
        puts "#{@number} é multiplo de #{@next_multiple}."
        @prime_factors_array.push(@next_multiple)
        puts "prime factori: #{@prime_factors_array}"
            return @next_multiple

    end
    
    def next_multiple
        @next_multiple

    end

    def divide_by_next_multiple
        @number = @number/next_multiple
    end
end

number = Factorization.new
number.prime_factors(600851475143)