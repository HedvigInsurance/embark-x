// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// GraphQL namespace
public extension GraphQL {
  final class CreateLoginOtpAttemptMutation: GraphQLMutation {
    /// The raw GraphQL definition of this operation.
    public let operationDefinition: String =
      """
      mutation CreateLoginOTPAttempt($email: String!) {
        login_createOtpAttempt(input: {otpType: EMAIL, credential: $email})
      }
      """

    public let operationName: String = "CreateLoginOTPAttempt"

    public var email: String

    public init(email: String) {
      self.email = email
    }

    public var variables: GraphQLMap? {
      return ["email": email]
    }

    public struct Data: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Mutation"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("login_createOtpAttempt", arguments: ["input": ["otpType": "EMAIL", "credential": GraphQLVariable("email")]], type: .nonNull(.scalar(GraphQLID.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(loginCreateOtpAttempt: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Mutation", "login_createOtpAttempt": loginCreateOtpAttempt])
      }

      /// Creates a login attempt which sends an OTP to the provided credential
      public var loginCreateOtpAttempt: GraphQLID {
        get {
          return resultMap["login_createOtpAttempt"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "login_createOtpAttempt")
        }
      }
    }
  }
}
