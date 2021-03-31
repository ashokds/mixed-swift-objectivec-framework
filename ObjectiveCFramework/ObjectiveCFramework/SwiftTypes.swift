import Foundation

@objc
public protocol Envelopable {
    func send()
    func sign()
}

// Can't expose structs
public struct Envelope { // : Envelopable {
    public var name: String?
    public var recipients: [String]?
}

// Needs to be public 
@objc
public enum SignerType : Int {
    case remote, inPerson, carbonCopy
}

@objc
public class Signer : NSObject {
    public static let signerType: SignerType = .remote
    var envelope: Envelope?
    
    @objc
    public static func printName() {
        print("Test Signer")
    }
    
    @objc
    public func classFunction() -> String {
        print("Test Signer")
        return "Test Signer"
    }
    
    @objc
    public func processEnvelope() {
        _ = printEnvelop()
    }
}

private extension Signer {
    func printEnvelop() -> Envelope? {
        print(envelope?.name ?? "-empty-")
        return envelope
    }
}

@objc
public class SignerEnvelope : NSObject, Envelopable {
    public func send() {
        
    }
    
    public func sign() {
        
    }
    
    @objc
    public let signerType: SignerType = .inPerson
}
