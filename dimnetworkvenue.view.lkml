view: dimnetworkvenue {
  sql_table_name: looker.dimnetworkvenue ;;

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: network_venue_bkey {
    type: string
    sql: ${TABLE}.NetworkVenueBKey ;;
  }

  dimension: networkvenuekey {
    type: number
    sql: ${TABLE}.networkvenuekey ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
