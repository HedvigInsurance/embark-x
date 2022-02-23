// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  struct MonetaryAmountFragment: GraphQLFragment {
    /// The raw GraphQL definition of this fragment.
    public static let fragmentDefinition: String =
      """
      fragment MonetaryAmountFragment on MonetaryAmountV2 {
        __typename
        amount
        currency
      }
      """

    public static let possibleTypes: [String] = ["MonetaryAmountV2"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("amount", type: .nonNull(.scalar(String.self))),
        GraphQLField("currency", type: .nonNull(.scalar(String.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(amount: String, currency: String) {
      self.init(unsafeResultMap: ["__typename": "MonetaryAmountV2", "amount": amount, "currency": currency])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var amount: String {
      get {
        return resultMap["amount"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "amount")
      }
    }

    public var currency: String {
      get {
        return resultMap["currency"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "currency")
      }
    }
  }
}
