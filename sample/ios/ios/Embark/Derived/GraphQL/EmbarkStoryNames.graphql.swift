
// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  final class EmbarkStoryNamesQuery: GraphQLQuery {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
      """
      query EmbarkStoryNames {
        embarkStoryNames
      }
      """

    public let operationName: String = "EmbarkStoryNames"

    public init() {
    }

    public struct Data: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Query"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("embarkStoryNames", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(embarkStoryNames: [String]) {
        self.init(unsafeResultMap: ["__typename": "Query", "embarkStoryNames": embarkStoryNames])
      }

      /// returns names of all available embark stories
      public var embarkStoryNames: [String] {
        get {
          return resultMap["embarkStoryNames"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "embarkStoryNames")
        }
      }
    }
  }
}
