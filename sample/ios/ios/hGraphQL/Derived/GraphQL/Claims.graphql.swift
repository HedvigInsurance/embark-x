// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  final class ClaimStatusCardsQuery: GraphQLQuery {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
      """
      query ClaimStatusCards($locale: Locale!) {
        claims_statusCards(locale: $locale) {
          __typename
          id
          pills {
            __typename
            text
            type
          }
          title
          subtitle
          progressSegments {
            __typename
            ...ProgressSegmentFragment
          }
          claim {
            __typename
            id
            outcome
            submittedAt
            closedAt
            signedAudioURL
            progressSegments {
              __typename
              ...ProgressSegmentFragment
            }
            statusParagraph
            payout {
              __typename
              ...MonetaryAmountFragment
            }
            type
          }
        }
      }
      """

    public let operationName: String = "ClaimStatusCards"

    public var queryDocument: String {
      var document: String = operationDefinition
      document.append("\n" + ProgressSegmentFragment.fragmentDefinition)
      document.append("\n" + MonetaryAmountFragment.fragmentDefinition)
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
          GraphQLField("claims_statusCards", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.object(ClaimsStatusCard.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(claimsStatusCards: [ClaimsStatusCard]) {
        self.init(unsafeResultMap: ["__typename": "Query", "claims_statusCards": claimsStatusCards.map { (value: ClaimsStatusCard) -> ResultMap in value.resultMap }])
      }

      public var claimsStatusCards: [ClaimsStatusCard] {
        get {
          return (resultMap["claims_statusCards"] as! [ResultMap]).map { (value: ResultMap) -> ClaimsStatusCard in ClaimsStatusCard(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: ClaimsStatusCard) -> ResultMap in value.resultMap }, forKey: "claims_statusCards")
        }
      }

      public struct ClaimsStatusCard: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ClaimStatusCard"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("pills", type: .nonNull(.list(.nonNull(.object(Pill.selections))))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("subtitle", type: .nonNull(.scalar(String.self))),
            GraphQLField("progressSegments", type: .nonNull(.list(.nonNull(.object(ProgressSegment.selections))))),
            GraphQLField("claim", type: .nonNull(.object(Claim.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, pills: [Pill], title: String, subtitle: String, progressSegments: [ProgressSegment], claim: Claim) {
          self.init(unsafeResultMap: ["__typename": "ClaimStatusCard", "id": id, "pills": pills.map { (value: Pill) -> ResultMap in value.resultMap }, "title": title, "subtitle": subtitle, "progressSegments": progressSegments.map { (value: ProgressSegment) -> ResultMap in value.resultMap }, "claim": claim.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var pills: [Pill] {
          get {
            return (resultMap["pills"] as! [ResultMap]).map { (value: ResultMap) -> Pill in Pill(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: Pill) -> ResultMap in value.resultMap }, forKey: "pills")
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

        public var subtitle: String {
          get {
            return resultMap["subtitle"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "subtitle")
          }
        }

        public var progressSegments: [ProgressSegment] {
          get {
            return (resultMap["progressSegments"] as! [ResultMap]).map { (value: ResultMap) -> ProgressSegment in ProgressSegment(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: ProgressSegment) -> ResultMap in value.resultMap }, forKey: "progressSegments")
          }
        }

        /// The underlying Claim represented by this status-card
        public var claim: Claim {
          get {
            return Claim(unsafeResultMap: resultMap["claim"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "claim")
          }
        }

        public struct Pill: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ClaimStatusCardPill"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("text", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .nonNull(.scalar(ClaimStatusCardPillType.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(text: String, type: ClaimStatusCardPillType) {
            self.init(unsafeResultMap: ["__typename": "ClaimStatusCardPill", "text": text, "type": type])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var text: String {
            get {
              return resultMap["text"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "text")
            }
          }

          public var type: ClaimStatusCardPillType {
            get {
              return resultMap["type"]! as! ClaimStatusCardPillType
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }
        }

        public struct ProgressSegment: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ClaimStatusProgressSegment"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("text", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .nonNull(.scalar(ClaimStatusProgressType.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(text: String, type: ClaimStatusProgressType) {
            self.init(unsafeResultMap: ["__typename": "ClaimStatusProgressSegment", "text": text, "type": type])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var text: String {
            get {
              return resultMap["text"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "text")
            }
          }

          public var type: ClaimStatusProgressType {
            get {
              return resultMap["type"]! as! ClaimStatusProgressType
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
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

            public var progressSegmentFragment: ProgressSegmentFragment {
              get {
                return ProgressSegmentFragment(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }
          }
        }

        public struct Claim: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Claim"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(String.self))),
              GraphQLField("outcome", type: .scalar(ClaimOutcome.self)),
              GraphQLField("submittedAt", type: .nonNull(.scalar(String.self))),
              GraphQLField("closedAt", type: .scalar(String.self)),
              GraphQLField("signedAudioURL", type: .scalar(String.self)),
              GraphQLField("progressSegments", type: .nonNull(.list(.nonNull(.object(ProgressSegment.selections))))),
              GraphQLField("statusParagraph", type: .nonNull(.scalar(String.self))),
              GraphQLField("payout", type: .object(Payout.selections)),
              GraphQLField("type", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: String, outcome: ClaimOutcome? = nil, submittedAt: String, closedAt: String? = nil, signedAudioUrl: String? = nil, progressSegments: [ProgressSegment], statusParagraph: String, payout: Payout? = nil, type: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Claim", "id": id, "outcome": outcome, "submittedAt": submittedAt, "closedAt": closedAt, "signedAudioURL": signedAudioUrl, "progressSegments": progressSegments.map { (value: ProgressSegment) -> ResultMap in value.resultMap }, "statusParagraph": statusParagraph, "payout": payout.flatMap { (value: Payout) -> ResultMap in value.resultMap }, "type": type])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
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

          public var outcome: ClaimOutcome? {
            get {
              return resultMap["outcome"] as? ClaimOutcome
            }
            set {
              resultMap.updateValue(newValue, forKey: "outcome")
            }
          }

          public var submittedAt: String {
            get {
              return resultMap["submittedAt"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "submittedAt")
            }
          }

          public var closedAt: String? {
            get {
              return resultMap["closedAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "closedAt")
            }
          }

          public var signedAudioUrl: String? {
            get {
              return resultMap["signedAudioURL"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "signedAudioURL")
            }
          }

          public var progressSegments: [ProgressSegment] {
            get {
              return (resultMap["progressSegments"] as! [ResultMap]).map { (value: ResultMap) -> ProgressSegment in ProgressSegment(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: ProgressSegment) -> ResultMap in value.resultMap }, forKey: "progressSegments")
            }
          }

          /// Brief explanation of the current status of this `Claim`
          public var statusParagraph: String {
            get {
              return resultMap["statusParagraph"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "statusParagraph")
            }
          }

          public var payout: Payout? {
            get {
              return (resultMap["payout"] as? ResultMap).flatMap { Payout(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "payout")
            }
          }

          /// Localized end-user presentable `Claim`-type
          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public struct ProgressSegment: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ClaimStatusProgressSegment"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("text", type: .nonNull(.scalar(String.self))),
                GraphQLField("type", type: .nonNull(.scalar(ClaimStatusProgressType.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(text: String, type: ClaimStatusProgressType) {
              self.init(unsafeResultMap: ["__typename": "ClaimStatusProgressSegment", "text": text, "type": type])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var text: String {
              get {
                return resultMap["text"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "text")
              }
            }

            public var type: ClaimStatusProgressType {
              get {
                return resultMap["type"]! as! ClaimStatusProgressType
              }
              set {
                resultMap.updateValue(newValue, forKey: "type")
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

              public var progressSegmentFragment: ProgressSegmentFragment {
                get {
                  return ProgressSegmentFragment(unsafeResultMap: resultMap)
                }
                set {
                  resultMap += newValue.resultMap
                }
              }
            }
          }

          public struct Payout: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["MonetaryAmountV2"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
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

              public var monetaryAmountFragment: MonetaryAmountFragment {
                get {
                  return MonetaryAmountFragment(unsafeResultMap: resultMap)
                }
                set {
                  resultMap += newValue.resultMap
                }
              }
            }
          }
        }
      }
    }
  }

  struct ProgressSegmentFragment: GraphQLFragment {
    /// The raw GraphQL definition of this fragment.
    public static let fragmentDefinition: String =
      """
      fragment ProgressSegmentFragment on ClaimStatusProgressSegment {
        __typename
        text
        type
      }
      """

    public static let possibleTypes: [String] = ["ClaimStatusProgressSegment"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("text", type: .nonNull(.scalar(String.self))),
        GraphQLField("type", type: .nonNull(.scalar(ClaimStatusProgressType.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(text: String, type: ClaimStatusProgressType) {
      self.init(unsafeResultMap: ["__typename": "ClaimStatusProgressSegment", "text": text, "type": type])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var text: String {
      get {
        return resultMap["text"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "text")
      }
    }

    public var type: ClaimStatusProgressType {
      get {
        return resultMap["type"]! as! ClaimStatusProgressType
      }
      set {
        resultMap.updateValue(newValue, forKey: "type")
      }
    }
  }
}
