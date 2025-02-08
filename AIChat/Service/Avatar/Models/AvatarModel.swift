//
//  AvatarModel.swift
//  AIChat
//
//  Created by 안다영 on 2/8/25.
//

import Foundation

struct AvatarModel {
    
    let avartarId: String
    let name: String?
    let charcaterOption: CharacterOption?
    let characterAction: CharacterAction?
    let characterLocation: CharacterLocation?
    let profileImageName: String?
    let authorId: String?
    let dateCreated: Date?
    
    init(
        avartarId: String,
        name: String? = nil,
        charcaterOption: CharacterOption? = nil,
        characterAction: CharacterAction? = nil,
        characterLocation: CharacterLocation? = nil,
        profileImageName: String? = nil,
        authorId: String? = nil,
        dateCreated: Date? = nil
    ) {
        self.avartarId = avartarId
        self.name = name
        self.charcaterOption = charcaterOption
        self.characterAction = characterAction
        self.characterLocation = characterLocation
        self.profileImageName = profileImageName
        self.authorId = authorId
        self.dateCreated = dateCreated
    }
    
    var characterDescription: String {
        AvatarDescriptionBuilder(avatar: self).characterDescription
    }
    
    static var mock: AvatarModel {
        mocks[0]
    }
    
    static var mocks: [AvatarModel] {
        [
            AvatarModel(avartarId: UUID().uuidString, name: "Alpha", charcaterOption: .alien, characterAction: .smiling, characterLocation: .park, profileImageName: Constants.randomImage, authorId: UUID().uuidString, dateCreated: .now),
            AvatarModel(avartarId: UUID().uuidString, name: "Beta", charcaterOption: .alien, characterAction: .eating, characterLocation: .forest, profileImageName: Constants.randomImage, authorId: UUID().uuidString, dateCreated: .now),
            AvatarModel(avartarId: UUID().uuidString, name: "Gamma", charcaterOption: .alien, characterAction: .drinking, characterLocation: .museum, profileImageName: Constants.randomImage, authorId: UUID().uuidString, dateCreated: .now),
            AvatarModel(avartarId: UUID().uuidString, name: "Delta", charcaterOption: .alien, characterAction: .shopping, characterLocation: .park, profileImageName: Constants.randomImage, authorId: UUID().uuidString, dateCreated: .now)
        ]
    }
}

struct AvatarDescriptionBuilder {
    let charcaterOption: CharacterOption
    let characterAction: CharacterAction
    let characterLocation: CharacterLocation
    
    init(charcaterOption: CharacterOption, characterAction: CharacterAction, characterLocation: CharacterLocation) {
        self.charcaterOption = charcaterOption
        self.characterAction = characterAction
        self.characterLocation = characterLocation
    }
    
    init(avatar: AvatarModel) {
        self.charcaterOption = avatar.charcaterOption ?? .default
        self.characterAction = avatar.characterAction ?? .default
        self.characterLocation = avatar.characterLocation ?? .default
    }
    
    var characterDescription: String {
        return "A \(charcaterOption.rawValue) that is \(characterAction.rawValue) in the \(characterLocation.rawValue)"
    }
}


enum CharacterOption: String {
    case man, woman, alien, dog, cat
    
    static var `default`: Self {
        .man
    }
}

enum CharacterAction: String {
    case smiling, sitting, eating, drinking, walking, shopping, studying, working, relaxing, fighting, crying, sleeping, laughing
    
    static var `default`: Self {
        .smiling
    }
}

enum CharacterLocation: String {
    case park, mall, museum, city, desert, forest, space
    
    static var `default`: Self {
        .park
    }
}
