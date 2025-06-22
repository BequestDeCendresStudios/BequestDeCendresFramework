require "parslet"

module PommeLang
  class PommeParser < Parslet::Parser
    root(:statement)

    rule(:space) { space.maybe }

    rule(:h1)    { str("_h_") }
    rule(:h2)    { str("_h2_") }
    rule(:h3)    { str("_h3_") }
    rule(:h4)    { str("_h4_") }
    rule(:h5)    { str("_h5_") }

    #rule(:letter) { match['a-zA-Z'] }
    #rule(:number) { match['0-9'] }

    rule(:identifier) { match["a-zA-Z0-9_!@$%^&*'"] }

    rule(:statement) { header | paragraph }

    rule(:intro_h) { h1 | h2 | h3 | h4 | h5 }
    rule(:intro_p) { str("_p_") }

    rule(:header)    { intro_h >> space >> identifier }
    rule(:paragraph) { intro_p >> space >> identifier }
  end

  class PommeTransform < Parslet::Transform

    # Transform headers
    rule(:h1) { "_h1_" }
    rule(:h2) { "_h2_" }
    rule(:h3) { "_h3_" }
    rule(:h4) { "_h4_" }
    rule(:h5) { "_h5_" }

    # Transform paragraph
    rule(:intro_p) { "_p_" }

    # Transform space
    rule(:space) { " " }

    # Transform identifier
    rule(:identifier => simple(:x)) { x.upcase }
  end

  class PommeConvert
  end
end
