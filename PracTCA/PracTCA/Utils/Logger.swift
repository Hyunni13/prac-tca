//
//  Logger.swift
//  PracTCA
//
//  Created by James on 11/18/24.
//

final class Logger {
    
    enum Tag: String {
        case lifecycle = "🔄"
        case defaults = "📌"
    }
    
    /**
     커스텀 로깅
     */
    static func log(
        _ message: Any? = nil,
        tag: Tag = .defaults,
        fileID: String = #fileID,
        function: String = #function,
        line: Int = #line
    ) {
        print("""
        \(tag.rawValue) \(cleanRawFileID(fileID)) > \(function) > \(line)
            ⎿ \(cleanRawMessage(message))
        """)
    }
    
    private static func cleanRawFileID(_ rawFileID: String) -> String {
        guard let file = rawFileID.split(separator: ".").first else { return "nil" }
        return String(file)
    }
    
    private static func cleanRawMessage(_ rawMessage: Any?) -> Any {
        guard let message = rawMessage else { return "nil" }
        return message
    }
    
}
