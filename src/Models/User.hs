{-# LANGUAGE DeriveGeneric #-}

module Models.User where

import Data.Text (Text)
import GHC.Generics (Generic)

data User = User
  { userrname :: Text,
    name :: Text,
    email :: Text
  }
  deriving (Show, Generic)
