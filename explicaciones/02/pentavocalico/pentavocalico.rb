# frozen_string_literal: true

# Tomando como base el método `#es_pentavocalico?' desarrollado en la EP1, implementá un
# método en la clase `String' que permita saber si una cadena es pentavocálica. Para esto
# podés hacer uso de un monkey patch.

class String
  VOCALES = %w[a e i o u] # => ['a', 'e', 'i', 'o', 'u']

  def pentavocalico?
    normalizado = downcase
    VOCALES.all? { |vocal| normalizado.include? vocal }
  end
end

# Luego, implementá un método con la misma funcionalidad en la clase `Symbol'.

class Symbol
  def pentavocalico?
    to_s.pentavocalico?
  end
end
