import SwiftUI

struct IntExamples: View {
    var body: some View {
        Button("Suma") {
            sumar(valor1: 10, valor2: 40)
        }
        Button("Resta") {
            restar(valor1: 100, valor2: 40)
        }
        Button("Multiplica") {
            multiplicar(valor1: 10, valor2: 10)
        }
        Button("Suma con valor de retorno") {
            print(sumarConRetorno(valor1: 25, valor2: 30))
        }
    }
    
    // función con 2 parámetros de entrada de tipo Int
    func sumar(valor1: Int, valor2: Int) {
        print("El resultado de la suma es: \(valor1 + valor2)")
    }
    
    // función con 2 parámetros de entrada de tipo Int
    func restar(valor1: Int, valor2: Int) {
        print("El resultado de la resta es: \(valor1 - valor2)")
    }
    
    // función con 2 parámetros de entrada de tipo Int
    func multiplicar(valor1: Int, valor2: Int) {
        print("El resultado de la multiplicación es: \(valor1 * valor2)")
    }
    
    // función con 2 parámetros de entrada de tipo Int que devuelve un tipo Int
    func sumarConRetorno(valor1: Int, valor2: Int) -> Int {
        return valor1 + valor2
    }
}

struct IntExamples_Previews: PreviewProvider {
    static var previews: some View {
        IntExamples()
    }
}
