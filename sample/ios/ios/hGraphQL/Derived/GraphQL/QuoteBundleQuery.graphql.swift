// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  final class QuoteBundleQuery: GraphQLQuery {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
      """
      query QuoteBundle($ids: [ID!]!, $locale: Locale!) {
        quoteBundle(input: {ids: $ids}) {
          __typename
          possibleVariations {
            __typename
            id
            tag(locale: $locale)
            bundle {
              __typename
              displayName(locale: $locale)
              quotes {
                __typename
                ... on BundledQuote {
                  dataCollectionId
                  id
                  ssn
                  email
                  displayName(locale: $locale)
                  detailsTable(locale: $locale) {
                    __typename
                    ...DetailsTableFragment
                  }
                  contractPerils(locale: $locale) {
                    __typename
                    ...PerilFragment
                  }
                  insurableLimits(locale: $locale) {
                    __typename
                    ...InsurableLimitFragment
                  }
                  insuranceTerms(locale: $locale) {
                    __typename
                    displayName
                    url
                    type
                  }
                }
              }
              displayName(locale: $locale)
              bundleCost {
                __typename
                ...CostFragment
              }
              frequentlyAskedQuestions(locale: $locale) {
                __typename
                id
                headline
                body
              }
              inception {
                __typename
                ...InceptionFragment
              }
              appConfiguration {
                __typename
                showCampaignManagement
                showFAQ
                ignoreCampaigns
                approveButtonTerminology
                startDateTerminology
                title
                gradientOption
              }
            }
          }
        }
        signMethodForQuotes(input: $ids)
        redeemedCampaigns {
          __typename
          displayValue(locale: $locale)
        }
      }
      """

    public let operationName: String = "QuoteBundle"

    public var queryDocument: String {
      var document: String = operationDefinition
      document.append("\n" + DetailsTableFragment.fragmentDefinition)
      document.append("\n" + PerilFragment.fragmentDefinition)
      document.append("\n" + IconFragment.fragmentDefinition)
      document.append("\n" + InsurableLimitFragment.fragmentDefinition)
      document.append("\n" + CostFragment.fragmentDefinition)
      document.append("\n" + MonetaryAmountFragment.fragmentDefinition)
      document.append("\n" + InceptionFragment.fragmentDefinition)
      return document
    }

    public var ids: [GraphQLID]
    public var locale: Locale

    public init(ids: [GraphQLID], locale: Locale) {
      self.ids = ids
      self.locale = locale
    }

    public var variables: GraphQLMap? {
      return ["ids": ids, "locale": locale]
    }

    public struct Data: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Query"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("quoteBundle", arguments: ["input": ["ids": GraphQLVariable("ids")]], type: .nonNull(.object(QuoteBundle.selections))),
          GraphQLField("signMethodForQuotes", arguments: ["input": GraphQLVariable("ids")], type: .nonNull(.scalar(SignMethod.self))),
          GraphQLField("redeemedCampaigns", type: .nonNull(.list(.nonNull(.object(RedeemedCampaign.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(quoteBundle: QuoteBundle, signMethodForQuotes: SignMethod, redeemedCampaigns: [RedeemedCampaign]) {
        self.init(unsafeResultMap: ["__typename": "Query", "quoteBundle": quoteBundle.resultMap, "signMethodForQuotes": signMethodForQuotes, "redeemedCampaigns": redeemedCampaigns.map { (value: RedeemedCampaign) -> ResultMap in value.resultMap }])
      }

      public var quoteBundle: QuoteBundle {
        get {
          return QuoteBundle(unsafeResultMap: resultMap["quoteBundle"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "quoteBundle")
        }
      }

      public var signMethodForQuotes: SignMethod {
        get {
          return resultMap["signMethodForQuotes"]! as! SignMethod
        }
        set {
          resultMap.updateValue(newValue, forKey: "signMethodForQuotes")
        }
      }

      /// Returns redeemed campaigns belonging to authedUser
      public var redeemedCampaigns: [RedeemedCampaign] {
        get {
          return (resultMap["redeemedCampaigns"] as! [ResultMap]).map { (value: ResultMap) -> RedeemedCampaign in RedeemedCampaign(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: RedeemedCampaign) -> ResultMap in value.resultMap }, forKey: "redeemedCampaigns")
        }
      }

      public struct QuoteBundle: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["QuoteBundle"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("possibleVariations", type: .nonNull(.list(.nonNull(.object(PossibleVariation.selections))))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(possibleVariations: [PossibleVariation]) {
          self.init(unsafeResultMap: ["__typename": "QuoteBundle", "possibleVariations": possibleVariations.map { (value: PossibleVariation) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// All possible other variations of the current set of bundle ids
        public var possibleVariations: [PossibleVariation] {
          get {
            return (resultMap["possibleVariations"] as! [ResultMap]).map { (value: ResultMap) -> PossibleVariation in PossibleVariation(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: PossibleVariation) -> ResultMap in value.resultMap }, forKey: "possibleVariations")
          }
        }

        public struct PossibleVariation: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["QuoteBundleVariant"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("tag", arguments: ["locale": GraphQLVariable("locale")], type: .scalar(String.self)),
              GraphQLField("bundle", type: .nonNull(.object(Bundle.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, tag: String? = nil, bundle: Bundle) {
            self.init(unsafeResultMap: ["__typename": "QuoteBundleVariant", "id": id, "tag": tag, "bundle": bundle.resultMap])
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

          /// A describing tag of this variant, for example "Most popular"
          public var tag: String? {
            get {
              return resultMap["tag"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "tag")
            }
          }

          public var bundle: Bundle {
            get {
              return Bundle(unsafeResultMap: resultMap["bundle"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "bundle")
            }
          }

          public struct Bundle: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["QuoteBundle"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("displayName", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.scalar(String.self))),
                GraphQLField("quotes", type: .nonNull(.list(.nonNull(.object(Quote.selections))))),
                GraphQLField("displayName", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.scalar(String.self))),
                GraphQLField("bundleCost", type: .nonNull(.object(BundleCost.selections))),
                GraphQLField("frequentlyAskedQuestions", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.object(FrequentlyAskedQuestion.selections))))),
                GraphQLField("inception", type: .nonNull(.object(Inception.selections))),
                GraphQLField("appConfiguration", type: .nonNull(.object(AppConfiguration.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(displayName: String, quotes: [Quote], bundleCost: BundleCost, frequentlyAskedQuestions: [FrequentlyAskedQuestion], inception: Inception, appConfiguration: AppConfiguration) {
              self.init(unsafeResultMap: ["__typename": "QuoteBundle", "displayName": displayName, "quotes": quotes.map { (value: Quote) -> ResultMap in value.resultMap }, "bundleCost": bundleCost.resultMap, "frequentlyAskedQuestions": frequentlyAskedQuestions.map { (value: FrequentlyAskedQuestion) -> ResultMap in value.resultMap }, "inception": inception.resultMap, "appConfiguration": appConfiguration.resultMap])
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

            public var quotes: [Quote] {
              get {
                return (resultMap["quotes"] as! [ResultMap]).map { (value: ResultMap) -> Quote in Quote(unsafeResultMap: value) }
              }
              set {
                resultMap.updateValue(newValue.map { (value: Quote) -> ResultMap in value.resultMap }, forKey: "quotes")
              }
            }

            public var bundleCost: BundleCost {
              get {
                return BundleCost(unsafeResultMap: resultMap["bundleCost"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "bundleCost")
              }
            }

            public var frequentlyAskedQuestions: [FrequentlyAskedQuestion] {
              get {
                return (resultMap["frequentlyAskedQuestions"] as! [ResultMap]).map { (value: ResultMap) -> FrequentlyAskedQuestion in FrequentlyAskedQuestion(unsafeResultMap: value) }
              }
              set {
                resultMap.updateValue(newValue.map { (value: FrequentlyAskedQuestion) -> ResultMap in value.resultMap }, forKey: "frequentlyAskedQuestions")
              }
            }

            public var inception: Inception {
              get {
                return Inception(unsafeResultMap: resultMap["inception"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "inception")
              }
            }

            public var appConfiguration: AppConfiguration {
              get {
                return AppConfiguration(unsafeResultMap: resultMap["appConfiguration"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "appConfiguration")
              }
            }

            public struct Quote: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["BundledQuote"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("dataCollectionId", type: .scalar(GraphQLID.self)),
                  GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                  GraphQLField("ssn", type: .scalar(String.self)),
                  GraphQLField("email", type: .scalar(String.self)),
                  GraphQLField("displayName", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.scalar(String.self))),
                  GraphQLField("detailsTable", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.object(DetailsTable.selections))),
                  GraphQLField("contractPerils", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.object(ContractPeril.selections))))),
                  GraphQLField("insurableLimits", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.object(InsurableLimit.selections))))),
                  GraphQLField("insuranceTerms", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.object(InsuranceTerm.selections))))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(dataCollectionId: GraphQLID? = nil, id: GraphQLID, ssn: String? = nil, email: String? = nil, displayName: String, detailsTable: DetailsTable, contractPerils: [ContractPeril], insurableLimits: [InsurableLimit], insuranceTerms: [InsuranceTerm]) {
                self.init(unsafeResultMap: ["__typename": "BundledQuote", "dataCollectionId": dataCollectionId, "id": id, "ssn": ssn, "email": email, "displayName": displayName, "detailsTable": detailsTable.resultMap, "contractPerils": contractPerils.map { (value: ContractPeril) -> ResultMap in value.resultMap }, "insurableLimits": insurableLimits.map { (value: InsurableLimit) -> ResultMap in value.resultMap }, "insuranceTerms": insuranceTerms.map { (value: InsuranceTerm) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var dataCollectionId: GraphQLID? {
                get {
                  return resultMap["dataCollectionId"] as? GraphQLID
                }
                set {
                  resultMap.updateValue(newValue, forKey: "dataCollectionId")
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

              public var ssn: String? {
                get {
                  return resultMap["ssn"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "ssn")
                }
              }

              public var email: String? {
                get {
                  return resultMap["email"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "email")
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

              public var detailsTable: DetailsTable {
                get {
                  return DetailsTable(unsafeResultMap: resultMap["detailsTable"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "detailsTable")
                }
              }

              public var contractPerils: [ContractPeril] {
                get {
                  return (resultMap["contractPerils"] as! [ResultMap]).map { (value: ResultMap) -> ContractPeril in ContractPeril(unsafeResultMap: value) }
                }
                set {
                  resultMap.updateValue(newValue.map { (value: ContractPeril) -> ResultMap in value.resultMap }, forKey: "contractPerils")
                }
              }

              public var insurableLimits: [InsurableLimit] {
                get {
                  return (resultMap["insurableLimits"] as! [ResultMap]).map { (value: ResultMap) -> InsurableLimit in InsurableLimit(unsafeResultMap: value) }
                }
                set {
                  resultMap.updateValue(newValue.map { (value: InsurableLimit) -> ResultMap in value.resultMap }, forKey: "insurableLimits")
                }
              }

              public var insuranceTerms: [InsuranceTerm] {
                get {
                  return (resultMap["insuranceTerms"] as! [ResultMap]).map { (value: ResultMap) -> InsuranceTerm in InsuranceTerm(unsafeResultMap: value) }
                }
                set {
                  resultMap.updateValue(newValue.map { (value: InsuranceTerm) -> ResultMap in value.resultMap }, forKey: "insuranceTerms")
                }
              }

              public struct DetailsTable: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["Table"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
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

                  public var detailsTableFragment: DetailsTableFragment {
                    get {
                      return DetailsTableFragment(unsafeResultMap: resultMap)
                    }
                    set {
                      resultMap += newValue.resultMap
                    }
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

              public struct ContractPeril: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["PerilV2"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("title", type: .nonNull(.scalar(String.self))),
                    GraphQLField("description", type: .nonNull(.scalar(String.self))),
                    GraphQLField("icon", type: .nonNull(.object(Icon.selections))),
                    GraphQLField("covered", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
                    GraphQLField("exceptions", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(title: String, description: String, icon: Icon, covered: [String], exceptions: [String]) {
                  self.init(unsafeResultMap: ["__typename": "PerilV2", "title": title, "description": description, "icon": icon.resultMap, "covered": covered, "exceptions": exceptions])
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

                public var description: String {
                  get {
                    return resultMap["description"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "description")
                  }
                }

                public var icon: Icon {
                  get {
                    return Icon(unsafeResultMap: resultMap["icon"]! as! ResultMap)
                  }
                  set {
                    resultMap.updateValue(newValue.resultMap, forKey: "icon")
                  }
                }

                public var covered: [String] {
                  get {
                    return resultMap["covered"]! as! [String]
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "covered")
                  }
                }

                public var exceptions: [String] {
                  get {
                    return resultMap["exceptions"]! as! [String]
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "exceptions")
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

                  public var perilFragment: PerilFragment {
                    get {
                      return PerilFragment(unsafeResultMap: resultMap)
                    }
                    set {
                      resultMap += newValue.resultMap
                    }
                  }
                }

                public struct Icon: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["Icon"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
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

                    public var iconFragment: IconFragment {
                      get {
                        return IconFragment(unsafeResultMap: resultMap)
                      }
                      set {
                        resultMap += newValue.resultMap
                      }
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

              public struct InsurableLimit: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["InsurableLimit"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("label", type: .nonNull(.scalar(String.self))),
                    GraphQLField("limit", type: .nonNull(.scalar(String.self))),
                    GraphQLField("description", type: .nonNull(.scalar(String.self))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(label: String, limit: String, description: String) {
                  self.init(unsafeResultMap: ["__typename": "InsurableLimit", "label": label, "limit": limit, "description": description])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var label: String {
                  get {
                    return resultMap["label"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "label")
                  }
                }

                public var limit: String {
                  get {
                    return resultMap["limit"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "limit")
                  }
                }

                public var description: String {
                  get {
                    return resultMap["description"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "description")
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

                  public var insurableLimitFragment: InsurableLimitFragment {
                    get {
                      return InsurableLimitFragment(unsafeResultMap: resultMap)
                    }
                    set {
                      resultMap += newValue.resultMap
                    }
                  }
                }
              }

              public struct InsuranceTerm: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["InsuranceTerm"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
                    GraphQLField("url", type: .nonNull(.scalar(String.self))),
                    GraphQLField("type", type: .scalar(InsuranceTermType.self)),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(displayName: String, url: String, type: InsuranceTermType? = nil) {
                  self.init(unsafeResultMap: ["__typename": "InsuranceTerm", "displayName": displayName, "url": url, "type": type])
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

                public var url: String {
                  get {
                    return resultMap["url"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "url")
                  }
                }

                public var type: InsuranceTermType? {
                  get {
                    return resultMap["type"] as? InsuranceTermType
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "type")
                  }
                }
              }
            }

            public struct BundleCost: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["InsuranceCost"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
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

                public var costFragment: CostFragment {
                  get {
                    return CostFragment(unsafeResultMap: resultMap)
                  }
                  set {
                    resultMap += newValue.resultMap
                  }
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

            public struct FrequentlyAskedQuestion: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["Faq"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                  GraphQLField("headline", type: .scalar(String.self)),
                  GraphQLField("body", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(id: GraphQLID, headline: String? = nil, body: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "Faq", "id": id, "headline": headline, "body": body])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The unique identifier
              public var id: GraphQLID {
                get {
                  return resultMap["id"]! as! GraphQLID
                }
                set {
                  resultMap.updateValue(newValue, forKey: "id")
                }
              }

              public var headline: String? {
                get {
                  return resultMap["headline"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "headline")
                }
              }

              public var body: String? {
                get {
                  return resultMap["body"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "body")
                }
              }
            }

            public struct Inception: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ConcurrentInception", "IndependentInceptions"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLTypeCase(
                    variants: ["ConcurrentInception": AsConcurrentInception.selections, "IndependentInceptions": AsIndependentInceptions.selections],
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

              public static func makeConcurrentInception(correspondingQuotes: [AsConcurrentInception.CorrespondingQuote], startDate: String? = nil, currentInsurer: AsConcurrentInception.CurrentInsurer? = nil) -> Inception {
                return Inception(unsafeResultMap: ["__typename": "ConcurrentInception", "correspondingQuotes": correspondingQuotes.map { (value: AsConcurrentInception.CorrespondingQuote) -> ResultMap in value.resultMap }, "startDate": startDate, "currentInsurer": currentInsurer.flatMap { (value: AsConcurrentInception.CurrentInsurer) -> ResultMap in value.resultMap }])
              }

              public static func makeIndependentInceptions(inceptions: [AsIndependentInceptions.Inception]) -> Inception {
                return Inception(unsafeResultMap: ["__typename": "IndependentInceptions", "inceptions": inceptions.map { (value: AsIndependentInceptions.Inception) -> ResultMap in value.resultMap }])
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

                public var inceptionFragment: InceptionFragment {
                  get {
                    return InceptionFragment(unsafeResultMap: resultMap)
                  }
                  set {
                    resultMap += newValue.resultMap
                  }
                }
              }

              public var asConcurrentInception: AsConcurrentInception? {
                get {
                  if !AsConcurrentInception.possibleTypes.contains(__typename) { return nil }
                  return AsConcurrentInception(unsafeResultMap: resultMap)
                }
                set {
                  guard let newValue = newValue else { return }
                  resultMap = newValue.resultMap
                }
              }

              public struct AsConcurrentInception: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["ConcurrentInception"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("correspondingQuotes", type: .nonNull(.list(.nonNull(.object(CorrespondingQuote.selections))))),
                    GraphQLField("startDate", type: .scalar(String.self)),
                    GraphQLField("currentInsurer", type: .object(CurrentInsurer.selections)),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(correspondingQuotes: [CorrespondingQuote], startDate: String? = nil, currentInsurer: CurrentInsurer? = nil) {
                  self.init(unsafeResultMap: ["__typename": "ConcurrentInception", "correspondingQuotes": correspondingQuotes.map { (value: CorrespondingQuote) -> ResultMap in value.resultMap }, "startDate": startDate, "currentInsurer": currentInsurer.flatMap { (value: CurrentInsurer) -> ResultMap in value.resultMap }])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var correspondingQuotes: [CorrespondingQuote] {
                  get {
                    return (resultMap["correspondingQuotes"] as! [ResultMap]).map { (value: ResultMap) -> CorrespondingQuote in CorrespondingQuote(unsafeResultMap: value) }
                  }
                  set {
                    resultMap.updateValue(newValue.map { (value: CorrespondingQuote) -> ResultMap in value.resultMap }, forKey: "correspondingQuotes")
                  }
                }

                public var startDate: String? {
                  get {
                    return resultMap["startDate"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "startDate")
                  }
                }

                public var currentInsurer: CurrentInsurer? {
                  get {
                    return (resultMap["currentInsurer"] as? ResultMap).flatMap { CurrentInsurer(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "currentInsurer")
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

                  public var inceptionFragment: InceptionFragment {
                    get {
                      return InceptionFragment(unsafeResultMap: resultMap)
                    }
                    set {
                      resultMap += newValue.resultMap
                    }
                  }
                }

                public struct CorrespondingQuote: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["CompleteQuote", "IncompleteQuote"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLTypeCase(
                        variants: ["CompleteQuote": AsCompleteQuote.selections],
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

                  public static func makeIncompleteQuote() -> CorrespondingQuote {
                    return CorrespondingQuote(unsafeResultMap: ["__typename": "IncompleteQuote"])
                  }

                  public static func makeCompleteQuote(id: GraphQLID) -> CorrespondingQuote {
                    return CorrespondingQuote(unsafeResultMap: ["__typename": "CompleteQuote", "id": id])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  public var asCompleteQuote: AsCompleteQuote? {
                    get {
                      if !AsCompleteQuote.possibleTypes.contains(__typename) { return nil }
                      return AsCompleteQuote(unsafeResultMap: resultMap)
                    }
                    set {
                      guard let newValue = newValue else { return }
                      resultMap = newValue.resultMap
                    }
                  }

                  public struct AsCompleteQuote: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["CompleteQuote"]

                    public static var selections: [GraphQLSelection] {
                      return [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                      ]
                    }

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: GraphQLID) {
                      self.init(unsafeResultMap: ["__typename": "CompleteQuote", "id": id])
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
                  }
                }

                public struct CurrentInsurer: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["CurrentInsurer"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .scalar(String.self)),
                      GraphQLField("displayName", type: .scalar(String.self)),
                      GraphQLField("switchable", type: .scalar(Bool.self)),
                    ]
                  }

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(id: String? = nil, displayName: String? = nil, switchable: Bool? = nil) {
                    self.init(unsafeResultMap: ["__typename": "CurrentInsurer", "id": id, "displayName": displayName, "switchable": switchable])
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

                  public var displayName: String? {
                    get {
                      return resultMap["displayName"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "displayName")
                    }
                  }

                  public var switchable: Bool? {
                    get {
                      return resultMap["switchable"] as? Bool
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "switchable")
                    }
                  }
                }
              }

              public var asIndependentInceptions: AsIndependentInceptions? {
                get {
                  if !AsIndependentInceptions.possibleTypes.contains(__typename) { return nil }
                  return AsIndependentInceptions(unsafeResultMap: resultMap)
                }
                set {
                  guard let newValue = newValue else { return }
                  resultMap = newValue.resultMap
                }
              }

              public struct AsIndependentInceptions: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["IndependentInceptions"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("inceptions", type: .nonNull(.list(.nonNull(.object(Inception.selections))))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(inceptions: [Inception]) {
                  self.init(unsafeResultMap: ["__typename": "IndependentInceptions", "inceptions": inceptions.map { (value: Inception) -> ResultMap in value.resultMap }])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var inceptions: [Inception] {
                  get {
                    return (resultMap["inceptions"] as! [ResultMap]).map { (value: ResultMap) -> Inception in Inception(unsafeResultMap: value) }
                  }
                  set {
                    resultMap.updateValue(newValue.map { (value: Inception) -> ResultMap in value.resultMap }, forKey: "inceptions")
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

                  public var inceptionFragment: InceptionFragment {
                    get {
                      return InceptionFragment(unsafeResultMap: resultMap)
                    }
                    set {
                      resultMap += newValue.resultMap
                    }
                  }
                }

                public struct Inception: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["IndependentInception"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("startDate", type: .scalar(String.self)),
                      GraphQLField("currentInsurer", type: .object(CurrentInsurer.selections)),
                      GraphQLField("correspondingQuote", type: .nonNull(.object(CorrespondingQuote.selections))),
                    ]
                  }

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(startDate: String? = nil, currentInsurer: CurrentInsurer? = nil, correspondingQuote: CorrespondingQuote) {
                    self.init(unsafeResultMap: ["__typename": "IndependentInception", "startDate": startDate, "currentInsurer": currentInsurer.flatMap { (value: CurrentInsurer) -> ResultMap in value.resultMap }, "correspondingQuote": correspondingQuote.resultMap])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  public var startDate: String? {
                    get {
                      return resultMap["startDate"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "startDate")
                    }
                  }

                  public var currentInsurer: CurrentInsurer? {
                    get {
                      return (resultMap["currentInsurer"] as? ResultMap).flatMap { CurrentInsurer(unsafeResultMap: $0) }
                    }
                    set {
                      resultMap.updateValue(newValue?.resultMap, forKey: "currentInsurer")
                    }
                  }

                  public var correspondingQuote: CorrespondingQuote {
                    get {
                      return CorrespondingQuote(unsafeResultMap: resultMap["correspondingQuote"]! as! ResultMap)
                    }
                    set {
                      resultMap.updateValue(newValue.resultMap, forKey: "correspondingQuote")
                    }
                  }

                  public struct CurrentInsurer: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["CurrentInsurer"]

                    public static var selections: [GraphQLSelection] {
                      return [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                        GraphQLField("id", type: .scalar(String.self)),
                        GraphQLField("displayName", type: .scalar(String.self)),
                        GraphQLField("switchable", type: .scalar(Bool.self)),
                      ]
                    }

                    public private(set) var resultMap: ResultMap

                    public init(unsafeResultMap: ResultMap) {
                      self.resultMap = unsafeResultMap
                    }

                    public init(id: String? = nil, displayName: String? = nil, switchable: Bool? = nil) {
                      self.init(unsafeResultMap: ["__typename": "CurrentInsurer", "id": id, "displayName": displayName, "switchable": switchable])
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

                    public var displayName: String? {
                      get {
                        return resultMap["displayName"] as? String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "displayName")
                      }
                    }

                    public var switchable: Bool? {
                      get {
                        return resultMap["switchable"] as? Bool
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "switchable")
                      }
                    }
                  }

                  public struct CorrespondingQuote: GraphQLSelectionSet {
                    public static let possibleTypes: [String] = ["CompleteQuote", "IncompleteQuote"]

                    public static var selections: [GraphQLSelection] {
                      return [
                        GraphQLTypeCase(
                          variants: ["CompleteQuote": AsCompleteQuote.selections],
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

                    public static func makeIncompleteQuote() -> CorrespondingQuote {
                      return CorrespondingQuote(unsafeResultMap: ["__typename": "IncompleteQuote"])
                    }

                    public static func makeCompleteQuote(id: GraphQLID) -> CorrespondingQuote {
                      return CorrespondingQuote(unsafeResultMap: ["__typename": "CompleteQuote", "id": id])
                    }

                    public var __typename: String {
                      get {
                        return resultMap["__typename"]! as! String
                      }
                      set {
                        resultMap.updateValue(newValue, forKey: "__typename")
                      }
                    }

                    public var asCompleteQuote: AsCompleteQuote? {
                      get {
                        if !AsCompleteQuote.possibleTypes.contains(__typename) { return nil }
                        return AsCompleteQuote(unsafeResultMap: resultMap)
                      }
                      set {
                        guard let newValue = newValue else { return }
                        resultMap = newValue.resultMap
                      }
                    }

                    public struct AsCompleteQuote: GraphQLSelectionSet {
                      public static let possibleTypes: [String] = ["CompleteQuote"]

                      public static var selections: [GraphQLSelection] {
                        return [
                          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                        ]
                      }

                      public private(set) var resultMap: ResultMap

                      public init(unsafeResultMap: ResultMap) {
                        self.resultMap = unsafeResultMap
                      }

                      public init(id: GraphQLID) {
                        self.init(unsafeResultMap: ["__typename": "CompleteQuote", "id": id])
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
                    }
                  }
                }
              }
            }

            public struct AppConfiguration: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["QuoteBundleAppConfiguration"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("showCampaignManagement", type: .nonNull(.scalar(Bool.self))),
                  GraphQLField("showFAQ", type: .nonNull(.scalar(Bool.self))),
                  GraphQLField("ignoreCampaigns", type: .nonNull(.scalar(Bool.self))),
                  GraphQLField("approveButtonTerminology", type: .nonNull(.scalar(QuoteBundleAppConfigurationApproveButtonTerminology.self))),
                  GraphQLField("startDateTerminology", type: .nonNull(.scalar(QuoteBundleAppConfigurationStartDateTerminology.self))),
                  GraphQLField("title", type: .nonNull(.scalar(QuoteBundleAppConfigurationTitle.self))),
                  GraphQLField("gradientOption", type: .nonNull(.scalar(TypeOfContractGradientOption.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(showCampaignManagement: Bool, showFaq: Bool, ignoreCampaigns: Bool, approveButtonTerminology: QuoteBundleAppConfigurationApproveButtonTerminology, startDateTerminology: QuoteBundleAppConfigurationStartDateTerminology, title: QuoteBundleAppConfigurationTitle, gradientOption: TypeOfContractGradientOption) {
                self.init(unsafeResultMap: ["__typename": "QuoteBundleAppConfiguration", "showCampaignManagement": showCampaignManagement, "showFAQ": showFaq, "ignoreCampaigns": ignoreCampaigns, "approveButtonTerminology": approveButtonTerminology, "startDateTerminology": startDateTerminology, "title": title, "gradientOption": gradientOption])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var showCampaignManagement: Bool {
                get {
                  return resultMap["showCampaignManagement"]! as! Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "showCampaignManagement")
                }
              }

              public var showFaq: Bool {
                get {
                  return resultMap["showFAQ"]! as! Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "showFAQ")
                }
              }

              /// If true, ignore net price fully and always display gross price to the user
              public var ignoreCampaigns: Bool {
                get {
                  return resultMap["ignoreCampaigns"]! as! Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "ignoreCampaigns")
                }
              }

              public var approveButtonTerminology: QuoteBundleAppConfigurationApproveButtonTerminology {
                get {
                  return resultMap["approveButtonTerminology"]! as! QuoteBundleAppConfigurationApproveButtonTerminology
                }
                set {
                  resultMap.updateValue(newValue, forKey: "approveButtonTerminology")
                }
              }

              public var startDateTerminology: QuoteBundleAppConfigurationStartDateTerminology {
                get {
                  return resultMap["startDateTerminology"]! as! QuoteBundleAppConfigurationStartDateTerminology
                }
                set {
                  resultMap.updateValue(newValue, forKey: "startDateTerminology")
                }
              }

              public var title: QuoteBundleAppConfigurationTitle {
                get {
                  return resultMap["title"]! as! QuoteBundleAppConfigurationTitle
                }
                set {
                  resultMap.updateValue(newValue, forKey: "title")
                }
              }

              public var gradientOption: TypeOfContractGradientOption {
                get {
                  return resultMap["gradientOption"]! as! TypeOfContractGradientOption
                }
                set {
                  resultMap.updateValue(newValue, forKey: "gradientOption")
                }
              }
            }
          }
        }
      }

      public struct RedeemedCampaign: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Campaign"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("displayValue", arguments: ["locale": GraphQLVariable("locale")], type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(displayValue: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Campaign", "displayValue": displayValue])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var displayValue: String? {
          get {
            return resultMap["displayValue"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "displayValue")
          }
        }
      }
    }
  }

  struct InceptionFragment: GraphQLFragment {
    /// The raw GraphQL definition of this fragment.
    public static let fragmentDefinition: String =
      """
      fragment InceptionFragment on QuoteBundleInception {
        __typename
        ... on ConcurrentInception {
          correspondingQuotes {
            __typename
            ... on CompleteQuote {
              id
            }
          }
          startDate
          currentInsurer {
            __typename
            id
            displayName
            switchable
          }
        }
        ... on IndependentInceptions {
          inceptions {
            __typename
            startDate
            currentInsurer {
              __typename
              id
              displayName
              switchable
            }
            correspondingQuote {
              __typename
              ... on CompleteQuote {
                id
              }
            }
          }
        }
      }
      """

    public static let possibleTypes: [String] = ["ConcurrentInception", "IndependentInceptions"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLTypeCase(
          variants: ["ConcurrentInception": AsConcurrentInception.selections, "IndependentInceptions": AsIndependentInceptions.selections],
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

    public static func makeConcurrentInception(correspondingQuotes: [AsConcurrentInception.CorrespondingQuote], startDate: String? = nil, currentInsurer: AsConcurrentInception.CurrentInsurer? = nil) -> InceptionFragment {
      return InceptionFragment(unsafeResultMap: ["__typename": "ConcurrentInception", "correspondingQuotes": correspondingQuotes.map { (value: AsConcurrentInception.CorrespondingQuote) -> ResultMap in value.resultMap }, "startDate": startDate, "currentInsurer": currentInsurer.flatMap { (value: AsConcurrentInception.CurrentInsurer) -> ResultMap in value.resultMap }])
    }

    public static func makeIndependentInceptions(inceptions: [AsIndependentInceptions.Inception]) -> InceptionFragment {
      return InceptionFragment(unsafeResultMap: ["__typename": "IndependentInceptions", "inceptions": inceptions.map { (value: AsIndependentInceptions.Inception) -> ResultMap in value.resultMap }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    public var asConcurrentInception: AsConcurrentInception? {
      get {
        if !AsConcurrentInception.possibleTypes.contains(__typename) { return nil }
        return AsConcurrentInception(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap = newValue.resultMap
      }
    }

    public struct AsConcurrentInception: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ConcurrentInception"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("correspondingQuotes", type: .nonNull(.list(.nonNull(.object(CorrespondingQuote.selections))))),
          GraphQLField("startDate", type: .scalar(String.self)),
          GraphQLField("currentInsurer", type: .object(CurrentInsurer.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(correspondingQuotes: [CorrespondingQuote], startDate: String? = nil, currentInsurer: CurrentInsurer? = nil) {
        self.init(unsafeResultMap: ["__typename": "ConcurrentInception", "correspondingQuotes": correspondingQuotes.map { (value: CorrespondingQuote) -> ResultMap in value.resultMap }, "startDate": startDate, "currentInsurer": currentInsurer.flatMap { (value: CurrentInsurer) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var correspondingQuotes: [CorrespondingQuote] {
        get {
          return (resultMap["correspondingQuotes"] as! [ResultMap]).map { (value: ResultMap) -> CorrespondingQuote in CorrespondingQuote(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: CorrespondingQuote) -> ResultMap in value.resultMap }, forKey: "correspondingQuotes")
        }
      }

      public var startDate: String? {
        get {
          return resultMap["startDate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "startDate")
        }
      }

      public var currentInsurer: CurrentInsurer? {
        get {
          return (resultMap["currentInsurer"] as? ResultMap).flatMap { CurrentInsurer(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "currentInsurer")
        }
      }

      public struct CorrespondingQuote: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CompleteQuote", "IncompleteQuote"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLTypeCase(
              variants: ["CompleteQuote": AsCompleteQuote.selections],
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

        public static func makeIncompleteQuote() -> CorrespondingQuote {
          return CorrespondingQuote(unsafeResultMap: ["__typename": "IncompleteQuote"])
        }

        public static func makeCompleteQuote(id: GraphQLID) -> CorrespondingQuote {
          return CorrespondingQuote(unsafeResultMap: ["__typename": "CompleteQuote", "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var asCompleteQuote: AsCompleteQuote? {
          get {
            if !AsCompleteQuote.possibleTypes.contains(__typename) { return nil }
            return AsCompleteQuote(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsCompleteQuote: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["CompleteQuote"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID) {
            self.init(unsafeResultMap: ["__typename": "CompleteQuote", "id": id])
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
        }
      }

      public struct CurrentInsurer: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CurrentInsurer"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(String.self)),
            GraphQLField("displayName", type: .scalar(String.self)),
            GraphQLField("switchable", type: .scalar(Bool.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String? = nil, displayName: String? = nil, switchable: Bool? = nil) {
          self.init(unsafeResultMap: ["__typename": "CurrentInsurer", "id": id, "displayName": displayName, "switchable": switchable])
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

        public var displayName: String? {
          get {
            return resultMap["displayName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "displayName")
          }
        }

        public var switchable: Bool? {
          get {
            return resultMap["switchable"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "switchable")
          }
        }
      }
    }

    public var asIndependentInceptions: AsIndependentInceptions? {
      get {
        if !AsIndependentInceptions.possibleTypes.contains(__typename) { return nil }
        return AsIndependentInceptions(unsafeResultMap: resultMap)
      }
      set {
        guard let newValue = newValue else { return }
        resultMap = newValue.resultMap
      }
    }

    public struct AsIndependentInceptions: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["IndependentInceptions"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("inceptions", type: .nonNull(.list(.nonNull(.object(Inception.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(inceptions: [Inception]) {
        self.init(unsafeResultMap: ["__typename": "IndependentInceptions", "inceptions": inceptions.map { (value: Inception) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var inceptions: [Inception] {
        get {
          return (resultMap["inceptions"] as! [ResultMap]).map { (value: ResultMap) -> Inception in Inception(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Inception) -> ResultMap in value.resultMap }, forKey: "inceptions")
        }
      }

      public struct Inception: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["IndependentInception"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("startDate", type: .scalar(String.self)),
            GraphQLField("currentInsurer", type: .object(CurrentInsurer.selections)),
            GraphQLField("correspondingQuote", type: .nonNull(.object(CorrespondingQuote.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(startDate: String? = nil, currentInsurer: CurrentInsurer? = nil, correspondingQuote: CorrespondingQuote) {
          self.init(unsafeResultMap: ["__typename": "IndependentInception", "startDate": startDate, "currentInsurer": currentInsurer.flatMap { (value: CurrentInsurer) -> ResultMap in value.resultMap }, "correspondingQuote": correspondingQuote.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var startDate: String? {
          get {
            return resultMap["startDate"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "startDate")
          }
        }

        public var currentInsurer: CurrentInsurer? {
          get {
            return (resultMap["currentInsurer"] as? ResultMap).flatMap { CurrentInsurer(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "currentInsurer")
          }
        }

        public var correspondingQuote: CorrespondingQuote {
          get {
            return CorrespondingQuote(unsafeResultMap: resultMap["correspondingQuote"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "correspondingQuote")
          }
        }

        public struct CurrentInsurer: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["CurrentInsurer"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .scalar(String.self)),
              GraphQLField("displayName", type: .scalar(String.self)),
              GraphQLField("switchable", type: .scalar(Bool.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: String? = nil, displayName: String? = nil, switchable: Bool? = nil) {
            self.init(unsafeResultMap: ["__typename": "CurrentInsurer", "id": id, "displayName": displayName, "switchable": switchable])
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

          public var displayName: String? {
            get {
              return resultMap["displayName"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "displayName")
            }
          }

          public var switchable: Bool? {
            get {
              return resultMap["switchable"] as? Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "switchable")
            }
          }
        }

        public struct CorrespondingQuote: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["CompleteQuote", "IncompleteQuote"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLTypeCase(
                variants: ["CompleteQuote": AsCompleteQuote.selections],
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

          public static func makeIncompleteQuote() -> CorrespondingQuote {
            return CorrespondingQuote(unsafeResultMap: ["__typename": "IncompleteQuote"])
          }

          public static func makeCompleteQuote(id: GraphQLID) -> CorrespondingQuote {
            return CorrespondingQuote(unsafeResultMap: ["__typename": "CompleteQuote", "id": id])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var asCompleteQuote: AsCompleteQuote? {
            get {
              if !AsCompleteQuote.possibleTypes.contains(__typename) { return nil }
              return AsCompleteQuote(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap = newValue.resultMap
            }
          }

          public struct AsCompleteQuote: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["CompleteQuote"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID) {
              self.init(unsafeResultMap: ["__typename": "CompleteQuote", "id": id])
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
          }
        }
      }
    }
  }
}
