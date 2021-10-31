//
//  MainViewModel.swift
//  Week_3
//
//  Created by Emre Keskin on 13.10.2021.
//

import Foundation

class MainViewModel {
    
    private var tutorialFireBlock: (() -> Void)?
    
    private let applicationInfoManager: ApplicationGeneralInfoProtocol
    
    init(applicationInfoManager: ApplicationGeneralInfoProtocol) {
        self.applicationInfoManager = applicationInfoManager
        fireTutorial()
    }
    
    func listenTutorialEvent(with completion: @escaping (() -> Void)) {
        tutorialFireBlock = completion
    }
    
    func fireTutorial() {
        
        guard !applicationInfoManager.isTutorialViewSeen() else { return }

        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.tutorialFireBlock?()
        }
    }
    
}
