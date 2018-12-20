view: dimworklistvenue {
  sql_table_name: looker.dimworklistvenue ;;

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: worklist_venue_bkey {
    hidden: yes
    type: string
    sql: ${TABLE}.worklistvenuebkey ;;
  }

  dimension: worklist_venue_key {
    hidden: yes
    type: number
    sql: ${TABLE}.worklistvenuekey ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
