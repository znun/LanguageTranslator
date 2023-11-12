//
//  LocalizableModel.swift
//  Translator
//
//  Created by Mahmudul Hasan on 12/11/23.
//

import Foundation

class LocalizableViewModel: ObservableObject {
    @Published var currentLocale: Locale = Locale.current

    func switchToNextLocale() {
        if currentLocale.identifier == "en" {
            currentLocale = Locale(identifier: "fr")
        } else {
            currentLocale = Locale(identifier: "en")
        }
    }
}

