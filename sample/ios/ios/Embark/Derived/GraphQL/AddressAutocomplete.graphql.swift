
// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  final class AddressAutocompleteQuery: GraphQLQuery {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
      """
      query AddressAutocomplete($input: String!, $type: AddressAutocompleteType!) {
        autoCompleteAddress(input: $input, options: {type: $type}) {
          __typename
          id
          address
          streetName
          streetNumber
          floor
          apartment
          postalCode
          city
        }
      }
      """

    public let operationName: String = "AddressAutocomplete"

    public var input: String
    public var type: AddressAutocompleteType

    public init(input: String, type: AddressAutocompleteType) {
      self.input = input
      self.type = type
    }

    public var variables: GraphQLMap? {
      return ["input": input, "type": type]
    }

    public struct Data: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Query"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("autoCompleteAddress", arguments: ["input": GraphQLVariable("input"), "options": ["type": GraphQLVariable("type")]], type: .nonNull(.list(.nonNull(.object(AutoCompleteAddress.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(autoCompleteAddress: [AutoCompleteAddress]) {
        self.init(unsafeResultMap: ["__typename": "Query", "autoCompleteAddress": autoCompleteAddress.map { (value: AutoCompleteAddress) -> ResultMap in value.resultMap }])
      }

      public var autoCompleteAddress: [AutoCompleteAddress] {
        get {
          return (resultMap["autoCompleteAddress"] as! [ResultMap]).map { (value: ResultMap) -> AutoCompleteAddress in AutoCompleteAddress(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: AutoCompleteAddress) -> ResultMap in value.resultMap }, forKey: "autoCompleteAddress")
        }
      }

      public struct AutoCompleteAddress: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["AutoCompleteResponse"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(String.self)),
            GraphQLField("address", type: .nonNull(.scalar(String.self))),
            GraphQLField("streetName", type: .scalar(String.self)),
            GraphQLField("streetNumber", type: .scalar(String.self)),
            GraphQLField("floor", type: .scalar(String.self)),
            GraphQLField("apartment", type: .scalar(String.self)),
            GraphQLField("postalCode", type: .scalar(String.self)),
            GraphQLField("city", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String? = nil, address: String, streetName: String? = nil, streetNumber: String? = nil, floor: String? = nil, apartment: String? = nil, postalCode: String? = nil, city: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "AutoCompleteResponse", "id": id, "address": address, "streetName": streetName, "streetNumber": streetNumber, "floor": floor, "apartment": apartment, "postalCode": postalCode, "city": city])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String? {
          get {
            return resultMap["id"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var address: String {
          get {
            return resultMap["address"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "address")
          }
        }

        public var streetName: String? {
          get {
            return resultMap["streetName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "streetName")
          }
        }

        public var streetNumber: String? {
          get {
            return resultMap["streetNumber"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "streetNumber")
          }
        }

        public var floor: String? {
          get {
            return resultMap["floor"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "floor")
          }
        }

        public var apartment: String? {
          get {
            return resultMap["apartment"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "apartment")
          }
        }

        public var postalCode: String? {
          get {
            return resultMap["postalCode"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "postalCode")
          }
        }

        public var city: String? {
          get {
            return resultMap["city"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "city")
          }
        }
      }
    }
  }
}
