defmodule Cards do
  @moduledoc """
  Provides method for creating and handling cards.
  """
  def create_deck do
    values =["Ace","Two","Three","Four","Five"]
    suits=["Spades","Clubs","Hearts","Diaamonds"]

    for suits<-suits,values<-values do
      "#{values} of #{suits}"
    end

  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck,card)
  end

  def deal(deck,handsize) do
    Enum.split(deck,handsize)
  end


end
