// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  final class PayInMethodStatusQuery: GraphQLQuery {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
      """
      query PayInMethodStatus {
        payinMethodStatus
      }
      """

    public let operationName: String = "PayInMethodStatus"

    public init() {
    }

    public struct Data: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Query"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("payinMethodStatus", type: .nonNull(.scalar(PayinMethodStatus.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(payinMethodStatus: PayinMethodStatus) {
        self.init(unsafeResultMap: ["__typename": "Query", "payinMethodStatus": payinMethodStatus])
      }

      /// Returns the status for the payin method (Trustly's direct debit for Sweden) (Adyen for Norway)
      public var payinMethodStatus: PayinMethodStatus {
        get {
          return resultMap["payinMethodStatus"]! as! PayinMethodStatus
        }
        set {
          resultMap.updateValue(newValue, forKey: "payinMethodStatus")
        }
      }
    }
  }
}
