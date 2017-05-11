module Foreign.Materialize where

import GHCJS.Types
import Data.JSString

openModal :: String -> IO ()
openModal s = do
    makeModals
    js_openModal . pack $ s

closeModal :: String -> IO ()
closeModal = js_closeModal . pack

foreign import javascript unsafe "$($1).modal('open')"
    js_openModal :: JSString -> IO ()

foreign import javascript unsafe "$($1).modal('close')"
    js_closeModal :: JSString -> IO ()

foreign import javascript unsafe "$('.modal').modal({dismissible: false, opacity: 0.7});"
    makeModals :: IO ()