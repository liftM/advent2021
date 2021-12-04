module Advent2021.Puzzles.D1Spec (spec) where

import Prelude

import Advent2021.Puzzles.D1 as D1
import Advent2021.Spec.Assertions (shouldSucceed)
import Data.Array.NonEmpty (NonEmptyArray, cons')
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

input :: NonEmptyArray Int
input =
  199
    `cons'`
      [ 200
      , 208
      , 210
      , 200
      , 207
      , 240
      , 269
      , 260
      , 263
      ]

spec :: Spec Unit
spec =
  describe "Day 1" do
    it "checks depth increases" do
      D1.part1 input `shouldEqual` 7
    it "checks depth increases with sliding window" do
      D1.part2 input `shouldSucceed` 5
