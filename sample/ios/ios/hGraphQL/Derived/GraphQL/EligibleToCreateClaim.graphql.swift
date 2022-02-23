// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  final class EligibleToCreateClaimQuery: GraphQLQuery {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
      """
      query EligibleToCreateClaim {
        isEligibleToCreateClaim
      }
      """

    public let operationName: String = "EligibleToCreateClaim"

    public init() {
    }

    public struct Data: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Query"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("isEligibleToCreateClaim", type: .nonNull(.scalar(Bool.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(isEligibleToCreateClaim: Bool) {
        self.init(unsafeResultMap: ["__typename": "Query", "isEligibleToCreateClaim": isEligibleToCreateClaim])
      }

      /// Returns whether a member is eligible to create a claim, i.e. if a member has an active contract
      public var isEligibleToCreateClaim: Bool {
        get {
          return resultMap["isEligibleToCreateClaim"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isEligibleToCreateClaim")
        }
      }
    }
  }
}
