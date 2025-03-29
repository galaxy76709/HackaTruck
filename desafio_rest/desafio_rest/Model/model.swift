//
//  Model.swift
//  Desafio9
//
//  Created by Turma02-25 on 26/03/25.
//

import Foundation

struct HaPo: Codable, Identifiable{
    let id: String
    let name: String?
    let alternate_names: [String]?
    let species: String?
    let gender: String?
    let house: String?
    let dateOfBirth: String?
    let yearOfbirth: Int?
    let wizard: Bool?
    let ancestry: String?
    let eyeColour: String?
    let hairColour: String?
    let wand: Wand
    let patronus: String?
    let hogwartsStudent: Bool?
    let hogwartsStaff: Bool?
    let actor: String?
    let alternate_actor: [String]?
    let alive: Bool?
    let image: String?
}

struct Wand: Codable{
   let wood: String?
    let core: String?
    let length: Double?
}
