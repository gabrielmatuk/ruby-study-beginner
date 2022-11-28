class Sensor
    def instalar
        puts "Estou instalando o sensor"
    end
    
    def iniciar
        puts "estou inicializando o senror"
    end

    def coletar_metricas
        puts "estou coletando metricas"
        puts "estou analizando metricas"
    end
end

class SensorTemperatura < Sensor
    def coletar_metricas
        puts "Estou coletando métricas de temperatura"
        super
    end
end

sensor = SensorTemperatura.new

sensor.instalar
sensor.iniciar
sensor.coletar_metricas