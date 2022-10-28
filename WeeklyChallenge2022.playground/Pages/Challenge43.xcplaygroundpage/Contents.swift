import Foundation

/*
 * Reto #43
 * TRUCO O TRATO
 * Fecha publicación enunciado: 24/10/22
 * Fecha publicación resolución: 02/11/22
 * Dificultad: MEDIA
 *
 * Enunciado: Este es un reto especial por Halloween.
 * Deberemos crear un programa al que le indiquemos si queremos realizar "Truco o Trato" y
 * un listado (array) de personas con las siguientes propiedades:
 * - Nombre de la niña o niño
 * - Edad
 * - Altura en centímetros
 *
 * Si las personas han pedido truco, el programa retornará sustos (aleatorios)
 * siguiendo estos criterios:
 * - Un susto por cada 2 letras del nombre por persona
 * - Dos sustos por cada edad que sea un número par
 * - Tres sustos por cada 100 cm de altura entre todas las personas
 * - Sustos: 🎃 👻 💀 🕷 🕸 🦇
 *
 * Si las personas han pedido trato, el programa retornará dulces (aleatorios)
 * siguiendo estos criterios:
 * - Un dulce por cada letra de nombre
 * - Un dulce por cada 3 años cumplidos hasta un máximo de 10 años por persona
 * - Dos dulces por cada 50 cm de altura hasta un máximo de 150 cm por persona
 * - Dulces: 🍰 🍬 🍡 🍭 🍪 🍫 🧁 🍩
 *
 * Información adicional:
 * - Usa el canal de nuestro Discord (https://mouredev.com/discord) "🔁reto-semanal"
 *   para preguntas, dudas o prestar ayuda a la comunidad.
 * - Tienes toda la información sobre los retos semanales en
 *   https://retosdeprogramacion.com/semanales2022.
 *
 */

struct Child {
    var name: String
    var birth: Int
    var size: Int
}

let child = [Child(name: "Pedro", birth: 9, size: 100), Child(name: "Susana", birth: 12, size: 124)]

let sustos = ["🎃", "👻", "💀", "🕷", "🕸", "🦇"]
let dulces = ["🍰", "🍬", "🍡", "🍭", "🍪", "🍫", "🧁", "🍩"]

child.forEach({ child in
    print("\(child.name) \(child.birth) años \(child.size)cm")
})

let totalPerson = child.count

if totalPerson < sustos.count {
    print("Sustos:")
    
    (0...totalPerson).forEach { idx in
        let rnd_sustos = Int.random(in: 0..<sustos.count)
        print(sustos[rnd_sustos])
    }
}

if totalPerson < dulces.count {
    print("Dulces: ")
    
    (0...totalPerson).forEach { idx in
        let rnd_dulces = Int.random(in: 0..<dulces.count)
        print(dulces[rnd_dulces])
    }
}
