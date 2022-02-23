// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  struct InsurableLimitFragment: GraphQLFragment {
    /// The raw GraphQL definition of this fragment.
    public static let fragmentDefinition: String =
      """
      fragment InsurableLimitFragment on InsurableLimit {
        __typename
        label
        limit
        description
      }
      """

    public static let possibleTypes: [String] = ["InsurableLimit"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("label", type: .nonNull(.scalar(String.self))),
        GraphQLField("limit", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(label: String, limit: String, description: String) {
      self.init(unsafeResultMap: ["__typename": "InsurableLimit", "label": label, "limit": limit, "description": description])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var label: String {
      get {
        return resultMap["label"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "label")
      }
    }

    public var limit: String {
      get {
        return resultMap["limit"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "limit")
      }
    }

    public var description: String {
      get {
        return resultMap["description"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "description")
      }
    }
  }
}
