module BuildLog exposing (viewBuildLog)

import Html exposing (Html, a, div, h1, h2, img, p, text)
import Html.Attributes exposing (alt, class, href, src)


viewBuildLog : List (Html msg)
viewBuildLog =
  [ div
    [ class "section" ]
    [ h1 [] [ text "Build Log" ] ]
  , div
    [ class "section" ]
    [ h2 [] [ text "Floor" ]
    , p []
      [ text """
      The van floor will consist of 1" XPS solid foam insulation panels intersected by
      wooden joists and topped with 1/4" plywood.  The insulation has been cut to fit
      snugly between the joists and the van walls and wheel wells, ensuring a tight
      seal against air leaks. The joists are cut into narrow strips 1" tall and 0.8"
      wide. They're placed roughly every 8' apart in the rear and 4' apart in the front
      to provide added structural support and stability under the battery bank and water
      tank.
      """
      ]
    , img
      [ class "photo"
      , src "static/foam-and-joists.jpg"
      , alt "Floor insulation with XPS foam and joists"
      ]
      [ text "Floor insulation with XPS foam and joists" ]
    , p []
      [ text """
      The plywood layer will be glued to the XPS foam using a high-strength construction
      adhesive, ensuring a solid bond that will withstand the rigors of van life. The
      plywood has been cut to fit the van's floor dimensions, with all edges sealed to
      prevent moisture intrusion. This layered approach will provide excellent thermal
      insulation, sound dampening, and structural integrity, making the van floor both
      comfortable and durable.
      """
      ]
    , img
      [ class "photo"
      , src "static/plywood-subfloor.jpg"
      , alt "Plywood layer on top of the insulation"
      ]
      [ text "Plywood layer on top of the insulation" ]
    , p []
      [ text """
      To provide additional comfort during Canada's cold winter months, the insulating
      layer will be inlaid with a radiant heating system. This system will consist of Pex
      tubing embedded in the XPS foam layer with Aluminium heat transfer plates spaced
      evenly across the floor. The Pex tubing will be connected to a hydronic heating
      system that circulates a glycol-water mixture, providing efficient and even heating
      throughout the floor. This setup should ensure that the van remains warm and cozy,
      even in the harshest winter conditions.
      """
      ]
    , img
      [ class "photo"
      , src "static/pex-inlay-proof-of-concept.jpg"
      , alt "Proof of concept for Pex inlay"
      ]
      [ text "Proof of concept for Pex inlay" ]
    ]
  , div
    [ class "section" ]
    [ a [ href "/" ] [ text "Back to Home" ] ]
  ]
