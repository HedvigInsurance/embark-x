// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  struct ExtraBuildingFragment: GraphQLFragment {
    /// The raw GraphQL definition of this fragment.
    public static let fragmentDefinition: String =
      """
      fragment ExtraBuildingFragment on ExtraBuildingCore {
        __typename
        displayName
        area
        hasWaterConnected
      }
      """

    public static let possibleTypes: [String] = ["ExtraBuildingValue"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
        GraphQLField("area", type: .nonNull(.scalar(Int.self))),
        GraphQLField("hasWaterConnected", type: .nonNull(.scalar(Bool.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(displayName: String, area: Int, hasWaterConnected: Bool) {
      self.init(unsafeResultMap: ["__typename": "ExtraBuildingValue", "displayName": displayName, "area": area, "hasWaterConnected": hasWaterConnected])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var displayName: String {
      get {
        return resultMap["displayName"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "displayName")
      }
    }

    public var area: Int {
      get {
        return resultMap["area"]! as! Int
      }
      set {
        resultMap.updateValue(newValue, forKey: "area")
      }
    }

    public var hasWaterConnected: Bool {
      get {
        return resultMap["hasWaterConnected"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "hasWaterConnected")
      }
    }
  }
}
