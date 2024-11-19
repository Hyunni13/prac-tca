//
//  Logger.swift
//  PracTCA
//
//  Created by James on 11/18/24.
//

import Foundation

final class Logger {
    
    enum Tag: String {
        case defaults = "📌"
        case lifecycle = "🔄"
        case error = "💥"
    }
    
    
    private static let serialQueue = DispatchQueue(label: "LOGGER_QUEUE")
    
    /**
     커스텀 로깅
     */
    static func log(
        _ message: Any? = nil,
        tag: Tag = .defaults,
        fileID: String = #fileID,
        function: String = #function,
        line: Int = #line,
        timestamp: String = Date().toString(format: "HH:mm:ss.SSS")
    ) {
        serialQueue.async {
            print("""
            \(tag.rawValue) (\(timestamp)) \(cleanRawFileID(fileID)) > \(function) > \(line)
                ⎿ \(cleanRawMessage(message))
            """)
        }
    }
    
    private static func cleanRawFileID(_ rawFileID: String) -> String {
        guard let file = rawFileID.split(separator: ".").first else { return "nil" }
        return String(file)
    }
    
    private static func cleanRawMessage(_ rawMessage: Any?) -> Any {
        guard let message = rawMessage else { return "No message provided" }
        return message
    }
    
}
