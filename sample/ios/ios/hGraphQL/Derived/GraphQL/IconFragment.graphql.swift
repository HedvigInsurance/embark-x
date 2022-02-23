// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  struct IconFragment: GraphQLFragment {
    /// The raw GraphQL definition of this fragment.
    public static let fragmentDefinition: String =
      """
      fragment IconFragment on Icon {
        __typename
        variants {
          __typename
          dark {
            __typename
            pdfUrl
          }
          light {
            __typename
            pdfUrl
          }
        }
      }
      """

    public static let possibleTypes: [String] = ["Icon"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("variants", type: .nonNull(.object(Variant.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(variants: Variant) {
      self.init(unsafeResultMap: ["__typename": "Icon", "variants": variants.resultMap])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var variants: Variant {
      get {
        return Variant(unsafeResultMap: resultMap["variants"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "variants")
      }
    }

    public struct Variant: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["IconVariants"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("dark", type: .nonNull(.object(Dark.selections))),
          GraphQLField("light", type: .nonNull(.object(Light.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(dark: Dark, light: Light) {
        self.init(unsafeResultMap: ["__typename": "IconVariants", "dark": dark.resultMap, "light": light.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var dark: Dark {
        get {
          return Dark(unsafeResultMap: resultMap["dark"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "dark")
        }
      }

      public var light: Light {
        get {
          return Light(unsafeResultMap: resultMap["light"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "light")
        }
      }

      public struct Dark: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["IconVariant"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("pdfUrl", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(pdfUrl: String) {
          self.init(unsafeResultMap: ["__typename": "IconVariant", "pdfUrl": pdfUrl])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var pdfUrl: String {
          get {
            return resultMap["pdfUrl"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "pdfUrl")
          }
        }
      }

      public struct Light: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["IconVariant"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("pdfUrl", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(pdfUrl: String) {
          self.init(unsafeResultMap: ["__typename": "IconVariant", "pdfUrl": pdfUrl])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var pdfUrl: String {
          get {
            return resultMap["pdfUrl"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "pdfUrl")
          }
        }
      }
    }
  }
}
