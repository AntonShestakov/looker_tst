view: factvenue {
  sql_table_name: looker.factvenue ;;

  dimension: companykey {
    type: number
    sql: ${TABLE}.companykey ;;
  }

  dimension: issceduled {
    type: yesno
    sql: ${TABLE}.issceduled ;;
  }

  dimension: networkvenuekey {
    type: number
    sql: ${TABLE}.networkvenuekey ;;
  }

  dimension: parentproposalkey {
    type: number
    sql: ${TABLE}.parentproposalkey ;;
  }

  dimension: productdurationkey {
    type: number
    sql: ${TABLE}.productdurationkey ;;
  }

  dimension: proposalkey {
    type: number
    sql: ${TABLE}.proposalkey ;;
  }

  dimension: salesvenuekey {
    type: number
    sql: ${TABLE}.salesvenuekey ;;
  }

  dimension: scheduleddurationseconds {
    type: number
    sql: ${TABLE}.scheduleddurationseconds ;;
  }

  dimension: scheduledtimes {
    type: number
    sql: ${TABLE}.scheduledtimes ;;
  }

  dimension: schedulekey {
    type: number
    sql: ${TABLE}.schedulekey ;;
  }

  dimension: servervenuekey {
    type: number
    sql: ${TABLE}.servervenuekey ;;
  }

  dimension: showndirationseconds {
    type: number
    sql: ${TABLE}.showndirationseconds ;;
  }

  dimension: showntimes {
    type: number
    sql: ${TABLE}.showntimes ;;
  }

  dimension: teritoryvenuekey {
    type: number
    sql: ${TABLE}.teritoryvenuekey ;;
  }

  dimension: venuebkey {
    type: string
    sql: ${TABLE}.venuebkey ;;
  }

  dimension_group: venuedate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.venuedate ;;
  }

  dimension: venuekey {
    type: number
    sql: ${TABLE}.venuekey ;;
  }

  dimension: worklistvenuekey {
    type: number
    sql: ${TABLE}.worklistvenuekey ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
