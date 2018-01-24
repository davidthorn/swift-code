import Foundation

public enum SwiftCodeApplicationArguments: String {

    public init?(rawValue: String) {

        let parts = rawValue.components(separatedBy: " ")

        // argument 0 = the calling file
        // argument 1 = the command 
        
        switch parts.count {
            case 0:
                self = .invalidNumberArguments
            case 1:
                
                switch parts[0]{
                    
                    case SwiftCodeApplicationArguments.help.rawValue,
                        SwiftCodeApplicationArguments.dashDashHelp.rawValue,
                        SwiftCodeApplicationArguments.dashHelp.rawValue,
                        SwiftCodeApplicationArguments.dashH.rawValue:

                        self = .help

                    // CREATE
                    case SwiftCodeApplicationArguments.create.rawValue:
                    
                        self = .invalidNumberArguments
                    
                    // Create Class
                    case SwiftCodeApplicationArguments.create.rawValue:
                         self = .invalidNumberArguments
                    
                    default:
                        self = .unknownCommand
                }
            default: 
               
                 switch parts[0] {

                    case SwiftCodeApplicationArguments.create.rawValue:
                        self = .create
                  
                    default:
                        self = .unknownCommand
                 }
                

        }

    }

    case create

    case dashDashHelp = "--help"

    case dashHelp = "-help"

    case dashH = "-h"

    case help

    case invalidNumberArguments

    case unknownCommand

}