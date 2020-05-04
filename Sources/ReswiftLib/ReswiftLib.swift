import Foundation

public class Reswift {

  public init() { }

  public func run(args: [String]) throws {

    let environment = ProcessInfo.processInfo.environment
//    let derivedFileDir = environment["DERIVED_FILE_DIR"]
    let sourceRoot = environment["SOURCE_ROOT"]!
//    let wrapperName = environment["WRAPPER_NAME"]

    let fm = FileManager.default
    let enumerator = fm.enumerator(atPath: sourceRoot)
    while let element = enumerator?.nextObject() as? String {
      if (element as NSString).pathExtension == "strings" {
        print(element)
      }
    }

//    ProcessInfo.processInfo.environment.forEach { tuple in
//      if tuple.value.contains("ReswiftApp") {
//        print("\(tuple.key): \(tuple.value)")
//      }
//    }
  }

}
