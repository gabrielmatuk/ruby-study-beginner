class MinhaClasse
    def m1
        puts "Método 1"
    end

    private
    def m2
        puts "Método 2"
    end
    def m3
        puts "Método 3"
    end
end

class MinhaSubClass < MinhaClasse
    def m4
    m1
    m2
    m3
    puts("Método 4")     
    end
end
obj = MinhaSubClass.new
obj.m4
# obj.m1
# obj.m2
# obj.m3