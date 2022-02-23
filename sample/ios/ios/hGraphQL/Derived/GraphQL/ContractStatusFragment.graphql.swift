// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  struct ContractStatusFragment: GraphQLFragment {
    /// The raw GraphQL definition of this fragment.
    public static let fragmentDefinition: String =
      """
      fragment ContractStatusFragment on ContractStatus {
        __typename
        ... on PendingStatus {
          pendingSince
        }
        ... on ActiveInFutureStatus {
          futureInception
        }
        ... on ActiveStatus {
          pastInception
        }
        ... on ActiveInFutureAndTerminatedInFutureStatus {
          futureInception
          futureTermination
        }
        ... on TerminatedInFutureStatus {
          futureTermination
        }
        ... on TerminatedTodayStatus {
          today
        }
        ... on TerminatedStatus {
          termination
        }
      }
      """

    public static let possibleTypes: [String] = ["PendingStatus", "ActiveInFutureStatus", "ActiveStatus", "ActiveInFutureAndTerminatedInFutureStatus", "TerminatedInFutureStatus", "TerminatedTodayStatus", "TerminatedStatus"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLTypeCase(
          variants: ["PendingStatus": AsPendingStatus.selections, "ActiveInFutureStatus": AsActiveInFutureStatus.selections, "ActiveStatus": AsActiveStatus.selections, "ActiveInFutureAndTerminatedInFutureStatus": AsActiveInFutureAndTerminatedInFutureStatus.selections, "TerminatedInFutureStatus": AsTerminatedInFutureStatus.selections, "TerminatedTodayStatus": AsTerminatedTodayStatus.selections, "TerminatedStatus": AsTerminatedStatus.selections],
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

    public static func makePendingStatus(pendingSince: String? = nil) -> ContractStatusFragment {
      return ContractStatusFragment(unsafeResultMap: ["__typename": "PendingStatus", "pendingSince": pendingSince])
    }

    public static func makeActiveInFutureStatus(futureInception: String? = nil) -> ContractStatusFragment {
      return ContractStatusFragment(unsafeResultMap: ["__typename": "ActiveInFutureStatus", "futureInception": futureInception])
    }

    public static func makeActiveStatus(pastInception: String? = nil) -> ContractStatusFragment {
      return ContractStatusFragment(unsafeResultMap: ["__typename": "ActiveStatus", "pastInception": pastInception])
    }

    public static func makeActiveInFutureAndTerminatedInFutureStatus(futureInception: String? = nil, futureTermination: String? = nil) -> ContractStatusFragment {
      return ContractStatusFragment(unsafeResultMap: ["__typename": "ActiveInFutureAndTerminatedInFutureStatus", "futureInception": futureInception, "futureTermination": futureTermination])
    }

    public static func makeTerminatedInFutureStatus(futureTermination: String? = nil) -> ContractStatusFragment {
      return ContractStatusFragment(unsafeResultMap: ["__typename": "TerminatedInFutureStatus", "futureTermination": futureTermination])
    }

    public static func makeTerminatedTodayStatus(today: String? = nil) -> ContractStatusFragment {
      return ContractStatusFragment(unsafeResultMap: ["__typename": "TerminatedTodayStatus", "today": today])
    }

    public static func makeTerminatedStatus(termination: String? = nil) -> ContractStatusFragment {
      return ContractStatusFragment(unsafeResultMap: ["__typename": "TerminatedStatus", "termination": termination])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var asPendingStatus: AsPendingStatus? {
      get {
        if !AsPendingStatus.possibleTypes.contains(__typename) { return nil }
        return AsPendingStatus(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap = newValue.resultMap
      }
    }

    public struct AsPendingStatus: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PendingStatus"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pendingSince", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pendingSince: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "PendingStatus", "pendingSince": pendingSince])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var pendingSince: String? {
        get {
          return resultMap["pendingSince"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "pendingSince")
        }
      }
    }

    public var asActiveInFutureStatus: AsActiveInFutureStatus? {
      get {
        if !AsActiveInFutureStatus.possibleTypes.contains(__typename) { return nil }
        return AsActiveInFutureStatus(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap = newValue.resultMap
      }
    }

    public struct AsActiveInFutureStatus: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ActiveInFutureStatus"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("futureInception", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(futureInception: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "ActiveInFutureStatus", "futureInception": futureInception])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var futureInception: String? {
        get {
          return resultMap["futureInception"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "futureInception")
        }
      }
    }

    public var asActiveStatus: AsActiveStatus? {
      get {
        if !AsActiveStatus.possibleTypes.contains(__typename) { return nil }
        return AsActiveStatus(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap = newValue.resultMap
      }
    }

    public struct AsActiveStatus: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ActiveStatus"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("pastInception", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pastInception: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "ActiveStatus", "pastInception": pastInception])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var pastInception: String? {
        get {
          return resultMap["pastInception"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "pastInception")
        }
      }
    }

    public var asActiveInFutureAndTerminatedInFutureStatus: AsActiveInFutureAndTerminatedInFutureStatus? {
      get {
        if !AsActiveInFutureAndTerminatedInFutureStatus.possibleTypes.contains(__typename) { return nil }
        return AsActiveInFutureAndTerminatedInFutureStatus(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap = newValue.resultMap
      }
    }

    public struct AsActiveInFutureAndTerminatedInFutureStatus: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ActiveInFutureAndTerminatedInFutureStatus"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("futureInception", type: .scalar(String.self)),
          GraphQLField("futureTermination", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(futureInception: String? = nil, futureTermination: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "ActiveInFutureAndTerminatedInFutureStatus", "futureInception": futureInception, "futureTermination": futureTermination])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var futureInception: String? {
        get {
          return resultMap["futureInception"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "futureInception")
        }
      }

      public var futureTermination: String? {
        get {
          return resultMap["futureTermination"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "futureTermination")
        }
      }
    }

    public var asTerminatedInFutureStatus: AsTerminatedInFutureStatus? {
      get {
        if !AsTerminatedInFutureStatus.possibleTypes.contains(__typename) { return nil }
        return AsTerminatedInFutureStatus(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap = newValue.resultMap
      }
    }

    public struct AsTerminatedInFutureStatus: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["TerminatedInFutureStatus"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("futureTermination", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(futureTermination: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "TerminatedInFutureStatus", "futureTermination": futureTermination])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var futureTermination: String? {
        get {
          return resultMap["futureTermination"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "futureTermination")
        }
      }
    }

    public var asTerminatedTodayStatus: AsTerminatedTodayStatus? {
      get {
        if !AsTerminatedTodayStatus.possibleTypes.contains(__typename) { return nil }
        return AsTerminatedTodayStatus(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap = newValue.resultMap
      }
    }

    public struct AsTerminatedTodayStatus: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["TerminatedTodayStatus"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("today", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(today: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "TerminatedTodayStatus", "today": today])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var today: String? {
        get {
          return resultMap["today"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "today")
        }
      }
    }

    public var asTerminatedStatus: AsTerminatedStatus? {
      get {
        if !AsTerminatedStatus.possibleTypes.contains(__typename) { return nil }
        return AsTerminatedStatus(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap = newValue.resultMap
      }
    }

    public struct AsTerminatedStatus: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["TerminatedStatus"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("termination", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(termination: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "TerminatedStatus", "termination": termination])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var termination: String? {
        get {
          return resultMap["termination"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "termination")
        }
      }
    }
  }
}
