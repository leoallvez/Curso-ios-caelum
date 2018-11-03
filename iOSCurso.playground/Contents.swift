//: Playground - noun: a place where people can play


var str = "Hello, playground"
print(str)

let nome: String = "Steve Jobs"
let idade: Int = 61

//Concatenacao
print("Se \(nome) estivesse vivo, teria \(idade) anos")

//Optional
var numero = "123"
let numeroConvertido = Int(numero)


//if numeroConvertido != nil {
//    print("O numero convertido é \(numeroConvertido)")
//} else {
//    print("numero inválido")
//}

//  Optinal binding
if let numeroConvertido = Int(numero) {
  print("O numero convertido é \(numeroConvertido)")
} else {
    print("numero inválido")}

let name = "Calor Alberto"
var greeting = "Hello"

greeting = "Hello, \(name)"
print(greeting)
