// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public enum GraphQL {
  public struct S3FileInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    /// - Parameters:
    ///   - bucket
    ///   - key
    public init(bucket: String, key: String) {
      graphQLMap = ["bucket": bucket, "key": key]
    }

    public var bucket: String {
      get {
        return graphQLMap["bucket"] as! String
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "bucket")
      }
    }

    public var key: String {
      get {
        return graphQLMap["key"] as! String
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "key")
      }
    }
  }

  public enum AuthState: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case initiated
    case inProgress
    case failed
    case success
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "INITIATED": self = .initiated
        case "IN_PROGRESS": self = .inProgress
        case "FAILED": self = .failed
        case "SUCCESS": self = .success
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .initiated: return "INITIATED"
        case .inProgress: return "IN_PROGRESS"
        case .failed: return "FAILED"
        case .success: return "SUCCESS"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: AuthState, rhs: AuthState) -> Bool {
      switch (lhs, rhs) {
        case (.initiated, .initiated): return true
        case (.inProgress, .inProgress): return true
        case (.failed, .failed): return true
        case (.success, .success): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [AuthState] {
      return [
        .initiated,
        .inProgress,
        .failed,
        .success,
      ]
    }
  }

  public struct CreateKeyGearItemInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    /// - Parameters:
    ///   - photos
    ///   - category
    ///   - purchasePrice
    ///   - physicalReferenceHash
    ///   - name
    public init(photos: [S3FileInput], category: KeyGearItemCategory, purchasePrice: Swift.Optional<MonetaryAmountV2Input?> = nil, physicalReferenceHash: Swift.Optional<String?> = nil, name: Swift.Optional<String?> = nil) {
      graphQLMap = ["photos": photos, "category": category, "purchasePrice": purchasePrice, "physicalReferenceHash": physicalReferenceHash, "name": name]
    }

    public var photos: [S3FileInput] {
      get {
        return graphQLMap["photos"] as! [S3FileInput]
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "photos")
      }
    }

    public var category: KeyGearItemCategory {
      get {
        return graphQLMap["category"] as! KeyGearItemCategory
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "category")
      }
    }

    public var purchasePrice: Swift.Optional<MonetaryAmountV2Input?> {
      get {
        return graphQLMap["purchasePrice"] as? Swift.Optional<MonetaryAmountV2Input?> ?? Swift.Optional<MonetaryAmountV2Input?>.none
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "purchasePrice")
      }
    }

    public var physicalReferenceHash: Swift.Optional<String?> {
      get {
        return graphQLMap["physicalReferenceHash"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "physicalReferenceHash")
      }
    }

    public var name: Swift.Optional<String?> {
      get {
        return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "name")
      }
    }
  }

  public enum KeyGearItemCategory: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case phone
    case computer
    case tv
    case bike
    case jewelry
    case watch
    case smartWatch
    case tablet
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "PHONE": self = .phone
        case "COMPUTER": self = .computer
        case "TV": self = .tv
        case "BIKE": self = .bike
        case "JEWELRY": self = .jewelry
        case "WATCH": self = .watch
        case "SMART_WATCH": self = .smartWatch
        case "TABLET": self = .tablet
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .phone: return "PHONE"
        case .computer: return "COMPUTER"
        case .tv: return "TV"
        case .bike: return "BIKE"
        case .jewelry: return "JEWELRY"
        case .watch: return "WATCH"
        case .smartWatch: return "SMART_WATCH"
        case .tablet: return "TABLET"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: KeyGearItemCategory, rhs: KeyGearItemCategory) -> Bool {
      switch (lhs, rhs) {
        case (.phone, .phone): return true
        case (.computer, .computer): return true
        case (.tv, .tv): return true
        case (.bike, .bike): return true
        case (.jewelry, .jewelry): return true
        case (.watch, .watch): return true
        case (.smartWatch, .smartWatch): return true
        case (.tablet, .tablet): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [KeyGearItemCategory] {
      return [
        .phone,
        .computer,
        .tv,
        .bike,
        .jewelry,
        .watch,
        .smartWatch,
        .tablet,
      ]
    }
  }

  public struct MonetaryAmountV2Input: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    /// - Parameters:
    ///   - amount
    ///   - currency
    public init(amount: String, currency: String) {
      graphQLMap = ["amount": amount, "currency": currency]
    }

    public var amount: String {
      get {
        return graphQLMap["amount"] as! String
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "amount")
      }
    }

    public var currency: String {
      get {
        return graphQLMap["currency"] as! String
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "currency")
      }
    }
  }

  public enum InsuranceStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case pending
    case active
    case inactive
    case inactiveWithStartDate
    case terminated
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "PENDING": self = .pending
        case "ACTIVE": self = .active
        case "INACTIVE": self = .inactive
        case "INACTIVE_WITH_START_DATE": self = .inactiveWithStartDate
        case "TERMINATED": self = .terminated
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .pending: return "PENDING"
        case .active: return "ACTIVE"
        case .inactive: return "INACTIVE"
        case .inactiveWithStartDate: return "INACTIVE_WITH_START_DATE"
        case .terminated: return "TERMINATED"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: InsuranceStatus, rhs: InsuranceStatus) -> Bool {
      switch (lhs, rhs) {
        case (.pending, .pending): return true
        case (.active, .active): return true
        case (.inactive, .inactive): return true
        case (.inactiveWithStartDate, .inactiveWithStartDate): return true
        case (.terminated, .terminated): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [InsuranceStatus] {
      return [
        .pending,
        .active,
        .inactive,
        .inactiveWithStartDate,
        .terminated,
      ]
    }
  }

  public enum InsuranceType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case rent
    case brf
    case studentRent
    case studentBrf
    case house
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "RENT": self = .rent
        case "BRF": self = .brf
        case "STUDENT_RENT": self = .studentRent
        case "STUDENT_BRF": self = .studentBrf
        case "HOUSE": self = .house
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .rent: return "RENT"
        case .brf: return "BRF"
        case .studentRent: return "STUDENT_RENT"
        case .studentBrf: return "STUDENT_BRF"
        case .house: return "HOUSE"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: InsuranceType, rhs: InsuranceType) -> Bool {
      switch (lhs, rhs) {
        case (.rent, .rent): return true
        case (.brf, .brf): return true
        case (.studentRent, .studentRent): return true
        case (.studentBrf, .studentBrf): return true
        case (.house, .house): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [InsuranceType] {
      return [
        .rent,
        .brf,
        .studentRent,
        .studentBrf,
        .house,
      ]
    }
  }

  /// An enum representing explicitly endorsed Locales supported by our system.
  public enum Locale: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case svSe
    case enSe
    case nbNo
    case enNo
    case daDk
    case enDk
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "sv_SE": self = .svSe
        case "en_SE": self = .enSe
        case "nb_NO": self = .nbNo
        case "en_NO": self = .enNo
        case "da_DK": self = .daDk
        case "en_DK": self = .enDk
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .svSe: return "sv_SE"
        case .enSe: return "en_SE"
        case .nbNo: return "nb_NO"
        case .enNo: return "en_NO"
        case .daDk: return "da_DK"
        case .enDk: return "en_DK"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: Locale, rhs: Locale) -> Bool {
      switch (lhs, rhs) {
        case (.svSe, .svSe): return true
        case (.enSe, .enSe): return true
        case (.nbNo, .nbNo): return true
        case (.enNo, .enNo): return true
        case (.daDk, .daDk): return true
        case (.enDk, .enDk): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [Locale] {
      return [
        .svSe,
        .enSe,
        .nbNo,
        .enNo,
        .daDk,
        .enDk,
      ]
    }
  }

  public enum AddressAutocompleteType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case street
    case building
    case apartment
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "STREET": self = .street
        case "BUILDING": self = .building
        case "APARTMENT": self = .apartment
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .street: return "STREET"
        case .building: return "BUILDING"
        case .apartment: return "APARTMENT"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: AddressAutocompleteType, rhs: AddressAutocompleteType) -> Bool {
      switch (lhs, rhs) {
        case (.street, .street): return true
        case (.building, .building): return true
        case (.apartment, .apartment): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [AddressAutocompleteType] {
      return [
        .street,
        .building,
        .apartment,
      ]
    }
  }

  public enum EmbarkStoryType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case webOnboarding
    case appOnboarding
    case appOnboardingQuoteCart
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "WEB_ONBOARDING": self = .webOnboarding
        case "APP_ONBOARDING": self = .appOnboarding
        case "APP_ONBOARDING_QUOTE_CART": self = .appOnboardingQuoteCart
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .webOnboarding: return "WEB_ONBOARDING"
        case .appOnboarding: return "APP_ONBOARDING"
        case .appOnboardingQuoteCart: return "APP_ONBOARDING_QUOTE_CART"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: EmbarkStoryType, rhs: EmbarkStoryType) -> Bool {
      switch (lhs, rhs) {
        case (.webOnboarding, .webOnboarding): return true
        case (.appOnboarding, .appOnboarding): return true
        case (.appOnboardingQuoteCart, .appOnboardingQuoteCart): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [EmbarkStoryType] {
      return [
        .webOnboarding,
        .appOnboarding,
        .appOnboardingQuoteCart,
      ]
    }
  }

  public enum EmbarkStoryMetadataEntryBackgroundOption: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case gradientOne
    case gradientTwo
    case gradientThree
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "GRADIENT_ONE": self = .gradientOne
        case "GRADIENT_TWO": self = .gradientTwo
        case "GRADIENT_THREE": self = .gradientThree
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .gradientOne: return "GRADIENT_ONE"
        case .gradientTwo: return "GRADIENT_TWO"
        case .gradientThree: return "GRADIENT_THREE"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: EmbarkStoryMetadataEntryBackgroundOption, rhs: EmbarkStoryMetadataEntryBackgroundOption) -> Bool {
      switch (lhs, rhs) {
        case (.gradientOne, .gradientOne): return true
        case (.gradientTwo, .gradientTwo): return true
        case (.gradientThree, .gradientThree): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [EmbarkStoryMetadataEntryBackgroundOption] {
      return [
        .gradientOne,
        .gradientTwo,
        .gradientThree,
      ]
    }
  }

  public enum EmbarkExternalRedirectLocation: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case mailingList
    case offer
    case close
    case chat
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "MailingList": self = .mailingList
        case "Offer": self = .offer
        case "Close": self = .close
        case "Chat": self = .chat
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .mailingList: return "MailingList"
        case .offer: return "Offer"
        case .close: return "Close"
        case .chat: return "Chat"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: EmbarkExternalRedirectLocation, rhs: EmbarkExternalRedirectLocation) -> Bool {
      switch (lhs, rhs) {
        case (.mailingList, .mailingList): return true
        case (.offer, .offer): return true
        case (.close, .close): return true
        case (.chat, .chat): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [EmbarkExternalRedirectLocation] {
      return [
        .mailingList,
        .offer,
        .close,
        .chat,
      ]
    }
  }

  public enum EmbarkPreviousInsuranceProviderActionDataProviders: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case norwegian
    case swedish
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "NORWEGIAN": self = .norwegian
        case "SWEDISH": self = .swedish
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .norwegian: return "NORWEGIAN"
        case .swedish: return "SWEDISH"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: EmbarkPreviousInsuranceProviderActionDataProviders, rhs: EmbarkPreviousInsuranceProviderActionDataProviders) -> Bool {
      switch (lhs, rhs) {
        case (.norwegian, .norwegian): return true
        case (.swedish, .swedish): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [EmbarkPreviousInsuranceProviderActionDataProviders] {
      return [
        .norwegian,
        .swedish,
      ]
    }
  }

  public enum TypeOfContractGradientOption: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case gradientOne
    case gradientTwo
    case gradientThree
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "GRADIENT_ONE": self = .gradientOne
        case "GRADIENT_TWO": self = .gradientTwo
        case "GRADIENT_THREE": self = .gradientThree
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .gradientOne: return "GRADIENT_ONE"
        case .gradientTwo: return "GRADIENT_TWO"
        case .gradientThree: return "GRADIENT_THREE"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: TypeOfContractGradientOption, rhs: TypeOfContractGradientOption) -> Bool {
      switch (lhs, rhs) {
        case (.gradientOne, .gradientOne): return true
        case (.gradientTwo, .gradientTwo): return true
        case (.gradientThree, .gradientThree): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [TypeOfContractGradientOption] {
      return [
        .gradientOne,
        .gradientTwo,
        .gradientThree,
      ]
    }
  }

  public enum AgreementStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    /// An agreement with no activation date, waiting to be activated
    case pending
    /// An agreement that will be active on a future date
    case activeInFuture
    /// An agreement that is active today
    case active
    /// An agreement that either was never active that is now terminated or was active in the past of a now terminated contract
    case terminated
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "PENDING": self = .pending
        case "ACTIVE_IN_FUTURE": self = .activeInFuture
        case "ACTIVE": self = .active
        case "TERMINATED": self = .terminated
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .pending: return "PENDING"
        case .activeInFuture: return "ACTIVE_IN_FUTURE"
        case .active: return "ACTIVE"
        case .terminated: return "TERMINATED"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: AgreementStatus, rhs: AgreementStatus) -> Bool {
      switch (lhs, rhs) {
        case (.pending, .pending): return true
        case (.activeInFuture, .activeInFuture): return true
        case (.active, .active): return true
        case (.terminated, .terminated): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [AgreementStatus] {
      return [
        .pending,
        .activeInFuture,
        .active,
        .terminated,
      ]
    }
  }

  public enum TypeOfContract: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case seHouse
    case seApartmentBrf
    case seApartmentRent
    case seApartmentStudentBrf
    case seApartmentStudentRent
    case seAccident
    case seAccidentStudent
    case noHomeContentOwn
    case noHomeContentRent
    case noHomeContentYouthOwn
    case noHomeContentYouthRent
    case noTravel
    case noTravelYouth
    case dkHomeContentOwn
    case dkHomeContentRent
    case dkHomeContentStudentOwn
    case dkHomeContentStudentRent
    case dkAccident
    case dkAccidentStudent
    case dkTravel
    case dkTravelStudent
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "SE_HOUSE": self = .seHouse
        case "SE_APARTMENT_BRF": self = .seApartmentBrf
        case "SE_APARTMENT_RENT": self = .seApartmentRent
        case "SE_APARTMENT_STUDENT_BRF": self = .seApartmentStudentBrf
        case "SE_APARTMENT_STUDENT_RENT": self = .seApartmentStudentRent
        case "SE_ACCIDENT": self = .seAccident
        case "SE_ACCIDENT_STUDENT": self = .seAccidentStudent
        case "NO_HOME_CONTENT_OWN": self = .noHomeContentOwn
        case "NO_HOME_CONTENT_RENT": self = .noHomeContentRent
        case "NO_HOME_CONTENT_YOUTH_OWN": self = .noHomeContentYouthOwn
        case "NO_HOME_CONTENT_YOUTH_RENT": self = .noHomeContentYouthRent
        case "NO_TRAVEL": self = .noTravel
        case "NO_TRAVEL_YOUTH": self = .noTravelYouth
        case "DK_HOME_CONTENT_OWN": self = .dkHomeContentOwn
        case "DK_HOME_CONTENT_RENT": self = .dkHomeContentRent
        case "DK_HOME_CONTENT_STUDENT_OWN": self = .dkHomeContentStudentOwn
        case "DK_HOME_CONTENT_STUDENT_RENT": self = .dkHomeContentStudentRent
        case "DK_ACCIDENT": self = .dkAccident
        case "DK_ACCIDENT_STUDENT": self = .dkAccidentStudent
        case "DK_TRAVEL": self = .dkTravel
        case "DK_TRAVEL_STUDENT": self = .dkTravelStudent
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .seHouse: return "SE_HOUSE"
        case .seApartmentBrf: return "SE_APARTMENT_BRF"
        case .seApartmentRent: return "SE_APARTMENT_RENT"
        case .seApartmentStudentBrf: return "SE_APARTMENT_STUDENT_BRF"
        case .seApartmentStudentRent: return "SE_APARTMENT_STUDENT_RENT"
        case .seAccident: return "SE_ACCIDENT"
        case .seAccidentStudent: return "SE_ACCIDENT_STUDENT"
        case .noHomeContentOwn: return "NO_HOME_CONTENT_OWN"
        case .noHomeContentRent: return "NO_HOME_CONTENT_RENT"
        case .noHomeContentYouthOwn: return "NO_HOME_CONTENT_YOUTH_OWN"
        case .noHomeContentYouthRent: return "NO_HOME_CONTENT_YOUTH_RENT"
        case .noTravel: return "NO_TRAVEL"
        case .noTravelYouth: return "NO_TRAVEL_YOUTH"
        case .dkHomeContentOwn: return "DK_HOME_CONTENT_OWN"
        case .dkHomeContentRent: return "DK_HOME_CONTENT_RENT"
        case .dkHomeContentStudentOwn: return "DK_HOME_CONTENT_STUDENT_OWN"
        case .dkHomeContentStudentRent: return "DK_HOME_CONTENT_STUDENT_RENT"
        case .dkAccident: return "DK_ACCIDENT"
        case .dkAccidentStudent: return "DK_ACCIDENT_STUDENT"
        case .dkTravel: return "DK_TRAVEL"
        case .dkTravelStudent: return "DK_TRAVEL_STUDENT"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: TypeOfContract, rhs: TypeOfContract) -> Bool {
      switch (lhs, rhs) {
        case (.seHouse, .seHouse): return true
        case (.seApartmentBrf, .seApartmentBrf): return true
        case (.seApartmentRent, .seApartmentRent): return true
        case (.seApartmentStudentBrf, .seApartmentStudentBrf): return true
        case (.seApartmentStudentRent, .seApartmentStudentRent): return true
        case (.seAccident, .seAccident): return true
        case (.seAccidentStudent, .seAccidentStudent): return true
        case (.noHomeContentOwn, .noHomeContentOwn): return true
        case (.noHomeContentRent, .noHomeContentRent): return true
        case (.noHomeContentYouthOwn, .noHomeContentYouthOwn): return true
        case (.noHomeContentYouthRent, .noHomeContentYouthRent): return true
        case (.noTravel, .noTravel): return true
        case (.noTravelYouth, .noTravelYouth): return true
        case (.dkHomeContentOwn, .dkHomeContentOwn): return true
        case (.dkHomeContentRent, .dkHomeContentRent): return true
        case (.dkHomeContentStudentOwn, .dkHomeContentStudentOwn): return true
        case (.dkHomeContentStudentRent, .dkHomeContentStudentRent): return true
        case (.dkAccident, .dkAccident): return true
        case (.dkAccidentStudent, .dkAccidentStudent): return true
        case (.dkTravel, .dkTravel): return true
        case (.dkTravelStudent, .dkTravelStudent): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [TypeOfContract] {
      return [
        .seHouse,
        .seApartmentBrf,
        .seApartmentRent,
        .seApartmentStudentBrf,
        .seApartmentStudentRent,
        .seAccident,
        .seAccidentStudent,
        .noHomeContentOwn,
        .noHomeContentRent,
        .noHomeContentYouthOwn,
        .noHomeContentYouthRent,
        .noTravel,
        .noTravelYouth,
        .dkHomeContentOwn,
        .dkHomeContentRent,
        .dkHomeContentStudentOwn,
        .dkHomeContentStudentRent,
        .dkAccident,
        .dkAccidentStudent,
        .dkTravel,
        .dkTravelStudent,
      ]
    }
  }

  public enum CrossSellType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case accident
    case travel
    case homeContent
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "ACCIDENT": self = .accident
        case "TRAVEL": self = .travel
        case "HOME_CONTENT": self = .homeContent
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .accident: return "ACCIDENT"
        case .travel: return "TRAVEL"
        case .homeContent: return "HOME_CONTENT"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: CrossSellType, rhs: CrossSellType) -> Bool {
      switch (lhs, rhs) {
        case (.accident, .accident): return true
        case (.travel, .travel): return true
        case (.homeContent, .homeContent): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [CrossSellType] {
      return [
        .accident,
        .travel,
        .homeContent,
      ]
    }
  }

  public enum InsuranceTermType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case termsAndConditions
    case preSaleInfoEuStandard
    case generalTerms
    case privacyPolicy
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "TERMS_AND_CONDITIONS": self = .termsAndConditions
        case "PRE_SALE_INFO_EU_STANDARD": self = .preSaleInfoEuStandard
        case "GENERAL_TERMS": self = .generalTerms
        case "PRIVACY_POLICY": self = .privacyPolicy
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .termsAndConditions: return "TERMS_AND_CONDITIONS"
        case .preSaleInfoEuStandard: return "PRE_SALE_INFO_EU_STANDARD"
        case .generalTerms: return "GENERAL_TERMS"
        case .privacyPolicy: return "PRIVACY_POLICY"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: InsuranceTermType, rhs: InsuranceTermType) -> Bool {
      switch (lhs, rhs) {
        case (.termsAndConditions, .termsAndConditions): return true
        case (.preSaleInfoEuStandard, .preSaleInfoEuStandard): return true
        case (.generalTerms, .generalTerms): return true
        case (.privacyPolicy, .privacyPolicy): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [InsuranceTermType] {
      return [
        .termsAndConditions,
        .preSaleInfoEuStandard,
        .generalTerms,
        .privacyPolicy,
      ]
    }
  }

  public enum ClaimStatusCardPillType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case `open`
    case closed
    case reopened
    case payment
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "OPEN": self = .open
        case "CLOSED": self = .closed
        case "REOPENED": self = .reopened
        case "PAYMENT": self = .payment
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .open: return "OPEN"
        case .closed: return "CLOSED"
        case .reopened: return "REOPENED"
        case .payment: return "PAYMENT"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: ClaimStatusCardPillType, rhs: ClaimStatusCardPillType) -> Bool {
      switch (lhs, rhs) {
        case (.open, .open): return true
        case (.closed, .closed): return true
        case (.reopened, .reopened): return true
        case (.payment, .payment): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [ClaimStatusCardPillType] {
      return [
        .open,
        .closed,
        .reopened,
        .payment,
      ]
    }
  }

  public enum ClaimOutcome: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case paid
    case notCompensated
    case notCovered
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "PAID": self = .paid
        case "NOT_COMPENSATED": self = .notCompensated
        case "NOT_COVERED": self = .notCovered
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .paid: return "PAID"
        case .notCompensated: return "NOT_COMPENSATED"
        case .notCovered: return "NOT_COVERED"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: ClaimOutcome, rhs: ClaimOutcome) -> Bool {
      switch (lhs, rhs) {
        case (.paid, .paid): return true
        case (.notCompensated, .notCompensated): return true
        case (.notCovered, .notCovered): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [ClaimOutcome] {
      return [
        .paid,
        .notCompensated,
        .notCovered,
      ]
    }
  }

  public struct CampaignInput: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    /// - Parameters:
    ///   - source
    ///   - medium
    ///   - term
    ///   - content
    ///   - name
    public init(source: Swift.Optional<String?> = nil, medium: Swift.Optional<String?> = nil, term: Swift.Optional<String?> = nil, content: Swift.Optional<String?> = nil, name: Swift.Optional<String?> = nil) {
      graphQLMap = ["source": source, "medium": medium, "term": term, "content": content, "name": name]
    }

    public var source: Swift.Optional<String?> {
      get {
        return graphQLMap["source"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "source")
      }
    }

    public var medium: Swift.Optional<String?> {
      get {
        return graphQLMap["medium"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "medium")
      }
    }

    public var term: Swift.Optional<String?> {
      get {
        return graphQLMap["term"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "term")
      }
    }

    public var content: Swift.Optional<String?> {
      get {
        return graphQLMap["content"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "content")
      }
    }

    public var name: Swift.Optional<String?> {
      get {
        return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "name")
      }
    }
  }

  public enum PayinMethodStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case active
    case pending
    case needsSetup
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "ACTIVE": self = .active
        case "PENDING": self = .pending
        case "NEEDS_SETUP": self = .needsSetup
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .active: return "ACTIVE"
        case .pending: return "PENDING"
        case .needsSetup: return "NEEDS_SETUP"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: PayinMethodStatus, rhs: PayinMethodStatus) -> Bool {
      switch (lhs, rhs) {
        case (.active, .active): return true
        case (.pending, .pending): return true
        case (.needsSetup, .needsSetup): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [PayinMethodStatus] {
      return [
        .active,
        .pending,
        .needsSetup,
      ]
    }
  }

  public enum QuoteBundleAppConfigurationApproveButtonTerminology: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case approveChanges
    case confirmPurchase
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "APPROVE_CHANGES": self = .approveChanges
        case "CONFIRM_PURCHASE": self = .confirmPurchase
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .approveChanges: return "APPROVE_CHANGES"
        case .confirmPurchase: return "CONFIRM_PURCHASE"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: QuoteBundleAppConfigurationApproveButtonTerminology, rhs: QuoteBundleAppConfigurationApproveButtonTerminology) -> Bool {
      switch (lhs, rhs) {
        case (.approveChanges, .approveChanges): return true
        case (.confirmPurchase, .confirmPurchase): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [QuoteBundleAppConfigurationApproveButtonTerminology] {
      return [
        .approveChanges,
        .confirmPurchase,
      ]
    }
  }

  public enum QuoteBundleAppConfigurationStartDateTerminology: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case startDate
    case accessDate
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "START_DATE": self = .startDate
        case "ACCESS_DATE": self = .accessDate
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .startDate: return "START_DATE"
        case .accessDate: return "ACCESS_DATE"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: QuoteBundleAppConfigurationStartDateTerminology, rhs: QuoteBundleAppConfigurationStartDateTerminology) -> Bool {
      switch (lhs, rhs) {
        case (.startDate, .startDate): return true
        case (.accessDate, .accessDate): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [QuoteBundleAppConfigurationStartDateTerminology] {
      return [
        .startDate,
        .accessDate,
      ]
    }
  }

  public enum QuoteBundleAppConfigurationTitle: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case logo
    case updateSummary
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "LOGO": self = .logo
        case "UPDATE_SUMMARY": self = .updateSummary
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .logo: return "LOGO"
        case .updateSummary: return "UPDATE_SUMMARY"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: QuoteBundleAppConfigurationTitle, rhs: QuoteBundleAppConfigurationTitle) -> Bool {
      switch (lhs, rhs) {
        case (.logo, .logo): return true
        case (.updateSummary, .updateSummary): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [QuoteBundleAppConfigurationTitle] {
      return [
        .logo,
        .updateSummary,
      ]
    }
  }

  public enum SignMethod: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case swedishBankId
    case norwegianBankId
    case danishBankId
    case simpleSign
    case approveOnly
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "SWEDISH_BANK_ID": self = .swedishBankId
        case "NORWEGIAN_BANK_ID": self = .norwegianBankId
        case "DANISH_BANK_ID": self = .danishBankId
        case "SIMPLE_SIGN": self = .simpleSign
        case "APPROVE_ONLY": self = .approveOnly
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .swedishBankId: return "SWEDISH_BANK_ID"
        case .norwegianBankId: return "NORWEGIAN_BANK_ID"
        case .danishBankId: return "DANISH_BANK_ID"
        case .simpleSign: return "SIMPLE_SIGN"
        case .approveOnly: return "APPROVE_ONLY"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: SignMethod, rhs: SignMethod) -> Bool {
      switch (lhs, rhs) {
        case (.swedishBankId, .swedishBankId): return true
        case (.norwegianBankId, .norwegianBankId): return true
        case (.danishBankId, .danishBankId): return true
        case (.simpleSign, .simpleSign): return true
        case (.approveOnly, .approveOnly): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [SignMethod] {
      return [
        .swedishBankId,
        .norwegianBankId,
        .danishBankId,
        .simpleSign,
        .approveOnly,
      ]
    }
  }

  public enum HedvigColor: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case pink
    case turquoise
    case purple
    case darkPurple
    case blackPurple
    case darkGray
    case lightGray
    case white
    case black
    case offBlack
    case offWhite
    case yellow
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "Pink": self = .pink
        case "Turquoise": self = .turquoise
        case "Purple": self = .purple
        case "DarkPurple": self = .darkPurple
        case "BlackPurple": self = .blackPurple
        case "DarkGray": self = .darkGray
        case "LightGray": self = .lightGray
        case "White": self = .white
        case "Black": self = .black
        case "OffBlack": self = .offBlack
        case "OffWhite": self = .offWhite
        case "Yellow": self = .yellow
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .pink: return "Pink"
        case .turquoise: return "Turquoise"
        case .purple: return "Purple"
        case .darkPurple: return "DarkPurple"
        case .blackPurple: return "BlackPurple"
        case .darkGray: return "DarkGray"
        case .lightGray: return "LightGray"
        case .white: return "White"
        case .black: return "Black"
        case .offBlack: return "OffBlack"
        case .offWhite: return "OffWhite"
        case .yellow: return "Yellow"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: HedvigColor, rhs: HedvigColor) -> Bool {
      switch (lhs, rhs) {
        case (.pink, .pink): return true
        case (.turquoise, .turquoise): return true
        case (.purple, .purple): return true
        case (.darkPurple, .darkPurple): return true
        case (.blackPurple, .blackPurple): return true
        case (.darkGray, .darkGray): return true
        case (.lightGray, .lightGray): return true
        case (.white, .white): return true
        case (.black, .black): return true
        case (.offBlack, .offBlack): return true
        case (.offWhite, .offWhite): return true
        case (.yellow, .yellow): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [HedvigColor] {
      return [
        .pink,
        .turquoise,
        .purple,
        .darkPurple,
        .blackPurple,
        .darkGray,
        .lightGray,
        .white,
        .black,
        .offBlack,
        .offWhite,
        .yellow,
      ]
    }
  }

  public enum DataCollectionStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case running
    case login
    case collecting
    case completedPartial
    case completed
    case completedEmpty
    case failed
    case userInput
    case waitingForAuthentication
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "RUNNING": self = .running
        case "LOGIN": self = .login
        case "COLLECTING": self = .collecting
        case "COMPLETED_PARTIAL": self = .completedPartial
        case "COMPLETED": self = .completed
        case "COMPLETED_EMPTY": self = .completedEmpty
        case "FAILED": self = .failed
        case "USER_INPUT": self = .userInput
        case "WAITING_FOR_AUTHENTICATION": self = .waitingForAuthentication
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .running: return "RUNNING"
        case .login: return "LOGIN"
        case .collecting: return "COLLECTING"
        case .completedPartial: return "COMPLETED_PARTIAL"
        case .completed: return "COMPLETED"
        case .completedEmpty: return "COMPLETED_EMPTY"
        case .failed: return "FAILED"
        case .userInput: return "USER_INPUT"
        case .waitingForAuthentication: return "WAITING_FOR_AUTHENTICATION"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: DataCollectionStatus, rhs: DataCollectionStatus) -> Bool {
      switch (lhs, rhs) {
        case (.running, .running): return true
        case (.login, .login): return true
        case (.collecting, .collecting): return true
        case (.completedPartial, .completedPartial): return true
        case (.completed, .completed): return true
        case (.completedEmpty, .completedEmpty): return true
        case (.failed, .failed): return true
        case (.userInput, .userInput): return true
        case (.waitingForAuthentication, .waitingForAuthentication): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [DataCollectionStatus] {
      return [
        .running,
        .login,
        .collecting,
        .completedPartial,
        .completed,
        .completedEmpty,
        .failed,
        .userInput,
        .waitingForAuthentication,
      ]
    }
  }

  public enum BankIdStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case pending
    case failed
    case complete
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "pending": self = .pending
        case "failed": self = .failed
        case "complete": self = .complete
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .pending: return "pending"
        case .failed: return "failed"
        case .complete: return "complete"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: BankIdStatus, rhs: BankIdStatus) -> Bool {
      switch (lhs, rhs) {
        case (.pending, .pending): return true
        case (.failed, .failed): return true
        case (.complete, .complete): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [BankIdStatus] {
      return [
        .pending,
        .failed,
        .complete,
      ]
    }
  }

  public enum SignState: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case initiated
    case inProgress
    case failed
    case completed
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "INITIATED": self = .initiated
        case "IN_PROGRESS": self = .inProgress
        case "FAILED": self = .failed
        case "COMPLETED": self = .completed
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .initiated: return "INITIATED"
        case .inProgress: return "IN_PROGRESS"
        case .failed: return "FAILED"
        case .completed: return "COMPLETED"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: SignState, rhs: SignState) -> Bool {
      switch (lhs, rhs) {
        case (.initiated, .initiated): return true
        case (.inProgress, .inProgress): return true
        case (.failed, .failed): return true
        case (.completed, .completed): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [SignState] {
      return [
        .initiated,
        .inProgress,
        .failed,
        .completed,
      ]
    }
  }

  public enum PayoutMethodStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case active
    case pending
    case needsSetup
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "ACTIVE": self = .active
        case "PENDING": self = .pending
        case "NEEDS_SETUP": self = .needsSetup
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .active: return "ACTIVE"
        case .pending: return "PENDING"
        case .needsSetup: return "NEEDS_SETUP"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: PayoutMethodStatus, rhs: PayoutMethodStatus) -> Bool {
      switch (lhs, rhs) {
        case (.active, .active): return true
        case (.pending, .pending): return true
        case (.needsSetup, .needsSetup): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [PayoutMethodStatus] {
      return [
        .active,
        .pending,
        .needsSetup,
      ]
    }
  }

  public enum TokenizationResultType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case completed
    case pending
    case failed
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "COMPLETED": self = .completed
        case "PENDING": self = .pending
        case "FAILED": self = .failed
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .completed: return "COMPLETED"
        case .pending: return "PENDING"
        case .failed: return "FAILED"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: TokenizationResultType, rhs: TokenizationResultType) -> Bool {
      switch (lhs, rhs) {
        case (.completed, .completed): return true
        case (.pending, .pending): return true
        case (.failed, .failed): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [TokenizationResultType] {
      return [
        .completed,
        .pending,
        .failed,
      ]
    }
  }

  public struct TokenizationRequest: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    /// - Parameters:
    ///   - paymentMethodDetails
    ///   - channel
    ///   - browserInfo
    ///   - returnUrl
    public init(paymentMethodDetails: String, channel: TokenizationChannel, browserInfo: Swift.Optional<BrowserInfo?> = nil, returnUrl: String) {
      graphQLMap = ["paymentMethodDetails": paymentMethodDetails, "channel": channel, "browserInfo": browserInfo, "returnUrl": returnUrl]
    }

    public var paymentMethodDetails: String {
      get {
        return graphQLMap["paymentMethodDetails"] as! String
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "paymentMethodDetails")
      }
    }

    public var channel: TokenizationChannel {
      get {
        return graphQLMap["channel"] as! TokenizationChannel
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "channel")
      }
    }

    public var browserInfo: Swift.Optional<BrowserInfo?> {
      get {
        return graphQLMap["browserInfo"] as? Swift.Optional<BrowserInfo?> ?? Swift.Optional<BrowserInfo?>.none
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "browserInfo")
      }
    }

    public var returnUrl: String {
      get {
        return graphQLMap["returnUrl"] as! String
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "returnUrl")
      }
    }
  }

  public enum TokenizationChannel: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case android
    case ios
    case web
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "ANDROID": self = .android
        case "IOS": self = .ios
        case "WEB": self = .web
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .android: return "ANDROID"
        case .ios: return "IOS"
        case .web: return "WEB"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: TokenizationChannel, rhs: TokenizationChannel) -> Bool {
      switch (lhs, rhs) {
        case (.android, .android): return true
        case (.ios, .ios): return true
        case (.web, .web): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [TokenizationChannel] {
      return [
        .android,
        .ios,
        .web,
      ]
    }
  }

  public struct BrowserInfo: GraphQLMapConvertible {
    public var graphQLMap: GraphQLMap

    /// - Parameters:
    ///   - userAgent
    ///   - acceptHeader
    ///   - language
    ///   - colorDepth
    ///   - screenHeight
    ///   - screenWidth
    ///   - timeZoneOffset
    ///   - javaEnabled
    public init(userAgent: String, acceptHeader: String, language: String, colorDepth: Int, screenHeight: Int, screenWidth: Int, timeZoneOffset: Int, javaEnabled: Bool) {
      graphQLMap = ["userAgent": userAgent, "acceptHeader": acceptHeader, "language": language, "colorDepth": colorDepth, "screenHeight": screenHeight, "screenWidth": screenWidth, "timeZoneOffset": timeZoneOffset, "javaEnabled": javaEnabled]
    }

    public var userAgent: String {
      get {
        return graphQLMap["userAgent"] as! String
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "userAgent")
      }
    }

    public var acceptHeader: String {
      get {
        return graphQLMap["acceptHeader"] as! String
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "acceptHeader")
      }
    }

    public var language: String {
      get {
        return graphQLMap["language"] as! String
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "language")
      }
    }

    public var colorDepth: Int {
      get {
        return graphQLMap["colorDepth"] as! Int
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "colorDepth")
      }
    }

    public var screenHeight: Int {
      get {
        return graphQLMap["screenHeight"] as! Int
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "screenHeight")
      }
    }

    public var screenWidth: Int {
      get {
        return graphQLMap["screenWidth"] as! Int
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "screenWidth")
      }
    }

    public var timeZoneOffset: Int {
      get {
        return graphQLMap["timeZoneOffset"] as! Int
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "timeZoneOffset")
      }
    }

    public var javaEnabled: Bool {
      get {
        return graphQLMap["javaEnabled"] as! Bool
      }
      set {
        graphQLMap.updateValue(newValue, forKey: "javaEnabled")
      }
    }
  }

  public enum CancelDirectDebitStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case accepted
    case declinedMissingToken
    case declinedMissingRequest
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "ACCEPTED": self = .accepted
        case "DECLINED_MISSING_TOKEN": self = .declinedMissingToken
        case "DECLINED_MISSING_REQUEST": self = .declinedMissingRequest
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .accepted: return "ACCEPTED"
        case .declinedMissingToken: return "DECLINED_MISSING_TOKEN"
        case .declinedMissingRequest: return "DECLINED_MISSING_REQUEST"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: CancelDirectDebitStatus, rhs: CancelDirectDebitStatus) -> Bool {
      switch (lhs, rhs) {
        case (.accepted, .accepted): return true
        case (.declinedMissingToken, .declinedMissingToken): return true
        case (.declinedMissingRequest, .declinedMissingRequest): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [CancelDirectDebitStatus] {
      return [
        .accepted,
        .declinedMissingToken,
        .declinedMissingRequest,
      ]
    }
  }

  public enum MessageBodyChoicesLinkView: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case offer
    case dashboard
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "OFFER": self = .offer
        case "DASHBOARD": self = .dashboard
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .offer: return "OFFER"
        case .dashboard: return "DASHBOARD"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: MessageBodyChoicesLinkView, rhs: MessageBodyChoicesLinkView) -> Bool {
      switch (lhs, rhs) {
        case (.offer, .offer): return true
        case (.dashboard, .dashboard): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [MessageBodyChoicesLinkView] {
      return [
        .offer,
        .dashboard,
      ]
    }
  }

  public enum KeyboardType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case `default`
    case numberpad
    case decimalpad
    case numeric
    case email
    case phone
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "DEFAULT": self = .default
        case "NUMBERPAD": self = .numberpad
        case "DECIMALPAD": self = .decimalpad
        case "NUMERIC": self = .numeric
        case "EMAIL": self = .email
        case "PHONE": self = .phone
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .default: return "DEFAULT"
        case .numberpad: return "NUMBERPAD"
        case .decimalpad: return "DECIMALPAD"
        case .numeric: return "NUMERIC"
        case .email: return "EMAIL"
        case .phone: return "PHONE"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: KeyboardType, rhs: KeyboardType) -> Bool {
      switch (lhs, rhs) {
        case (.default, .default): return true
        case (.numberpad, .numberpad): return true
        case (.decimalpad, .decimalpad): return true
        case (.numeric, .numeric): return true
        case (.email, .email): return true
        case (.phone, .phone): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [KeyboardType] {
      return [
        .default,
        .numberpad,
        .decimalpad,
        .numeric,
        .email,
        .phone,
      ]
    }
  }

  public enum TextContentType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case `none`
    case url
    case addressCity
    case addressCityState
    case addressState
    case countryName
    case creditCardNumber
    case emailAddress
    case familyName
    case fullStreetAddress
    case givenName
    case jobTitle
    case location
    case middleName
    case name
    case namePrefix
    case nameSuffix
    case nickName
    case organizationName
    case postalCode
    case streetAddressLine1
    case streetAddressLine2
    case sublocality
    case telephoneNumber
    case username
    case password
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "NONE": self = .none
        case "URL": self = .url
        case "ADDRESS_CITY": self = .addressCity
        case "ADDRESS_CITY_STATE": self = .addressCityState
        case "ADDRESS_STATE": self = .addressState
        case "COUNTRY_NAME": self = .countryName
        case "CREDIT_CARD_NUMBER": self = .creditCardNumber
        case "EMAIL_ADDRESS": self = .emailAddress
        case "FAMILY_NAME": self = .familyName
        case "FULL_STREET_ADDRESS": self = .fullStreetAddress
        case "GIVEN_NAME": self = .givenName
        case "JOB_TITLE": self = .jobTitle
        case "LOCATION": self = .location
        case "MIDDLE_NAME": self = .middleName
        case "NAME": self = .name
        case "NAME_PREFIX": self = .namePrefix
        case "NAME_SUFFIX": self = .nameSuffix
        case "NICK_NAME": self = .nickName
        case "ORGANIZATION_NAME": self = .organizationName
        case "POSTAL_CODE": self = .postalCode
        case "STREET_ADDRESS_LINE1": self = .streetAddressLine1
        case "STREET_ADDRESS_LINE2": self = .streetAddressLine2
        case "SUBLOCALITY": self = .sublocality
        case "TELEPHONE_NUMBER": self = .telephoneNumber
        case "USERNAME": self = .username
        case "PASSWORD": self = .password
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .none: return "NONE"
        case .url: return "URL"
        case .addressCity: return "ADDRESS_CITY"
        case .addressCityState: return "ADDRESS_CITY_STATE"
        case .addressState: return "ADDRESS_STATE"
        case .countryName: return "COUNTRY_NAME"
        case .creditCardNumber: return "CREDIT_CARD_NUMBER"
        case .emailAddress: return "EMAIL_ADDRESS"
        case .familyName: return "FAMILY_NAME"
        case .fullStreetAddress: return "FULL_STREET_ADDRESS"
        case .givenName: return "GIVEN_NAME"
        case .jobTitle: return "JOB_TITLE"
        case .location: return "LOCATION"
        case .middleName: return "MIDDLE_NAME"
        case .name: return "NAME"
        case .namePrefix: return "NAME_PREFIX"
        case .nameSuffix: return "NAME_SUFFIX"
        case .nickName: return "NICK_NAME"
        case .organizationName: return "ORGANIZATION_NAME"
        case .postalCode: return "POSTAL_CODE"
        case .streetAddressLine1: return "STREET_ADDRESS_LINE1"
        case .streetAddressLine2: return "STREET_ADDRESS_LINE2"
        case .sublocality: return "SUBLOCALITY"
        case .telephoneNumber: return "TELEPHONE_NUMBER"
        case .username: return "USERNAME"
        case .password: return "PASSWORD"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: TextContentType, rhs: TextContentType) -> Bool {
      switch (lhs, rhs) {
        case (.none, .none): return true
        case (.url, .url): return true
        case (.addressCity, .addressCity): return true
        case (.addressCityState, .addressCityState): return true
        case (.addressState, .addressState): return true
        case (.countryName, .countryName): return true
        case (.creditCardNumber, .creditCardNumber): return true
        case (.emailAddress, .emailAddress): return true
        case (.familyName, .familyName): return true
        case (.fullStreetAddress, .fullStreetAddress): return true
        case (.givenName, .givenName): return true
        case (.jobTitle, .jobTitle): return true
        case (.location, .location): return true
        case (.middleName, .middleName): return true
        case (.name, .name): return true
        case (.namePrefix, .namePrefix): return true
        case (.nameSuffix, .nameSuffix): return true
        case (.nickName, .nickName): return true
        case (.organizationName, .organizationName): return true
        case (.postalCode, .postalCode): return true
        case (.streetAddressLine1, .streetAddressLine1): return true
        case (.streetAddressLine2, .streetAddressLine2): return true
        case (.sublocality, .sublocality): return true
        case (.telephoneNumber, .telephoneNumber): return true
        case (.username, .username): return true
        case (.password, .password): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [TextContentType] {
      return [
        .none,
        .url,
        .addressCity,
        .addressCityState,
        .addressState,
        .countryName,
        .creditCardNumber,
        .emailAddress,
        .familyName,
        .fullStreetAddress,
        .givenName,
        .jobTitle,
        .location,
        .middleName,
        .name,
        .namePrefix,
        .nameSuffix,
        .nickName,
        .organizationName,
        .postalCode,
        .streetAddressLine1,
        .streetAddressLine2,
        .sublocality,
        .telephoneNumber,
        .username,
        .password,
      ]
    }
  }

  public enum EmbarkExpressionTypeUnary: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case always
    case never
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "ALWAYS": self = .always
        case "NEVER": self = .never
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .always: return "ALWAYS"
        case .never: return "NEVER"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: EmbarkExpressionTypeUnary, rhs: EmbarkExpressionTypeUnary) -> Bool {
      switch (lhs, rhs) {
        case (.always, .always): return true
        case (.never, .never): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [EmbarkExpressionTypeUnary] {
      return [
        .always,
        .never,
      ]
    }
  }

  public enum EmbarkExpressionTypeBinary: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case equals
    case notEquals
    case moreThan
    case lessThan
    case moreThanOrEquals
    case lessThanOrEquals
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "EQUALS": self = .equals
        case "NOT_EQUALS": self = .notEquals
        case "MORE_THAN": self = .moreThan
        case "LESS_THAN": self = .lessThan
        case "MORE_THAN_OR_EQUALS": self = .moreThanOrEquals
        case "LESS_THAN_OR_EQUALS": self = .lessThanOrEquals
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .equals: return "EQUALS"
        case .notEquals: return "NOT_EQUALS"
        case .moreThan: return "MORE_THAN"
        case .lessThan: return "LESS_THAN"
        case .moreThanOrEquals: return "MORE_THAN_OR_EQUALS"
        case .lessThanOrEquals: return "LESS_THAN_OR_EQUALS"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: EmbarkExpressionTypeBinary, rhs: EmbarkExpressionTypeBinary) -> Bool {
      switch (lhs, rhs) {
        case (.equals, .equals): return true
        case (.notEquals, .notEquals): return true
        case (.moreThan, .moreThan): return true
        case (.lessThan, .lessThan): return true
        case (.moreThanOrEquals, .moreThanOrEquals): return true
        case (.lessThanOrEquals, .lessThanOrEquals): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [EmbarkExpressionTypeBinary] {
      return [
        .equals,
        .notEquals,
        .moreThan,
        .lessThan,
        .moreThanOrEquals,
        .lessThanOrEquals,
      ]
    }
  }

  public enum EmbarkExpressionTypeMultiple: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case and
    case or
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "AND": self = .and
        case "OR": self = .or
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .and: return "AND"
        case .or: return "OR"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: EmbarkExpressionTypeMultiple, rhs: EmbarkExpressionTypeMultiple) -> Bool {
      switch (lhs, rhs) {
        case (.and, .and): return true
        case (.or, .or): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [EmbarkExpressionTypeMultiple] {
      return [
        .and,
        .or,
      ]
    }
  }

  public enum EmbarkAPIGraphQLSingleVariableCasting: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case string
    case int
    case boolean
    case file
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "string": self = .string
        case "int": self = .int
        case "boolean": self = .boolean
        case "file": self = .file
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .string: return "string"
        case .int: return "int"
        case .boolean: return "boolean"
        case .file: return "file"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: EmbarkAPIGraphQLSingleVariableCasting, rhs: EmbarkAPIGraphQLSingleVariableCasting) -> Bool {
      switch (lhs, rhs) {
        case (.string, .string): return true
        case (.int, .int): return true
        case (.boolean, .boolean): return true
        case (.file, .file): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [EmbarkAPIGraphQLSingleVariableCasting] {
      return [
        .string,
        .int,
        .boolean,
        .file,
      ]
    }
  }

  public enum EmbarkAPIGraphQLVariableGeneratedType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case uuid
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "uuid": self = .uuid
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .uuid: return "uuid"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: EmbarkAPIGraphQLVariableGeneratedType, rhs: EmbarkAPIGraphQLVariableGeneratedType) -> Bool {
      switch (lhs, rhs) {
        case (.uuid, .uuid): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [EmbarkAPIGraphQLVariableGeneratedType] {
      return [
        .uuid,
      ]
    }
  }

  public enum ClaimStatusProgressType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
    public typealias RawValue = String
    case pastInactive
    case currentlyActive
    case futureInactive
    case paid
    case reopened
    /// Auto generated constant for unknown enum values
    case __unknown(RawValue)

    public init?(rawValue: RawValue) {
      switch rawValue {
        case "PAST_INACTIVE": self = .pastInactive
        case "CURRENTLY_ACTIVE": self = .currentlyActive
        case "FUTURE_INACTIVE": self = .futureInactive
        case "PAID": self = .paid
        case "REOPENED": self = .reopened
        default: self = .__unknown(rawValue)
      }
    }

    public var rawValue: RawValue {
      switch self {
        case .pastInactive: return "PAST_INACTIVE"
        case .currentlyActive: return "CURRENTLY_ACTIVE"
        case .futureInactive: return "FUTURE_INACTIVE"
        case .paid: return "PAID"
        case .reopened: return "REOPENED"
        case .__unknown(let value): return value
      }
    }

    public static func == (lhs: ClaimStatusProgressType, rhs: ClaimStatusProgressType) -> Bool {
      switch (lhs, rhs) {
        case (.pastInactive, .pastInactive): return true
        case (.currentlyActive, .currentlyActive): return true
        case (.futureInactive, .futureInactive): return true
        case (.paid, .paid): return true
        case (.reopened, .reopened): return true
        case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
        default: return false
      }
    }

    public static var allCases: [ClaimStatusProgressType] {
      return [
        .pastInactive,
        .currentlyActive,
        .futureInactive,
        .paid,
        .reopened,
      ]
    }
  }
}
