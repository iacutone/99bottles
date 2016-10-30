class Bottles

  def verse(num)
    return no_mas if num == 0
    return one_bottle if num == 1
  <<-VERSE
#{num} bottles of beer on the wall, #{num} bottles of beer.
Take one down and pass it around, #{pluralize(num - 1)} of beer on the wall.
VERSE
  end

  def verses(*args)
    string = ""
    first = args.first
    last = args.last

    first.downto(last) do |num|
      string << verse(num)
      string << "\n" unless num == last
    end

    string
  end

  def song
    verses(99,0)
  end

  private

  def pluralize(num)
    if num == 1
      "1 bottle"
    else
      "#{num} bottles"
    end
  end

  def no_mas
<<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
VERSE
  end

  def one_bottle
<<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
VERSE
  end
end
