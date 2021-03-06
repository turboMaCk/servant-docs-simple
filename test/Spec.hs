import Test.Hspec
import Test.Hspec.Core.Spec (sequential)

import Test.Servant.Docs.Simple (mainSpec)
import Test.Servant.Docs.Simple.Parse (parseSpec)
import Test.Servant.Docs.Simple.Render (renderSpec)

main :: IO ()
main = hspec $ sequential $ do
    renderSpec
    parseSpec
    mainSpec
