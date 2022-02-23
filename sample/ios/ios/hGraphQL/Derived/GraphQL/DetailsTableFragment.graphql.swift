// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  struct DetailsTableFragment: GraphQLFragment {
    /// The raw GraphQL definition of this fragment.
    public static let fragmentDefinition: String =
      """
      fragment DetailsTableFragment on Table {
        __typename
        title
        sections {
          __typename
          title
          rows {
            __typename
            title
            subtitle
            value
          }
        }
      }
      """

    public static let possibleTypes: [String] = ["Table"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("sections", type: .nonNull(.list(.nonNull(.object(Section.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(title: String, sections: [Section]) {
      self.init(unsafeResultMap: ["__typename": "Table", "title": title, "sections": sections.map { (value: Section) -> ResultMap in value.resultMap }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var title: String {
      get {
        return resultMap["title"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "title")
      }
    }

    public var sections: [Section] {
      get {
        return (resultMap["sections"] as! [ResultMap]).map { (value: ResultMap) -> Section in Section(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Section) -> ResultMap in value.resultMap }, forKey: "sections")
      }
    }

    public struct Section: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["TableSection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("rows", type: .nonNull(.list(.nonNull(.object(Row.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(title: String, rows: [Row]) {
        self.init(unsafeResultMap: ["__typename": "TableSection", "title": title, "rows": rows.map { (value: Row) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var title: String {
        get {
          return resultMap["title"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var rows: [Row] {
        get {
          return (resultMap["rows"] as! [ResultMap]).map { (value: ResultMap) -> Row in Row(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Row) -> ResultMap in value.resultMap }, forKey: "rows")
        }
      }

      public struct Row: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["TableRow"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("subtitle", type: .scalar(String.self)),
            GraphQLField("value", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(title: String, subtitle: String? = nil, value: String) {
          self.init(unsafeResultMap: ["__typename": "TableRow", "title": title, "subtitle": subtitle, "value": value])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var title: String {
          get {
            return resultMap["title"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var subtitle: String? {
          get {
            return resultMap["subtitle"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "subtitle")
          }
        }

        public var value: String {
          get {
            return resultMap["value"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "value")
          }
        }
      }
    }
  }
}
