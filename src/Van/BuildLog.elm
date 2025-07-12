module Van.BuildLog exposing (viewBuildLog)

import Html exposing (Html)

import Helpers exposing
  ( viewHomeLink
  , viewMainContentTitle
  , viewParagraph
  , viewPhoto
  , viewSection
  )


viewBuildLog : List (Html msg)
viewBuildLog =
  [ viewMainContentTitle "Van Build Log"
  , viewSection "Floor"
    [ viewParagraph """
      The van floor will consist of 1" XPS solid foam insulation panels intersected by
      wooden joists and topped with 1/4" plywood.  The insulation has been cut to fit
      snugly between the joists and the van walls and wheel wells, ensuring a tight
      seal against air leaks. The joists are cut into narrow strips 1" tall and 0.8"
      wide. They're placed roughly every 4' apart in the rear and 2' apart in the front
      to provide added structural support and stability under the battery bank and water
      tank.
      """
    , viewPhoto
      "/static/foam-and-joists.jpg"
      "Floor insulation and joists"
    , viewParagraph """
      The plywood layer will be glued to the XPS foam using a high-strength construction
      adhesive, ensuring a solid bond that will withstand the rigors of van life. The
      plywood has been cut to fit the van's floor dimensions, with all edges sealed to
      prevent moisture intrusion. This layered approach will provide excellent thermal
      insulation, sound dampening, and structural integrity, making the van floor both
      comfortable and durable.
      """
    , viewPhoto
      "/static/plywood-subfloor.jpg"
      "Plywood subfloor sitting on top of the insulation"
    , viewParagraph """
      To provide additional comfort during Canada's cold winter months, the insulating
      layer will be inlaid with a radiant heating system. This system will consist of Pex
      tubing embedded in the XPS foam layer with Aluminium heat transfer plates spaced
      evenly across the floor. The Pex tubing will be connected to a hydronic heating
      system that circulates a glycol-water mixture, providing efficient and even heating
      throughout the floor. This setup should ensure that the van remains warm and cozy,
      even in the harshest winter conditions.
      """
    , viewPhoto
      "/static/pex-inlay-proof-of-concept.jpg"
      "Proof of concept for Pex inlay"
    , viewPhoto
      "/static/pex-inlay-work-in-progress.jpg"
      "Pex inlay work in progress"
    ]
  , viewHomeLink
  ]
