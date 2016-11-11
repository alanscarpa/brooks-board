//
//  MessagesManager.swift
//  BrooksBoard
//
//  Created by Alan Scarpa on 11/11/16.
//  Copyright © 2016 Intrepid Pursuits LLC. All rights reserved.
//

import Foundation

extension URL {
    static func audioNamed(fileName: String) -> URL {
        return URL(fileURLWithPath: Bundle.main.path(forResource: fileName, ofType: "mp4")!)
    }
}

class MessagesManager {

    static let sharedInstance = MessagesManager()
    private let audioMessageURLs = [URL.audioNamed(fileName: "Yas"),
                            URL.audioNamed(fileName: "NahBra")
        ]
    var numberOfAudioMessages: Int {
        return audioMessageURLs.count
    }

    private init() {}

    func messageAtIndex(_ index: Int) -> URL {
        return audioMessageURLs[index]
    }

}
