// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  final class ContractsQuery: GraphQLQuery {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
      """
      query Contracts($locale: Locale!) {
        contracts {
          __typename
          id
          displayName
          switchedFromInsuranceProvider
          gradientOption
          upcomingRenewal {
            __typename
            renewalDate
            draftCertificateUrl
          }
          contractPerils(locale: $locale) {
            __typename
            ...PerilFragment
          }
          statusPills(locale: $locale)
          detailPills(locale: $locale)
          insurableLimits(locale: $locale) {
            __typename
            ...InsurableLimitFragment
          }
          currentAgreementDetailsTable(locale: $locale) {
            __typename
            ...DetailsTableFragment
          }
          upcomingAgreementDetailsTable(locale: $locale) {
            __typename
            ...DetailsTableFragment
          }
          termsAndConditions(locale: $locale) {
            __typename
            displayName
            url
          }
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
      }
      """

    public let operationName: String = "Contracts"

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
          GraphQLField("contracts", type: .nonNull(.list(.nonNull(.object(Contract.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(contracts: [Contract]) {
        self.init(unsafeResultMap: ["__typename": "Query", "contracts": contracts.map { (value: Contract) -> ResultMap in value.resultMap }])
      }

      /// Returns all contracts the member currently holds, regardless of activation/termination status
      public var contracts: [Contract] {
        get {
          return (resultMap["contracts"] as! [ResultMap]).map { (value: ResultMap) -> Contract in Contract(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Contract) -> ResultMap in value.resultMap }, forKey: "contracts")
        }
      }

      public struct Contract: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Contract"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("displayName", type: .nonNull(.scalar(String.self))),
            GraphQLField("switchedFromInsuranceProvider", type: .scalar(String.self)),
            GraphQLField("gradientOption", type: .scalar(TypeOfContractGradientOption.self)),
            GraphQLField("upcomingRenewal", type: .object(UpcomingRenewal.selections)),
            GraphQLField("contractPerils", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.object(ContractPeril.selections))))),
            GraphQLField("statusPills", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.scalar(String.self))))),
            GraphQLField("detailPills", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.scalar(String.self))))),
            GraphQLField("insurableLimits", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.list(.nonNull(.object(InsurableLimit.selections))))),
            GraphQLField("currentAgreementDetailsTable", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.object(CurrentAgreementDetailsTable.selections))),
            GraphQLField("upcomingAgreementDetailsTable", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.object(UpcomingAgreementDetailsTable.selections))),
            GraphQLField("termsAndConditions", arguments: ["locale": GraphQLVariable("locale")], type: .nonNull(.object(TermsAndCondition.selections))),
            GraphQLField("currentAgreement", type: .object(CurrentAgreement.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, displayName: String, switchedFromInsuranceProvider: String? = nil, gradientOption: TypeOfContractGradientOption? = nil, upcomingRenewal: UpcomingRenewal? = nil, contractPerils: [ContractPeril], statusPills: [String], detailPills: [String], insurableLimits: [InsurableLimit], currentAgreementDetailsTable: CurrentAgreementDetailsTable, upcomingAgreementDetailsTable: UpcomingAgreementDetailsTable, termsAndConditions: TermsAndCondition, currentAgreement: CurrentAgreement? = nil) {
          self.init(unsafeResultMap: ["__typename": "Contract", "id": id, "displayName": displayName, "switchedFromInsuranceProvider": switchedFromInsuranceProvider, "gradientOption": gradientOption, "upcomingRenewal": upcomingRenewal.flatMap { (value: UpcomingRenewal) -> ResultMap in value.resultMap }, "contractPerils": contractPerils.map { (value: ContractPeril) -> ResultMap in value.resultMap }, "statusPills": statusPills, "detailPills": detailPills, "insurableLimits": insurableLimits.map { (value: InsurableLimit) -> ResultMap in value.resultMap }, "currentAgreementDetailsTable": currentAgreementDetailsTable.resultMap, "upcomingAgreementDetailsTable": upcomingAgreementDetailsTable.resultMap, "termsAndConditions": termsAndConditions.resultMap, "currentAgreement": currentAgreement.flatMap { (value: CurrentAgreement) -> ResultMap in value.resultMap }])
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

        public var displayName: String {
          get {
            return resultMap["displayName"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "displayName")
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

        public var gradientOption: TypeOfContractGradientOption? {
          get {
            return resultMap["gradientOption"] as? TypeOfContractGradientOption
          }
          set {
            resultMap.updateValue(newValue, forKey: "gradientOption")
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

        public var insurableLimits: [InsurableLimit] {
          get {
            return (resultMap["insurableLimits"] as! [ResultMap]).map { (value: ResultMap) -> InsurableLimit in InsurableLimit(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: InsurableLimit) -> ResultMap in value.resultMap }, forKey: "insurableLimits")
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

        public var termsAndConditions: TermsAndCondition {
          get {
            return TermsAndCondition(unsafeResultMap: resultMap["termsAndConditions"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "termsAndConditions")
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
    }
  }
}
