connection: "postgres_test"
label: "Test DEV"
include: "*.dashboard.lookml"

include: "*.view.lkml"


explore: factvenue {
#  label: "Venue QAT"

view_name: factvenue

join: dimworklistvenue {
  view_label: "Worklist"
  type: left_outer
  relationship: many_to_one
  sql_on: ${factvenue.worklist_venue_key} = ${dimworklistvenue.worklist_venue_key} ;;
}
}
