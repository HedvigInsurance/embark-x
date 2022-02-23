// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  struct CostFragment: GraphQLFragment {
    /// The raw GraphQL definition of this fragment.
    public static let fragmentDefinition: String =
      """
      fragment CostFragment on InsuranceCost {
        __typename
        freeUntil
        monthlyDiscount {
          __typename
          ...MonetaryAmountFragment
        }
        monthlyGross {
          __typename
          ...MonetaryAmountFragment
        }
        monthlyNet {
          __typename
          ...MonetaryAmountFragment
        }
      }
      """

    public static let possibleTypes: [String] = ["InsuranceCost"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("freeUntil", type: .scalar(String.self)),
        GraphQLField("monthlyDiscount", type: .nonNull(.object(MonthlyDiscount.selections))),
        GraphQLField("monthlyGross", type: .nonNull(.object(MonthlyGross.selections))),
        GraphQLField("monthlyNet", type: .nonNull(.object(MonthlyNet.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(freeUntil: String? = nil, monthlyDiscount: MonthlyDiscount, monthlyGross: MonthlyGross, monthlyNet: MonthlyNet) {
      self.init(unsafeResultMap: ["__typename": "InsuranceCost", "freeUntil": freeUntil, "monthlyDiscount": monthlyDiscount.resultMap, "monthlyGross": monthlyGross.resultMap, "monthlyNet": monthlyNet.resultMap])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var freeUntil: String? {
      get {
        return resultMap["freeUntil"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "freeUntil")
      }
    }

    public var monthlyDiscount: MonthlyDiscount {
      get {
        return MonthlyDiscount(unsafeResultMap: resultMap["monthlyDiscount"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "monthlyDiscount")
      }
    }

    public var monthlyGross: MonthlyGross {
      get {
        return MonthlyGross(unsafeResultMap: resultMap["monthlyGross"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "monthlyGross")
      }
    }

    public var monthlyNet: MonthlyNet {
      get {
        return MonthlyNet(unsafeResultMap: resultMap["monthlyNet"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "monthlyNet")
      }
    }

    public struct MonthlyDiscount: GraphQLSelectionSet {
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

    public struct MonthlyGross: GraphQLSelectionSet {
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

    public struct MonthlyNet: GraphQLSelectionSet {
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
