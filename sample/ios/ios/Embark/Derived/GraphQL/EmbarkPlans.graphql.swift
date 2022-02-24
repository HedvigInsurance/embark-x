
// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  final class ChoosePlanQuery: GraphQLQuery {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
      """
      query ChoosePlan($locale: String!) {
        embarkStories(locale: $locale) {
          __typename
          name
          title
          type
          description
          metadata {
            __typename
            ... on EmbarkStoryMetadataEntryPill {
              pill
            }
            ... on EmbarkStoryMetaDataEntryWebUrlPath {
              path
            }
            ... on EmbarkStoryMetadataEntryBackground {
              background
            }
          }
        }
      }
      """

    public let operationName: String = "ChoosePlan"

    public var locale: String

    public init(locale: String) {
      self.locale = locale
    }

    public var variables: GraphQLMap? {
      return ["locale": locale]
    }

    public struct Data: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Query"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("embarkStories", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.object(EmbarkStory.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(embarkStories: [EmbarkStory]) {
        self.init(unsafeResultMap: ["__typename": "Query", "embarkStories": embarkStories.map { (value: EmbarkStory) -> ResultMap in value.resultMap }])
      }

      public var embarkStories: [EmbarkStory] {
        get {
          return (resultMap["embarkStories"] as! [ResultMap]).map { (value: ResultMap) -> EmbarkStory in EmbarkStory(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: EmbarkStory) -> ResultMap in value.resultMap }, forKey: "embarkStories")
        }
      }

      public struct EmbarkStory: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["EmbarkStoryMetadata"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("type", type: .nonNull(.scalar(EmbarkStoryType.self))),
            GraphQLField("description", type: .nonNull(.scalar(String.self))),
            GraphQLField("metadata", type: .nonNull(.list(.nonNull(.object(Metadatum.selections))))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String, title: String, type: EmbarkStoryType, description: String, metadata: [Metadatum]) {
          self.init(unsafeResultMap: ["__typename": "EmbarkStoryMetadata", "name": name, "title": title, "type": type, "description": description, "metadata": metadata.map { (value: Metadatum) -> ResultMap in value.resultMap }])
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

        /// Localized
        public var title: String {
          get {
            return resultMap["title"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var type: EmbarkStoryType {
          get {
            return resultMap["type"]! as! EmbarkStoryType
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        /// Localized
        public var description: String {
          get {
            return resultMap["description"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var metadata: [Metadatum] {
          get {
            return (resultMap["metadata"] as! [ResultMap]).map { (value: ResultMap) -> Metadatum in Metadatum(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: Metadatum) -> ResultMap in value.resultMap }, forKey: "metadata")
          }
        }

        public struct Metadatum: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["EmbarkStoryMetadataEntryDiscount", "EmbarkStoryMetaDataEntryWebUrlPath", "EmbarkStoryMetadataEntryPill", "EmbarkStoryMetadataEntryBackground"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLTypeCase(
                variants: ["EmbarkStoryMetadataEntryPill": AsEmbarkStoryMetadataEntryPill.selections, "EmbarkStoryMetaDataEntryWebUrlPath": AsEmbarkStoryMetaDataEntryWebUrlPath.selections, "EmbarkStoryMetadataEntryBackground": AsEmbarkStoryMetadataEntryBackground.selections],
                default: [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                ]
              )
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public static func makeEmbarkStoryMetadataEntryDiscount() -> Metadatum {
            return Metadatum(unsafeResultMap: ["__typename": "EmbarkStoryMetadataEntryDiscount"])
          }

          public static func makeEmbarkStoryMetadataEntryPill(pill: String) -> Metadatum {
            return Metadatum(unsafeResultMap: ["__typename": "EmbarkStoryMetadataEntryPill", "pill": pill])
          }

          public static func makeEmbarkStoryMetaDataEntryWebUrlPath(path: String) -> Metadatum {
            return Metadatum(unsafeResultMap: ["__typename": "EmbarkStoryMetaDataEntryWebUrlPath", "path": path])
          }

          public static func makeEmbarkStoryMetadataEntryBackground(background: EmbarkStoryMetadataEntryBackgroundOption) -> Metadatum {
            return Metadatum(unsafeResultMap: ["__typename": "EmbarkStoryMetadataEntryBackground", "background": background])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var asEmbarkStoryMetadataEntryPill: AsEmbarkStoryMetadataEntryPill? {
            get {
              if !AsEmbarkStoryMetadataEntryPill.possibleTypes.contains(__typename) { return nil }
              return AsEmbarkStoryMetadataEntryPill(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap = newValue.resultMap
            }
          }

          public struct AsEmbarkStoryMetadataEntryPill: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["EmbarkStoryMetadataEntryPill"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("pill", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(pill: String) {
              self.init(unsafeResultMap: ["__typename": "EmbarkStoryMetadataEntryPill", "pill": pill])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// Localized
            public var pill: String {
              get {
                return resultMap["pill"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "pill")
              }
            }
          }

          public var asEmbarkStoryMetaDataEntryWebUrlPath: AsEmbarkStoryMetaDataEntryWebUrlPath? {
            get {
              if !AsEmbarkStoryMetaDataEntryWebUrlPath.possibleTypes.contains(__typename) { return nil }
              return AsEmbarkStoryMetaDataEntryWebUrlPath(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap = newValue.resultMap
            }
          }

          public struct AsEmbarkStoryMetaDataEntryWebUrlPath: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["EmbarkStoryMetaDataEntryWebUrlPath"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("path", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(path: String) {
              self.init(unsafeResultMap: ["__typename": "EmbarkStoryMetaDataEntryWebUrlPath", "path": path])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var path: String {
              get {
                return resultMap["path"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "path")
              }
            }
          }

          public var asEmbarkStoryMetadataEntryBackground: AsEmbarkStoryMetadataEntryBackground? {
            get {
              if !AsEmbarkStoryMetadataEntryBackground.possibleTypes.contains(__typename) { return nil }
              return AsEmbarkStoryMetadataEntryBackground(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap = newValue.resultMap
            }
          }

          public struct AsEmbarkStoryMetadataEntryBackground: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["EmbarkStoryMetadataEntryBackground"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("background", type: .nonNull(.scalar(EmbarkStoryMetadataEntryBackgroundOption.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(background: EmbarkStoryMetadataEntryBackgroundOption) {
              self.init(unsafeResultMap: ["__typename": "EmbarkStoryMetadataEntryBackground", "background": background])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var background: EmbarkStoryMetadataEntryBackgroundOption {
              get {
                return resultMap["background"]! as! EmbarkStoryMetadataEntryBackgroundOption
              }
              set {
                resultMap.updateValue(newValue, forKey: "background")
              }
            }
          }
        }
      }
    }
  }
}
