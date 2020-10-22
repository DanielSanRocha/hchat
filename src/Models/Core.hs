{-# LANGUAGE DeriveGeneric #-}

module Models.Core where

import Data.Text (Text)
import GHC.Generics (Generic)
import Models.User (User)

newtype SuccessResponse = SuccessResponse
  { successMessage :: Text
  }
  deriving (Show, Generic)

data ErrorResponse = ErrorResponse
  { errorMessage :: Text,
    statusCode :: Int
  }
  deriving (Show, Generic)

data Response
  = Success SuccessResponse
  | Error ErrorResponse
  | User User
  deriving (Show, Generic)