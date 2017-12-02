import Test.Hspec
import Roman

main :: IO()
main = hspec $ do
  describe "toRoman" $ do
    it "converts 1666 into MDCLXVI" $ do
      toRoman 1666 `shouldBe` "MDCLXVI"
    it "converts 1984 into MCMLXXXIV" $ do
      toRoman 1984 `shouldBe` "MCMLXXXIV"
  describe "fromRoman" $ do
    it "converts MDCLXVI into 1666" $ do
      fromRoman "MDCLXVI" `shouldBe` 1666
    it "converts MCMLXXXIV into 1984" $ do
      fromRoman "MCMLXXXIV" `shouldBe` 1984
