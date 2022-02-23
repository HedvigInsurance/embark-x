// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
public typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
public typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
public enum hCoreUIAssets {
  public static let flagDK = ImageAsset(name: "Flag-DK")
  public static let flagFR = ImageAsset(name: "Flag-FR")
  public static let flagNO = ImageAsset(name: "Flag-NO")
  public static let flagSE = ImageAsset(name: "Flag-SE")
  public static let addButton = ImageAsset(name: "AddButton")
  public static let apartment = ImageAsset(name: "Apartment")
  public static let backButton = ImageAsset(name: "BackButton")
  public static let bankIdLogo = ImageAsset(name: "BankIdLogo")
  public static let calendar = ImageAsset(name: "Calendar")
  public static let chat = ImageAsset(name: "Chat")
  public static let chevronDown = ImageAsset(name: "ChevronDown")
  public static let chevronRight = ImageAsset(name: "ChevronRight")
  public static let chevronUp = ImageAsset(name: "ChevronUp")
  public static let circularCheckmark = ImageAsset(name: "CircularCheckmark")
  public static let circularClock = ImageAsset(name: "CircularClock")
  public static let circularExclamationPoint = ImageAsset(name: "CircularExclamationPoint")
  public static let circularPlus = ImageAsset(name: "CircularPlus")
  public static let close = ImageAsset(name: "Close")
  public static let document = ImageAsset(name: "Document")
  public static let editIcon = ImageAsset(name: "EditIcon")
  public static let external = ImageAsset(name: "External")
  public static let helicopter = ImageAsset(name: "Helicopter")
  public static let infoLarge = ImageAsset(name: "InfoLarge")
  public static let infoShield = ImageAsset(name: "InfoShield")
  public static let infoSmall = ImageAsset(name: "InfoSmall")
  public static let menuIcon = ImageAsset(name: "MenuIcon")
  public static let notifications = ImageAsset(name: "Notifications")
  public static let restart = ImageAsset(name: "Restart")
  public static let settingsIcon = ImageAsset(name: "SettingsIcon")
  public static let symbol = ImageAsset(name: "Symbol")
  public static let tinyCircledX = ImageAsset(name: "TinyCircledX")
  public static let warningTriangle = ImageAsset(name: "WarningTriangle")
  public static let welcome = ImageAsset(name: "Welcome")
  public static let circularCross = ImageAsset(name: "circularCross")
  public static let language = ImageAsset(name: "language")
  public static let memberCard = ImageAsset(name: "memberCard")
  public static let profileCircleIcon = ImageAsset(name: "profileCircleIcon")
  public static let checkmark = ImageAsset(name: "Checkmark")
  public static let refresh = ImageAsset(name: "Refresh")
  public static let insurance = ImageAsset(name: "insurance")
  public static let pause = ImageAsset(name: "pause")
  public static let play = ImageAsset(name: "play")
  public static let launchScreenBackground = ColorAsset(name: "LaunchScreenBackground")
  public static let wordmark = ImageAsset(name: "Wordmark")
  public static let wordmarkWhite = ImageAsset(name: "WordmarkWhite")
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

public final class ColorAsset {
  public fileprivate(set) var name: String

  #if os(macOS)
  public typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  public typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  public private(set) lazy var color: Color = Color(asset: self)

  fileprivate init(name: String) {
    self.name = name
  }
}

public extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init!(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

public struct ImageAsset {
  public fileprivate(set) var name: String

  #if os(macOS)
  public typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  public typealias Image = UIImage
  #endif

  public var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image named \(name).")
    }
    return result
  }
}

public extension ImageAsset.Image {
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init!(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
