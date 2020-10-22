module Views.JSONRender where

import Data.Aeson as Aeson (ToJSON)
import Models.Core as Models
  ( Response (Success),
    SuccessResponse,
  )
import Web.Scotty (ActionM, json)

instance ToJSON SuccessResponse

jsonRender :: Response -> ActionM ()
jsonRender (Models.Success r) = json r
