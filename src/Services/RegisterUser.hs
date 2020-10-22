module Services.RegisterUser where

import Data.Text (Text)
import Models.Core (Response (Success), SuccessResponse (SuccessResponse, successMessage))
import Models.User (User (name))

registerUser :: User -> Response
registerUser user = Success SuccessResponse {successMessage = name user}
