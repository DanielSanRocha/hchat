{-# LANGUAGE OverloadedStrings #-}

module Controllers.UserControllers where

import Models.Core (Response (Success), SuccessResponse (SuccessResponse, successMessage))
import Web.Scotty (ActionM, ScottyM, get, param)

userControllers :: (Response -> ActionM ()) -> ScottyM ()
userControllers render = get "/user/:user" $ do
  user <- param "user"
  render $ Success SuccessResponse {successMessage = user}
