module Main where

import Controllers.UserControllers (userControllers)
import Views.JSONRender (jsonRender)
import Web.Scotty (scotty)

main :: IO ()
main = scotty 3000 $ userControllers jsonRender
