view: factvenue {
  sql_table_name: looker.factvenue ;;

  dimension: company_key {
    hidden: yes
    type: number
    sql: ${TABLE}.CompanyKey ;;
  }

  dimension: is_sceduled {
    type: yesno
    sql: ${TABLE}.IsSceduled ;;
  }

  dimension: network_venue_key {
    hidden: yes
    type: number
    sql: ${TABLE}.NetworkVenueKey ;;
  }

  dimension: parent_proposal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.ParentProposalKey ;;
  }

  dimension: product_duration_key {
    hidden: yes
    type: number
    sql: ${TABLE}.ProductDurationKey ;;
  }

  dimension: proposal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.ProposalKey ;;
  }

  dimension: sales_venue_key {
    hidden: yes
    type: number
    sql: ${TABLE}.SalesVenueKey ;;
  }

  dimension: schedule_key {
    hidden: yes
    type: number
    sql: ${TABLE}.ScheduleKey ;;
  }

  measure: scheduled_duration_seconds {
    type: sum
    sql: ${TABLE}.ScheduledDurationSeconds ;;
  }

  measure: scheduled_times {
    type: sum
    sql: ${TABLE}.ScheduledTimes ;;
  }

  dimension: server_venue_key {
    hidden: yes
    type: number
    sql: ${TABLE}.ServerVenueKey ;;
  }

  measure: shown_diration_seconds {
    type: sum
    sql: ${TABLE}.ShownDirationSeconds ;;
  }

  measure: shown_times {
    type: sum
    view_label: ""
    label: "Shown Time (lable)"
    drill_fields: [detail*]
    sql: ${TABLE}.ShownTimes ;;
  }

  measure: fullfilment {
    type: number
    value_format_name: percent_2
    sql: 1.0 * ${shown_times}/ NULLIF(${scheduled_times},0) ;;
  }

  measure: fullfilment_delta {
    type: number
    value_format_name: percent_2
    sql: ${fullfilment} - 1.0 ;;
  }

  measure: fullfilment_rgb {
    type: number
    value_format_name: percent_2
    sql: round(255 * ${shown_times}/ NULLIF(${scheduled_times},0)) ;;
  }

  measure: fullfilment_html {
    type: number
    value_format_name: percent_2
    sql: 1.0 * ${shown_times}/ NULLIF(${scheduled_times},0);;
    html:  <table width="100%"><tr>
          <td style="background-color: rgb({{ $factvenue.fullfilment_rgb }},128,{{ $factvenue.fullfilment_rgb }}); font-size:100%;
          color: black">
          {{ value }} </td>
          </tr></table> ;;
  }
  measure: fullfilment_html2 {
    type: number
    value_format_name: percent_2
    sql: 1.0 * ${shown_times}/ NULLIF(${scheduled_times},0);;
    html:  <table width="100%"><tr>
          <td style="background-color: rgb({{ $factvenue.fullfilment_rgb }},128,{{ $factvenue.fullfilment_rgb }}); font-size:100%;
          color: black">
          {{ value }} </td>
          </tr></table> ;;
  }

  set: detail {
    fields: [scheduled_times, shown_times, fullfilment, dimcompany.company_name, dimproposal.proposal_number, dimteritoryvenue.name, dimsalesvenue.venue_name]
  }



  dimension: teritory_venue_key {
    type: number
    sql: ${TABLE}.TeritoryVenueKey ;;
  }

  dimension: venue_bkey {
    type: string
    sql: ${TABLE}.VenueBKey ;;
  }

  dimension_group: venue {
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
    sql: ${TABLE}.VenueDate ;;
  }

  dimension: venue_key {
    type: number
    sql: ${TABLE}.VenueKey ;;
  }

  dimension: worklist_venue_key {
    type: number
    sql: ${TABLE}.worklistvenuekey ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
