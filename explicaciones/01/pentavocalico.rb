# frozen_string_literal: true

# Implementá un método que reciba un argumento y retorne un valor booleano indicando si la
# cadena recibida como argumento es pentavocálica o panvocálica (contiene todas las
# vocales). El chequeo no debe ser sensible a mayúsculas y minúsculas.

def es_pentavocalico?(string)
  string = string.downcase
  vocales = %w[a e i o u] # => ['a', 'e', 'i', 'o', 'u']
  vocales.all? { |vocal| string.include? vocal }
end