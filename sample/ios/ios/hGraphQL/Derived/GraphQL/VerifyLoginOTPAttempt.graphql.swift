// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  final class VerifyLoginOtpAttemptMutation: GraphQLMutation {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
      """
      mutation VerifyLoginOTPAttempt($id: ID!, $otp: String!) {
        login_verifyOtpAttempt(id: $id, otp: $otp) {
          __typename
          ... on VerifyOtpLoginAttemptSuccess {
            accessToken
          }
          ... on VerifyOtpLoginAttemptError {
            errorCode
          }
        }
      }
      """

    public let operationName: String = "VerifyLoginOTPAttempt"

    public var id: GraphQLID
    public var otp: String

    public init(id: GraphQLID, otp: String) {
      self.id = id
      self.otp = otp
    }

    public var variables: GraphQLMap? {
      return ["id": id, "otp": otp]
    }

    public struct Data: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Mutation"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("login_verifyOtpAttempt", arguments: ["id": GraphQLVariable("id"), "otp": GraphQLVariable("otp")], type: .nonNull(.object(LoginVerifyOtpAttempt.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(loginVerifyOtpAttempt: LoginVerifyOtpAttempt) {
        self.init(unsafeResultMap: ["__typename": "Mutation", "login_verifyOtpAttempt": loginVerifyOtpAttempt.resultMap])
      }

      /// Verifies an ongoing login attempt, returning an access token on success
      public var loginVerifyOtpAttempt: LoginVerifyOtpAttempt {
        get {
          return LoginVerifyOtpAttempt(unsafeResultMap: resultMap["login_verifyOtpAttempt"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "login_verifyOtpAttempt")
        }
      }

      public struct LoginVerifyOtpAttempt: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["VerifyOtpLoginAttemptSuccess", "VerifyOtpLoginAttemptError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLTypeCase(
              variants: ["VerifyOtpLoginAttemptSuccess": AsVerifyOtpLoginAttemptSuccess.selections, "VerifyOtpLoginAttemptError": AsVerifyOtpLoginAttemptError.selections],
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

        public static func makeVerifyOtpLoginAttemptSuccess(accessToken: String) -> LoginVerifyOtpAttempt {
          return LoginVerifyOtpAttempt(unsafeResultMap: ["__typename": "VerifyOtpLoginAttemptSuccess", "accessToken": accessToken])
        }

        public static func makeVerifyOtpLoginAttemptError(errorCode: String) -> LoginVerifyOtpAttempt {
          return LoginVerifyOtpAttempt(unsafeResultMap: ["__typename": "VerifyOtpLoginAttemptError", "errorCode": errorCode])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var asVerifyOtpLoginAttemptSuccess: AsVerifyOtpLoginAttemptSuccess? {
          get {
            if !AsVerifyOtpLoginAttemptSuccess.possibleTypes.contains(__typename) { return nil }
            return AsVerifyOtpLoginAttemptSuccess(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsVerifyOtpLoginAttemptSuccess: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["VerifyOtpLoginAttemptSuccess"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("accessToken", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(accessToken: String) {
            self.init(unsafeResultMap: ["__typename": "VerifyOtpLoginAttemptSuccess", "accessToken": accessToken])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var accessToken: String {
            get {
              return resultMap["accessToken"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "accessToken")
            }
          }
        }

        public var asVerifyOtpLoginAttemptError: AsVerifyOtpLoginAttemptError? {
          get {
            if !AsVerifyOtpLoginAttemptError.possibleTypes.contains(__typename) { return nil }
            return AsVerifyOtpLoginAttemptError(unsafeResultMap: resultMap)
          }
          set {
            guard let newValue = newValue else { return }
            resultMap = newValue.resultMap
          }
        }

        public struct AsVerifyOtpLoginAttemptError: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["VerifyOtpLoginAttemptError"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("errorCode", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(errorCode: String) {
            self.init(unsafeResultMap: ["__typename": "VerifyOtpLoginAttemptError", "errorCode": errorCode])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var errorCode: String {
            get {
              return resultMap["errorCode"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "errorCode")
            }
          }
        }
      }
    }
  }
}
