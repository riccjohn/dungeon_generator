defmodule DungeonGenerator.Name do
  def generate_name do
    formats = [
      "something-noun",
      "someones-noun",
      "the-noun-something",
      "the-something-noun-someone",
      "the-something-noun-someone-the-title"
    ]

    something_table = [
      "slaughter",
      "death",
      "night",
      "hadean",
      "hell",
      "plague",
      "sin",
      "doom",
      "dark",
      "murder",
      "torture",
      "ruined",
      "hateful",
      "wretched",
      "dying",
      "dismal",
      "rancid",
      "vile",
      "putrid",
      "tainted",
      "blood",
      "godless",
      "accursed",
      "charnel",
      "undying",
      "festering",
      "hungering",
      "shattered",
      "unholy",
      "profane",
      "unhallowed",
      "flayed",
      "dusk"
    ]

    someones_table = [
      "devils",
      "deaths",
      "sinners",
      "heathens",
      "witchs",
      "fools",
      "hangmans",
      "widows",
      "dead-mans",
      "butchers",
      "wailers",
      "killers",
      "orphans",
      "hunters",
      "skinners",
      "hags",
      "lepers",
      "beggars",
      "hermits"
    ]

    noun_table = [
      "pit",
      "church",
      "temple",
      "tunnels",
      "crypt",
      "grave",
      "fort",
      "ziggurat",
      "den",
      "maze",
      "house",
      "catacomb",
      "chasm",
      "tomb",
      "mausoleum",
      "vault",
      "ditch",
      "cave",
      "shrine",
      "chapel",
      "keep",
      "spire",
      "canals",
      "bridge",
      "docks",
      "funnel"
    ]

    of_something_table = [
      "torment",
      "doom",
      "nechrubel",
      "suffering",
      "undeath",
      "unending-undeath",
      "irreversible-undeath",
      "everlasting-undeath",
      "blasphemous-undeath",
      "madness",
      "unfaith",
      "flesh",
      "the-dying-earth",
      "misery",
      "malice",
      "surrender",
      "antipathy",
      "horrors",
      "repulsion",
      "cruelty",
      "apathy",
      "spite",
      "repugnance",
      "annihilation",
      "darkness",
      "pain",
      "grief",
      "decay",
      "chaos",
      "evil",
      "rot",
      "ruin",
      "terror",
      "hatred",
      "lost-hopes"
    ]

    of_someone_table = [
      "nagla",
      "nech-sarkon",
      "haat",
      "wrakmist",
      "rista",
      "kraeken-lat",
      "trots",
      "klor-prugel",
      "sechtar",
      "voluth",
      "domkratr",
      "knogbruth",
      "nagel-svinn",
      "wokath",
      "lermudh",
      "utvar",
      "schleg",
      "kagel",
      "nagel-mor",
      "crotan",
      "margdal",
      "grugl"
    ]

    someone_the_something = [
      "voidborn",
      "killer",
      "anti-lich",
      "thrice-killed",
      "tormentor",
      "shunned",
      "exiled",
      "unborn",
      "two-headed",
      "pitiful",
      "horseman",
      "slayer",
      "child-thief",
      "cruel",
      "merciful",
      "unwanted",
      "mad"
    ]

    format = Enum.random(formats)

    case format do
      "something-noun" ->
        something = Enum.random(something_table)
          |> String.capitalize
        noun = Enum.random(noun_table)
          |> String.capitalize

        "#{something} #{noun}"

      "someones-noun" ->
        someone = Enum.random(someones_table)
          |> String.capitalize
        noun = Enum.random(noun_table)
          |> String.capitalize

      if String.slice( someone, String.length(someone) - 1, String.length(someone) ) == "s" do
        "#{someone}' #{noun}"
      else
        "#{someone}'s #{noun}"
      end

      "the-noun-something" ->
        noun = Enum.random(noun_table)
          |> String.capitalize
        something = Enum.random(of_something_table)
          |> String.capitalize

        "The #{noun} of #{something}"

      "the-something-noun-someone" ->
        something = Enum.random(something_table)
          |> String.capitalize
        noun = Enum.random(noun_table)
          |> String.capitalize
        someone = Enum.random(someones_table)
          |> String.capitalize

        "The #{something} #{noun} of #{someone}"

      "the-something-noun-someone-the-title" ->

        something = Enum.random(something_table)
          |> String.capitalize
        noun = Enum.random(noun_table)
          |> String.capitalize
        person = Enum.random(of_someone_table)
          |> String.capitalize
        the_something = Enum.random(someone_the_something)
          |> String.capitalize

        "The #{something} #{noun} of #{person} the #{the_something}"
    end
  end
end
