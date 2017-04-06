{-
 - src\HaskellDo.hs
 - Copyright (c) 2017 The Agile Monkeys S.L. <hackers@theam.io>
 - 
 - Licensed under the Apache License, Version 2.0 (the "License");
 - you may not use this file except in compliance with the License.
 - You may obtain a copy of the License at
 -
 -     http://www.apache.org/licenses/LICENSE-2.0
 -
 - Unless required by applicable law or agreed to in writing, software
 - distributed under the License is distributed on an "AS IS" BASIS,
 - WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 - See the License for the specific language governing permissions and
 - limitations under the License.
 -}
{-# Language NoImplicitPrelude #-}
{-# Language OverloadedStrings #-}
module HaskellDo 
  ( ServiceType()
  , run
  ) where

import BasicPrelude
import Flow

-- | Defines how to run Haskell.do through 'run'
data ServiceType
  = ComputationNode
  | DesktopApp
  | WebApp

-- | Executes Haskell.do as defined in 'ServiceType', in designated 'port'
run :: ServiceType -> Int -> IO ()
run st port = keep' $ simpleWebApp port (app st)

app :: ServiceType -> Cloud ()
app = undefined             
  
