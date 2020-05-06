-- | Unit tests for generating documentation of api

module Test.Servant.Docs.Simple.Parse (parseSpec) where


import Data.Map.Ordered (empty)
import Servant.API (EmptyAPI)
import Test.Hspec (Spec, describe, it, shouldBe)

import Test.Servant.Docs.Simple.Samples (ApiComplete, ApiMultiple, apiCompleteParsed,
                                         apiMultipleParsed)

import Servant.Docs.Simple.Parse (parse)
import Servant.Docs.Simple.Render (ApiDocs (..))


parseSpec :: Spec
parseSpec = describe "Parses API to Document Tree" $ do
    it "parses an EmptyAPI Details" $
        parse @EmptyAPI `shouldBe` ApiDocs empty
    it "parses all Servant API Combinators" $
        parse @ApiComplete `shouldBe` apiCompleteParsed
    it "parses an API with multiple endpoints" $
        parse @ApiMultiple `shouldBe` apiMultipleParsed
