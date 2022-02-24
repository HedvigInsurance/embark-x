
// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  final class InsuranceProvidersQuery: GraphQLQuery {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
      """
      query InsuranceProviders($locale: Locale!) {
        insuranceProviders(locale: $locale) {
          __typename
          ...InsuranceProviderFragment
        }
      }
      """

    public let operationName: String = "InsuranceProviders"

    public var queryDocument: String {
      var document: String = operationDefinition
      document.append("\n" + InsuranceProviderFragment.fragmentDefinition)
      return document
    }

    public var locale: Locale

    public init(locale: Locale) {
      self.locale = locale
    }

    public var variables: GraphQLMap? {
      return ["locale": locale]
    }

    public struct Data: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Query"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("insuranceProviders", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.object(InsuranceProvider.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(insuranceProviders: [InsuranceProvider]) {
        self.init(unsafeResultMap: ["__typename": "Query", "insuranceProviders": insuranceProviders.map { (value: InsuranceProvider) -> ResultMap in value.resultMap }])
      }

      public var insuranceProviders: [InsuranceProvider] {
        get {
          return (resultMap["insuranceProviders"] as! [ResultMap]).map { (value: ResultMap) -> InsuranceProvider in InsuranceProvider(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: InsuranceProvider) -> ResultMap in value.resultMap }, forKey: "insuranceProviders")
        }
      }

      public struct InsuranceProvider: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["InsuranceProvider"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("externalCollectionId", type: .scalar(String.self)),
            GraphQLField("hasExternalCapabilities", type: .nonNull(.scalar(Bool.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String, id: String, externalCollectionId: String? = nil, hasExternalCapabilities: Bool) {
          self.init(unsafeResultMap: ["__typename": "InsuranceProvider", "name": name, "id": id, "externalCollectionId": externalCollectionId, "hasExternalCapabilities": hasExternalCapabilities])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var id: String {
          get {
            return resultMap["id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var externalCollectionId: String? {
          get {
            return resultMap["externalCollectionId"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "externalCollectionId")
          }
        }

        public var hasExternalCapabilities: Bool {
          get {
            return resultMap["hasExternalCapabilities"]! as! Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "hasExternalCapabilities")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var insuranceProviderFragment: InsuranceProviderFragment {
            get {
              return InsuranceProviderFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }
    }
  }

  struct InsuranceProviderFragment: GraphQLFragment {
    /// The raw GraphQL definition of this fragment.
    public static let fragmentDefinition: String =
      """
      fragment InsuranceProviderFragment on InsuranceProvider {
        __typename
        name
        id
        externalCollectionId
        hasExternalCapabilities
      }
      """

    public static let possibleTypes: [String] = ["InsuranceProvider"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(String.self))),
        GraphQLField("externalCollectionId", type: .scalar(String.self)),
        GraphQLField("hasExternalCapabilities", type: .nonNull(.scalar(Bool.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(name: String, id: String, externalCollectionId: String? = nil, hasExternalCapabilities: Bool) {
      self.init(unsafeResultMap: ["__typename": "InsuranceProvider", "name": name, "id": id, "externalCollectionId": externalCollectionId, "hasExternalCapabilities": hasExternalCapabilities])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var name: String {
      get {
        return resultMap["name"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "name")
      }
    }

    public var id: String {
      get {
        return resultMap["id"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    public var externalCollectionId: String? {
      get {
        return resultMap["externalCollectionId"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "externalCollectionId")
      }
    }

    public var hasExternalCapabilities: Bool {
      get {
        return resultMap["hasExternalCapabilities"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "hasExternalCapabilities")
      }
    }
  }
}
