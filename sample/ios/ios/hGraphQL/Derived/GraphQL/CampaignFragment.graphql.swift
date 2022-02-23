// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  struct CampaignFragment: GraphQLFragment {
    /// The raw GraphQL definition of this fragment.
    public static let fragmentDefinition: String =
      """
      fragment CampaignFragment on Campaign {
        __typename
        code
        incentive {
          __typename
          ...IncentiveFragment
        }
      }
      """

    public static let possibleTypes: [String] = ["Campaign"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("code", type: .nonNull(.scalar(String.self))),
        GraphQLField("incentive", type: .object(Incentive.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(code: String, incentive: Incentive? = nil) {
      self.init(unsafeResultMap: ["__typename": "Campaign", "code": code, "incentive": incentive.flatMap { (value: Incentive) -> ResultMap in value.resultMap }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var code: String {
      get {
        return resultMap["code"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "code")
      }
    }

    public var incentive: Incentive? {
      get {
        return (resultMap["incentive"] as? ResultMap).flatMap { Incentive(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "incentive")
      }
    }

    public struct Incentive: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MonthlyCostDeduction", "FreeMonths", "NoDiscount", "VisibleNoDiscount", "PercentageDiscountMonths", "IndefinitePercentageDiscount"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLTypeCase(
            variants: ["FreeMonths": AsFreeMonths.selections, "MonthlyCostDeduction": AsMonthlyCostDeduction.selections, "PercentageDiscountMonths": AsPercentageDiscountMonths.selections, "IndefinitePercentageDiscount": AsIndefinitePercentageDiscount.selections],
            default: [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            ]
          )
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public static func makeNoDiscount() -> Incentive {
        return Incentive(unsafeResultMap: ["__typename": "NoDiscount"])
      }

      public static func makeVisibleNoDiscount() -> Incentive {
        return Incentive(unsafeResultMap: ["__typename": "VisibleNoDiscount"])
      }

      public static func makeFreeMonths(quantity: Int? = nil) -> Incentive {
        return Incentive(unsafeResultMap: ["__typename": "FreeMonths", "quantity": quantity])
      }

      public static func makeMonthlyCostDeduction(amount: AsMonthlyCostDeduction.Amount? = nil) -> Incentive {
        return Incentive(unsafeResultMap: ["__typename": "MonthlyCostDeduction", "amount": amount.flatMap { (value: AsMonthlyCostDeduction.Amount) -> ResultMap in value.resultMap }])
      }

      public static func makePercentageDiscountMonths(percentageDiscount: Double, percentageNumberOfMonths: Int) -> Incentive {
        return Incentive(unsafeResultMap: ["__typename": "PercentageDiscountMonths", "percentageDiscount": percentageDiscount, "percentageNumberOfMonths": percentageNumberOfMonths])
      }

      public static func makeIndefinitePercentageDiscount(percentageDiscount: Double) -> Incentive {
        return Incentive(unsafeResultMap: ["__typename": "IndefinitePercentageDiscount", "percentageDiscount": percentageDiscount])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
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

        public var incentiveFragment: IncentiveFragment {
          get {
            return IncentiveFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }

      public var asFreeMonths: AsFreeMonths? {
        get {
          if !AsFreeMonths.possibleTypes.contains(__typename) { return nil }
          return AsFreeMonths(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap = newValue.resultMap
        }
      }

      public struct AsFreeMonths: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["FreeMonths"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("quantity", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(quantity: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "FreeMonths", "quantity": quantity])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var quantity: Int? {
          get {
            return resultMap["quantity"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "quantity")
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

          public var incentiveFragment: IncentiveFragment {
            get {
              return IncentiveFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }

      public var asMonthlyCostDeduction: AsMonthlyCostDeduction? {
        get {
          if !AsMonthlyCostDeduction.possibleTypes.contains(__typename) { return nil }
          return AsMonthlyCostDeduction(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap = newValue.resultMap
        }
      }

      public struct AsMonthlyCostDeduction: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["MonthlyCostDeduction"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("amount", type: .object(Amount.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(amount: Amount? = nil) {
          self.init(unsafeResultMap: ["__typename": "MonthlyCostDeduction", "amount": amount.flatMap { (value: Amount) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var amount: Amount? {
          get {
            return (resultMap["amount"] as? ResultMap).flatMap { Amount(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "amount")
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

          public var incentiveFragment: IncentiveFragment {
            get {
              return IncentiveFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }

        public struct Amount: GraphQLSelectionSet {
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

      public var asPercentageDiscountMonths: AsPercentageDiscountMonths? {
        get {
          if !AsPercentageDiscountMonths.possibleTypes.contains(__typename) { return nil }
          return AsPercentageDiscountMonths(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap = newValue.resultMap
        }
      }

      public struct AsPercentageDiscountMonths: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PercentageDiscountMonths"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("percentageDiscount", type: .nonNull(.scalar(Double.self))),
            GraphQLField("quantity", alias: "percentageNumberOfMonths", type: .nonNull(.scalar(Int.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(percentageDiscount: Double, percentageNumberOfMonths: Int) {
          self.init(unsafeResultMap: ["__typename": "PercentageDiscountMonths", "percentageDiscount": percentageDiscount, "percentageNumberOfMonths": percentageNumberOfMonths])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var percentageDiscount: Double {
          get {
            return resultMap["percentageDiscount"]! as! Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "percentageDiscount")
          }
        }

        public var percentageNumberOfMonths: Int {
          get {
            return resultMap["percentageNumberOfMonths"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "percentageNumberOfMonths")
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

          public var incentiveFragment: IncentiveFragment {
            get {
              return IncentiveFragment(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }
      }

      public var asIndefinitePercentageDiscount: AsIndefinitePercentageDiscount? {
        get {
          if !AsIndefinitePercentageDiscount.possibleTypes.contains(__typename) { return nil }
          return AsIndefinitePercentageDiscount(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap = newValue.resultMap
        }
      }

      public struct AsIndefinitePercentageDiscount: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["IndefinitePercentageDiscount"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("percentageDiscount", type: .nonNull(.scalar(Double.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(percentageDiscount: Double) {
          self.init(unsafeResultMap: ["__typename": "IndefinitePercentageDiscount", "percentageDiscount": percentageDiscount])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var percentageDiscount: Double {
          get {
            return resultMap["percentageDiscount"]! as! Double
          }
          set {
            resultMap.updateValue(newValue, forKey: "percentageDiscount")
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

          public var incentiveFragment: IncentiveFragment {
            get {
              return IncentiveFragment(unsafeResultMap: resultMap)
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
