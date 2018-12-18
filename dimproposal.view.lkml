view: dimproposal {
  sql_table_name: looker.dimproposal ;;

  dimension: proposal_number {
    type: string
    sql: ${TABLE}.proposal_number ;;
  }

  dimension: proposalbkey {
    type: string
    sql: ${TABLE}.proposalbkey ;;
  }

  dimension: proposalkey {
    type: number
    sql: ${TABLE}.proposalkey ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
