// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  final class ActiveContractBundlesQuery: GraphQLQuery {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
      """
      query ActiveContractBundles($locale: Locale!) {
        activeContractBundles {
          __typename
          id
          contracts {
            __typename
            id
            statusPills(locale: $locale)
            detailPills(locale: $locale)
            displayName
            gradientOption
            switchedFromInsuranceProvider
            upcomingRenewal {
              __typename
              renewalDate
              draftCertificateUrl
            }
            contractPerils(locale: $locale) {
              __typename
              ...PerilFragment
            }
            insurableLimits(locale: $locale) {
              __typename
              ...InsurableLimitFragment
            }
            termsAndConditions(locale: $locale) {
              __typename
              displayName
              url
            }
            currentAgreementDetailsTable(locale: $locale) {
              __typename
              ...DetailsTableFragment
            }
            upcomingAgreementDetailsTable(locale: $locale) {
              __typename
              ...DetailsTableFragment
            }
            status {
              __typename
              ... on ActiveStatus {
                upcomingAgreementChange {
                  __typename
                  newAgreement {
                    __typename
                    ... on AgreementCore {
                      activeFrom
                    }
                  }
                }
              }
            }
            supportsAddressChange
            currentAgreement {
              __typename
              ... on AgreementCore {
                certificateUrl
                activeFrom
                activeTo
                status
                premium {
                  __typename
                  ...MonetaryAmountFragment
                }
              }
            }
          }
          angelStories {
            __typename
            addressChange
          }
          potentialCrossSells {
            __typename
            contractType
            type
            title
            description
            imageUrl
            blurHash
            callToAction
            info(locale: $locale) {
              __typename
              displayName
              aboutSection
              contractPerils {
                __typename
                ...PerilFragment
              }
              insurableLimits {
                __typename
                ...InsurableLimitFragment
              }
              insuranceTerms {
                __typename
                displayName
                url
                type
              }
              highlights {
                __typename
                title
                description
              }
              faq {
                __typename
                headline
                body
              }
            }
            action {
              __typename
              ... on CrossSellChat {
                _
              }
              ... on CrossSellEmbark {
                embarkStory(locale: $locale) {
                  __typename
                  name
                }
              }
            }
          }
        }
      }
      """

    public let operationName: String = "ActiveContractBundles"

    public var queryDocument: String {
      var document: String = operationDefinition
      document.append("\n" + PerilFragment.fragmentDefinition)
      document.append("\n" + IconFragment.fragmentDefinition)
      document.append("\n" + InsurableLimitFragment.fragmentDefinition)
      document.append("\n" + DetailsTableFragment.fragmentDefinition)
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
          GraphQLField("activeContractBundles", type: .nonNull(.list(.nonNull(.object(ActiveContractBundle.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(activeContractBundles: [ActiveContractBundle]) {
        self.init(unsafeResultMap: ["__typename": "Query", "activeContractBundles": activeContractBundles.map { (value: ActiveContractBundle) -> ResultMap in value.resultMap }])
      }

      /// Returns all the currently active contracts, combined into bundles.
      public var activeContractBundles: [ActiveContractBundle] {
        get {
          return (resultMap["activeContractBundles"] as! [ResultMap]).map { (value: ResultMap) -> ActiveContractBundle in ActiveContractBundle(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: ActiveContractBundle) -> ResultMap in value.resultMap }, forKey: "activeContractBundles")
        }
      }

      public struct ActiveContractBundle: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ContractBundle"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("contracts", type: .nonNull(.list(.nonNull(.object(Contract.selections))))),
            GraphQLField("angelStories", type: .nonNull(.object(AngelStory.selections))),
            GraphQLField("potentialCrossSells", type: .nonNull(.list(.nonNull(.object(PotentialCrossSell.selections))))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, contracts: [Contract], angelStories: AngelStory, potentialCrossSells: [PotentialCrossSell]) {
          self.init(unsafeResultMap: ["__typename": "ContractBundle", "id": id, "contracts": contracts.map { (value: Contract) -> ResultMap in value.resultMap }, "angelStories": angelStories.resultMap, "potentialCrossSells": potentialCrossSells.map { (value: PotentialCrossSell) -> ResultMap in value.resultMap }])
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

        public var contracts: [Contract] {
          get {
            return (resultMap["contracts"] as! [ResultMap]).map { (value: ResultMap) -> Contract in Contract(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: Contract) -> ResultMap in value.resultMap }, forKey: "contracts")
          }
        }

        public var angelStories: AngelStory {
          get {
            return AngelStory(unsafeResultMap: resultMap["angelStories"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "angelStories")
          }
        }

        public var potentialCrossSells: [PotentialCrossSell] {
          get {
            return (resultMap["potentialCrossSells"] as! [ResultMap]).map { (value: ResultMap) -> PotentialCrossSell in PotentialCrossSell(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: PotentialCrossSell) -> ResultMap in value.resultMap }, forKey: "potentialCrossSells")
          }
        }

        public struct Contract: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Contract"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("statusPills", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("detailPills", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
              GraphQLField("gradientOption", type: .scalar(TypeOfContractGradientOption.self)),
              GraphQLField("switchedFromInsuranceProvider", type: .scalar(String.self)),
              GraphQLField("upcomingRenewal", type: .object(UpcomingRenewal.selections)),
              GraphQLField("contractPerils", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.object(ContractPeril.selections))))),
              GraphQLField("insurableLimits", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.object(InsurableLimit.selections))))),
              GraphQLField("termsAndConditions", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.object(TermsAndCondition.selections))),
              GraphQLField("currentAgreementDetailsTable", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.object(CurrentAgreementDetailsTable.selections))),
              GraphQLField("upcomingAgreementDetailsTable", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.object(UpcomingAgreementDetailsTable.selections))),
              GraphQLField("status", type: .nonNull(.object(Status.selections))),
              GraphQLField("supportsAddressChange", type: .nonNull(.scalar(Bool.self))),
              GraphQLField("currentAgreement", type: .object(CurrentAgreement.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, statusPills: [String], detailPills: [String], displayName: String, gradientOption: TypeOfContractGradientOption? = nil, switchedFromInsuranceProvider: String? = nil, upcomingRenewal: UpcomingRenewal? = nil, contractPerils: [ContractPeril], insurableLimits: [InsurableLimit], termsAndConditions: TermsAndCondition, currentAgreementDetailsTable: CurrentAgreementDetailsTable, upcomingAgreementDetailsTable: UpcomingAgreementDetailsTable, status: Status, supportsAddressChange: Bool, currentAgreement: CurrentAgreement? = nil) {
            self.init(unsafeResultMap: ["__typename": "Contract", "id": id, "statusPills": statusPills, "detailPills": detailPills, "displayName": displayName, "gradientOption": gradientOption, "switchedFromInsuranceProvider": switchedFromInsuranceProvider, "upcomingRenewal": upcomingRenewal.flatMap { (value: UpcomingRenewal) -> ResultMap in value.resultMap }, "contractPerils": contractPerils.map { (value: ContractPeril) -> ResultMap in value.resultMap }, "insurableLimits": insurableLimits.map { (value: InsurableLimit) -> ResultMap in value.resultMap }, "termsAndConditions": termsAndConditions.resultMap, "currentAgreementDetailsTable": currentAgreementDetailsTable.resultMap, "upcomingAgreementDetailsTable": upcomingAgreementDetailsTable.resultMap, "status": status.resultMap, "supportsAddressChange": supportsAddressChange, "currentAgreement": currentAgreement.flatMap { (value: CurrentAgreement) -> ResultMap in value.resultMap }])
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

          /// localised information about the current status of the contract
          public var statusPills: [String] {
            get {
              return resultMap["statusPills"]! as! [String]
            }
            set {
              resultMap.updateValue(newValue, forKey: "statusPills")
            }
          }

          /// localised information about the details of the contract, for example address / amount of people it covers
          public var detailPills: [String] {
            get {
              return resultMap["detailPills"]! as! [String]
            }
            set {
              resultMap.updateValue(newValue, forKey: "detailPills")
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

          public var gradientOption: TypeOfContractGradientOption? {
            get {
              return resultMap["gradientOption"] as? TypeOfContractGradientOption
            }
            set {
              resultMap.updateValue(newValue, forKey: "gradientOption")
            }
          }

          public var switchedFromInsuranceProvider: String? {
            get {
              return resultMap["switchedFromInsuranceProvider"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "switchedFromInsuranceProvider")
            }
          }

          /// An upcoming renewal, present if the member has been notified and the renewal is within 31 days
          public var upcomingRenewal: UpcomingRenewal? {
            get {
              return (resultMap["upcomingRenewal"] as? ResultMap).flatMap { UpcomingRenewal(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "upcomingRenewal")
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

          public var termsAndConditions: TermsAndCondition {
            get {
              return TermsAndCondition(unsafeResultMap: resultMap["termsAndConditions"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "termsAndConditions")
            }
          }

          public var currentAgreementDetailsTable: CurrentAgreementDetailsTable {
            get {
              return CurrentAgreementDetailsTable(unsafeResultMap: resultMap["currentAgreementDetailsTable"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "currentAgreementDetailsTable")
            }
          }

          public var upcomingAgreementDetailsTable: UpcomingAgreementDetailsTable {
            get {
              return UpcomingAgreementDetailsTable(unsafeResultMap: resultMap["upcomingAgreementDetailsTable"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "upcomingAgreementDetailsTable")
            }
          }

          public var status: Status {
            get {
              return Status(unsafeResultMap: resultMap["status"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "status")
            }
          }

          public var supportsAddressChange: Bool {
            get {
              return resultMap["supportsAddressChange"]! as! Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "supportsAddressChange")
            }
          }

          /// "The 'best guess' of the agreement that depicts the member's insurance, either the pending, future, current or, if terminated, past agreement
          public var currentAgreement: CurrentAgreement? {
            get {
              return (resultMap["currentAgreement"] as? ResultMap).flatMap { CurrentAgreement(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "currentAgreement")
            }
          }

          public struct UpcomingRenewal: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["UpcomingRenewal"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("renewalDate", type: .nonNull(.scalar(String.self))),
                GraphQLField("draftCertificateUrl", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(renewalDate: String, draftCertificateUrl: String) {
              self.init(unsafeResultMap: ["__typename": "UpcomingRenewal", "renewalDate": renewalDate, "draftCertificateUrl": draftCertificateUrl])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var renewalDate: String {
              get {
                return resultMap["renewalDate"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "renewalDate")
              }
            }

            public var draftCertificateUrl: String {
              get {
                return resultMap["draftCertificateUrl"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "draftCertificateUrl")
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

          public struct TermsAndCondition: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["InsuranceTerm"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
                GraphQLField("url", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(displayName: String, url: String) {
              self.init(unsafeResultMap: ["__typename": "InsuranceTerm", "displayName": displayName, "url": url])
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
          }

          public struct CurrentAgreementDetailsTable: GraphQLSelectionSet {
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

          public struct UpcomingAgreementDetailsTable: GraphQLSelectionSet {
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

          public struct Status: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["PendingStatus", "ActiveInFutureStatus", "ActiveStatus", "ActiveInFutureAndTerminatedInFutureStatus", "TerminatedInFutureStatus", "TerminatedTodayStatus", "TerminatedStatus"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLTypeCase(
                  variants: ["ActiveStatus": AsActiveStatus.selections],
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

            public static func makePendingStatus() -> Status {
              return Status(unsafeResultMap: ["__typename": "PendingStatus"])
            }

            public static func makeActiveInFutureStatus() -> Status {
              return Status(unsafeResultMap: ["__typename": "ActiveInFutureStatus"])
            }

            public static func makeActiveInFutureAndTerminatedInFutureStatus() -> Status {
              return Status(unsafeResultMap: ["__typename": "ActiveInFutureAndTerminatedInFutureStatus"])
            }

            public static func makeTerminatedInFutureStatus() -> Status {
              return Status(unsafeResultMap: ["__typename": "TerminatedInFutureStatus"])
            }

            public static func makeTerminatedTodayStatus() -> Status {
              return Status(unsafeResultMap: ["__typename": "TerminatedTodayStatus"])
            }

            public static func makeTerminatedStatus() -> Status {
              return Status(unsafeResultMap: ["__typename": "TerminatedStatus"])
            }

            public static func makeActiveStatus(upcomingAgreementChange: AsActiveStatus.UpcomingAgreementChange? = nil) -> Status {
              return Status(unsafeResultMap: ["__typename": "ActiveStatus", "upcomingAgreementChange": upcomingAgreementChange.flatMap { (value: AsActiveStatus.UpcomingAgreementChange) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
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
                  GraphQLField("upcomingAgreementChange", type: .object(UpcomingAgreementChange.selections)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(upcomingAgreementChange: UpcomingAgreementChange? = nil) {
                self.init(unsafeResultMap: ["__typename": "ActiveStatus", "upcomingAgreementChange": upcomingAgreementChange.flatMap { (value: UpcomingAgreementChange) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var upcomingAgreementChange: UpcomingAgreementChange? {
                get {
                  return (resultMap["upcomingAgreementChange"] as? ResultMap).flatMap { UpcomingAgreementChange(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "upcomingAgreementChange")
                }
              }

              public struct UpcomingAgreementChange: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["UpcomingAgreementChange"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("newAgreement", type: .nonNull(.object(NewAgreement.selections))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(newAgreement: NewAgreement) {
                  self.init(unsafeResultMap: ["__typename": "UpcomingAgreementChange", "newAgreement": newAgreement.resultMap])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var newAgreement: NewAgreement {
                  get {
                    return NewAgreement(unsafeResultMap: resultMap["newAgreement"]! as! ResultMap)
                  }
                  set {
                    resultMap.updateValue(newValue.resultMap, forKey: "newAgreement")
                  }
                }

                public struct NewAgreement: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["SwedishApartmentAgreement", "SwedishHouseAgreement", "SwedishAccidentAgreement", "NorwegianHomeContentAgreement", "NorwegianTravelAgreement", "DanishHomeContentAgreement", "DanishAccidentAgreement", "DanishTravelAgreement"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("activeFrom", type: .scalar(String.self)),
                    ]
                  }

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public static func makeSwedishApartmentAgreement(activeFrom: String? = nil) -> NewAgreement {
                    return NewAgreement(unsafeResultMap: ["__typename": "SwedishApartmentAgreement", "activeFrom": activeFrom])
                  }

                  public static func makeSwedishHouseAgreement(activeFrom: String? = nil) -> NewAgreement {
                    return NewAgreement(unsafeResultMap: ["__typename": "SwedishHouseAgreement", "activeFrom": activeFrom])
                  }

                  public static func makeSwedishAccidentAgreement(activeFrom: String? = nil) -> NewAgreement {
                    return NewAgreement(unsafeResultMap: ["__typename": "SwedishAccidentAgreement", "activeFrom": activeFrom])
                  }

                  public static func makeNorwegianHomeContentAgreement(activeFrom: String? = nil) -> NewAgreement {
                    return NewAgreement(unsafeResultMap: ["__typename": "NorwegianHomeContentAgreement", "activeFrom": activeFrom])
                  }

                  public static func makeNorwegianTravelAgreement(activeFrom: String? = nil) -> NewAgreement {
                    return NewAgreement(unsafeResultMap: ["__typename": "NorwegianTravelAgreement", "activeFrom": activeFrom])
                  }

                  public static func makeDanishHomeContentAgreement(activeFrom: String? = nil) -> NewAgreement {
                    return NewAgreement(unsafeResultMap: ["__typename": "DanishHomeContentAgreement", "activeFrom": activeFrom])
                  }

                  public static func makeDanishAccidentAgreement(activeFrom: String? = nil) -> NewAgreement {
                    return NewAgreement(unsafeResultMap: ["__typename": "DanishAccidentAgreement", "activeFrom": activeFrom])
                  }

                  public static func makeDanishTravelAgreement(activeFrom: String? = nil) -> NewAgreement {
                    return NewAgreement(unsafeResultMap: ["__typename": "DanishTravelAgreement", "activeFrom": activeFrom])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  public var activeFrom: String? {
                    get {
                      return resultMap["activeFrom"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "activeFrom")
                    }
                  }
                }
              }
            }
          }

          public struct CurrentAgreement: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["SwedishApartmentAgreement", "SwedishHouseAgreement", "SwedishAccidentAgreement", "NorwegianHomeContentAgreement", "NorwegianTravelAgreement", "DanishHomeContentAgreement", "DanishAccidentAgreement", "DanishTravelAgreement"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("certificateUrl", type: .scalar(String.self)),
                GraphQLField("activeFrom", type: .scalar(String.self)),
                GraphQLField("activeTo", type: .scalar(String.self)),
                GraphQLField("status", type: .nonNull(.scalar(AgreementStatus.self))),
                GraphQLField("premium", type: .nonNull(.object(Premium.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public static func makeSwedishApartmentAgreement(certificateUrl: String? = nil, activeFrom: String? = nil, activeTo: String? = nil, status: AgreementStatus, premium: Premium) -> CurrentAgreement {
              return CurrentAgreement(unsafeResultMap: ["__typename": "SwedishApartmentAgreement", "certificateUrl": certificateUrl, "activeFrom": activeFrom, "activeTo": activeTo, "status": status, "premium": premium.resultMap])
            }

            public static func makeSwedishHouseAgreement(certificateUrl: String? = nil, activeFrom: String? = nil, activeTo: String? = nil, status: AgreementStatus, premium: Premium) -> CurrentAgreement {
              return CurrentAgreement(unsafeResultMap: ["__typename": "SwedishHouseAgreement", "certificateUrl": certificateUrl, "activeFrom": activeFrom, "activeTo": activeTo, "status": status, "premium": premium.resultMap])
            }

            public static func makeSwedishAccidentAgreement(certificateUrl: String? = nil, activeFrom: String? = nil, activeTo: String? = nil, status: AgreementStatus, premium: Premium) -> CurrentAgreement {
              return CurrentAgreement(unsafeResultMap: ["__typename": "SwedishAccidentAgreement", "certificateUrl": certificateUrl, "activeFrom": activeFrom, "activeTo": activeTo, "status": status, "premium": premium.resultMap])
            }

            public static func makeNorwegianHomeContentAgreement(certificateUrl: String? = nil, activeFrom: String? = nil, activeTo: String? = nil, status: AgreementStatus, premium: Premium) -> CurrentAgreement {
              return CurrentAgreement(unsafeResultMap: ["__typename": "NorwegianHomeContentAgreement", "certificateUrl": certificateUrl, "activeFrom": activeFrom, "activeTo": activeTo, "status": status, "premium": premium.resultMap])
            }

            public static func makeNorwegianTravelAgreement(certificateUrl: String? = nil, activeFrom: String? = nil, activeTo: String? = nil, status: AgreementStatus, premium: Premium) -> CurrentAgreement {
              return CurrentAgreement(unsafeResultMap: ["__typename": "NorwegianTravelAgreement", "certificateUrl": certificateUrl, "activeFrom": activeFrom, "activeTo": activeTo, "status": status, "premium": premium.resultMap])
            }

            public static func makeDanishHomeContentAgreement(certificateUrl: String? = nil, activeFrom: String? = nil, activeTo: String? = nil, status: AgreementStatus, premium: Premium) -> CurrentAgreement {
              return CurrentAgreement(unsafeResultMap: ["__typename": "DanishHomeContentAgreement", "certificateUrl": certificateUrl, "activeFrom": activeFrom, "activeTo": activeTo, "status": status, "premium": premium.resultMap])
            }

            public static func makeDanishAccidentAgreement(certificateUrl: String? = nil, activeFrom: String? = nil, activeTo: String? = nil, status: AgreementStatus, premium: Premium) -> CurrentAgreement {
              return CurrentAgreement(unsafeResultMap: ["__typename": "DanishAccidentAgreement", "certificateUrl": certificateUrl, "activeFrom": activeFrom, "activeTo": activeTo, "status": status, "premium": premium.resultMap])
            }

            public static func makeDanishTravelAgreement(certificateUrl: String? = nil, activeFrom: String? = nil, activeTo: String? = nil, status: AgreementStatus, premium: Premium) -> CurrentAgreement {
              return CurrentAgreement(unsafeResultMap: ["__typename": "DanishTravelAgreement", "certificateUrl": certificateUrl, "activeFrom": activeFrom, "activeTo": activeTo, "status": status, "premium": premium.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var certificateUrl: String? {
              get {
                return resultMap["certificateUrl"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "certificateUrl")
              }
            }

            public var activeFrom: String? {
              get {
                return resultMap["activeFrom"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "activeFrom")
              }
            }

            public var activeTo: String? {
              get {
                return resultMap["activeTo"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "activeTo")
              }
            }

            public var status: AgreementStatus {
              get {
                return resultMap["status"]! as! AgreementStatus
              }
              set {
                resultMap.updateValue(newValue, forKey: "status")
              }
            }

            public var premium: Premium {
              get {
                return Premium(unsafeResultMap: resultMap["premium"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "premium")
              }
            }

            public struct Premium: GraphQLSelectionSet {
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

        public struct AngelStory: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ContractBundleAngelStories"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("addressChange", type: .scalar(GraphQLID.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(addressChange: GraphQLID? = nil) {
            self.init(unsafeResultMap: ["__typename": "ContractBundleAngelStories", "addressChange": addressChange])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var addressChange: GraphQLID? {
            get {
              return resultMap["addressChange"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "addressChange")
            }
          }
        }

        public struct PotentialCrossSell: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["CrossSell"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("contractType", type: .nonNull(.scalar(TypeOfContract.self))),
              GraphQLField("type", type: .nonNull(.scalar(CrossSellType.self))),
              GraphQLField("title", type: .nonNull(.scalar(String.self))),
              GraphQLField("description", type: .nonNull(.scalar(String.self))),
              GraphQLField("imageUrl", type: .nonNull(.scalar(String.self))),
              GraphQLField("blurHash", type: .nonNull(.scalar(String.self))),
              GraphQLField("callToAction", type: .nonNull(.scalar(String.self))),
              GraphQLField("info", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.object(Info.selections))),
              GraphQLField("action", type: .nonNull(.object(Action.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(contractType: TypeOfContract, type: CrossSellType, title: String, description: String, imageUrl: String, blurHash: String, callToAction: String, info: Info, action: Action) {
            self.init(unsafeResultMap: ["__typename": "CrossSell", "contractType": contractType, "type": type, "title": title, "description": description, "imageUrl": imageUrl, "blurHash": blurHash, "callToAction": callToAction, "info": info.resultMap, "action": action.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var contractType: TypeOfContract {
            get {
              return resultMap["contractType"]! as! TypeOfContract
            }
            set {
              resultMap.updateValue(newValue, forKey: "contractType")
            }
          }

          public var type: CrossSellType {
            get {
              return resultMap["type"]! as! CrossSellType
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
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

          public var imageUrl: String {
            get {
              return resultMap["imageUrl"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "imageUrl")
            }
          }

          public var blurHash: String {
            get {
              return resultMap["blurHash"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "blurHash")
            }
          }

          public var callToAction: String {
            get {
              return resultMap["callToAction"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "callToAction")
            }
          }

          public var info: Info {
            get {
              return Info(unsafeResultMap: resultMap["info"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "info")
            }
          }

          public var action: Action {
            get {
              return Action(unsafeResultMap: resultMap["action"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "action")
            }
          }

          public struct Info: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["CrossSellInfo"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
                GraphQLField("aboutSection", type: .nonNull(.scalar(String.self))),
                GraphQLField("contractPerils", type: .nonNull(.list(.nonNull(.object(ContractPeril.selections))))),
                GraphQLField("insurableLimits", type: .nonNull(.list(.nonNull(.object(InsurableLimit.selections))))),
                GraphQLField("insuranceTerms", type: .nonNull(.list(.nonNull(.object(InsuranceTerm.selections))))),
                GraphQLField("highlights", type: .nonNull(.list(.nonNull(.object(Highlight.selections))))),
                GraphQLField("faq", type: .nonNull(.list(.nonNull(.object(Faq.selections))))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(displayName: String, aboutSection: String, contractPerils: [ContractPeril], insurableLimits: [InsurableLimit], insuranceTerms: [InsuranceTerm], highlights: [Highlight], faq: [Faq]) {
              self.init(unsafeResultMap: ["__typename": "CrossSellInfo", "displayName": displayName, "aboutSection": aboutSection, "contractPerils": contractPerils.map { (value: ContractPeril) -> ResultMap in value.resultMap }, "insurableLimits": insurableLimits.map { (value: InsurableLimit) -> ResultMap in value.resultMap }, "insuranceTerms": insuranceTerms.map { (value: InsuranceTerm) -> ResultMap in value.resultMap }, "highlights": highlights.map { (value: Highlight) -> ResultMap in value.resultMap }, "faq": faq.map { (value: Faq) -> ResultMap in value.resultMap }])
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

            public var aboutSection: String {
              get {
                return resultMap["aboutSection"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "aboutSection")
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

            public var highlights: [Highlight] {
              get {
                return (resultMap["highlights"] as! [ResultMap]).map { (value: ResultMap) -> Highlight in Highlight(unsafeResultMap: value) }
              }
              set {
                resultMap.updateValue(newValue.map { (value: Highlight) -> ResultMap in value.resultMap }, forKey: "highlights")
              }
            }

            public var faq: [Faq] {
              get {
                return (resultMap["faq"] as! [ResultMap]).map { (value: ResultMap) -> Faq in Faq(unsafeResultMap: value) }
              }
              set {
                resultMap.updateValue(newValue.map { (value: Faq) -> ResultMap in value.resultMap }, forKey: "faq")
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

            public struct Highlight: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ContractHighlight"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("title", type: .nonNull(.scalar(String.self))),
                  GraphQLField("description", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(title: String, description: String) {
                self.init(unsafeResultMap: ["__typename": "ContractHighlight", "title": title, "description": description])
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
            }

            public struct Faq: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ContractFaq"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("headline", type: .nonNull(.scalar(String.self))),
                  GraphQLField("body", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(headline: String, body: String) {
                self.init(unsafeResultMap: ["__typename": "ContractFaq", "headline": headline, "body": body])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var headline: String {
                get {
                  return resultMap["headline"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "headline")
                }
              }

              public var body: String {
                get {
                  return resultMap["body"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "body")
                }
              }
            }
          }

          public struct Action: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["CrossSellChat", "CrossSellEmbark"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLTypeCase(
                  variants: ["CrossSellChat": AsCrossSellChat.selections, "CrossSellEmbark": AsCrossSellEmbark.selections],
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

            public static func makeCrossSellChat(`_`: Bool? = nil) -> Action {
              return Action(unsafeResultMap: ["__typename": "CrossSellChat", "_": `_`])
            }

            public static func makeCrossSellEmbark(embarkStory: AsCrossSellEmbark.EmbarkStory) -> Action {
              return Action(unsafeResultMap: ["__typename": "CrossSellEmbark", "embarkStory": embarkStory.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var asCrossSellChat: AsCrossSellChat? {
              get {
                if !AsCrossSellChat.possibleTypes.contains(__typename) { return nil }
                return AsCrossSellChat(unsafeResultMap: resultMap)
              }
              set {
                guard let newValue = newValue else { return }
                resultMap = newValue.resultMap
              }
            }

            public struct AsCrossSellChat: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["CrossSellChat"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("_", type: .scalar(Bool.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(`_`: Bool? = nil) {
                self.init(unsafeResultMap: ["__typename": "CrossSellChat", "_": `_`])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var `_`: Bool? {
                get {
                  return resultMap["_"] as? Bool
                }
                set {
                  resultMap.updateValue(newValue, forKey: "_")
                }
              }
            }

            public var asCrossSellEmbark: AsCrossSellEmbark? {
              get {
                if !AsCrossSellEmbark.possibleTypes.contains(__typename) { return nil }
                return AsCrossSellEmbark(unsafeResultMap: resultMap)
              }
              set {
                guard let newValue = newValue else { return }
                resultMap = newValue.resultMap
              }
            }

            public struct AsCrossSellEmbark: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["CrossSellEmbark"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("embarkStory", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.object(EmbarkStory.selections))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(embarkStory: EmbarkStory) {
                self.init(unsafeResultMap: ["__typename": "CrossSellEmbark", "embarkStory": embarkStory.resultMap])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var embarkStory: EmbarkStory {
                get {
                  return EmbarkStory(unsafeResultMap: resultMap["embarkStory"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "embarkStory")
                }
              }

              public struct EmbarkStory: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["EmbarkStory"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("name", type: .nonNull(.scalar(String.self))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(name: String) {
                  self.init(unsafeResultMap: ["__typename": "EmbarkStory", "name": name])
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
              }
            }
          }
        }
      }
    }
  }
}
