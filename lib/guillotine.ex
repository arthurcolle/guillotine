defmodule Guillotine do
  def exec(str1, str2) do # str1 = "ABCDEF" and str2 = "12345"
    c1 = String.to_charlist(str1)
    c2 = String.to_charlist(str2)
    chunked_1 = Enum.chunk_every(c1, 2, 2)
    chunked_2 = Enum.chunk_every(c2, 1, 1)
    Guillotine.guillotine(chunked_1, chunked_2)
  end

  def guillotine([], []) do
    ""
  end

  def guillotine([], a) do
    hd(a)
  end

  def guillotine(a,b) do
    hd(a)++hd(b)++guillotine(tl(a),tl(b))
  end

  def run() do
    str1 = "WXYZ"
    str2 = "123"
    Guillotine.exec(str1, str2) # WX1YZ2
  end
end

IO.puts Guillotine.run()
