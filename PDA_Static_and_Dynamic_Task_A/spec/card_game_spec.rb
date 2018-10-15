require_relative("../testing_task_2.rb")
require_relative("../card.rb")
require('minitest/autorun')
require('pry')


class CardGameTest < Minitest::Test

  def setup

    @card1 = Card.new("Clubs",10)

    @card2 = Card.new("Hearts",2)

    @card3 = Card.new("Spades",1)

    @cards = [@card3,@card1,@card2]
  end

  def test_check_for_ace()
    result = CardGame.check_for_ace(@card1)
    assert_equal(false, result)
  end


  def test_check_for_ace2()
    result = CardGame.check_for_ace(@card3)
    assert_equal(true, result)
  end

  def test_highest_card()
    result = CardGame.highest_card(@card1,@card2)
    assert_equal(@card1, result )
  end

  def test_highest_card2()
    result = CardGame.highest_card(@card3,@card2)
    assert_equal(@card2, result )
  end

  def test_cards_total
    result = CardGame.cards_total(@cards)
    assert_equal("You have a total of 13", result )
  end





end
