view: shop {
  sql_table_name: public.shop ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.account_id ;;
  }

  dimension: billing {
    type: string
    sql: ${TABLE}.billing ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created ;;
  }

  dimension: general_settings {
    type: string
    sql: ${TABLE}.general_settings ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modified ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: platform_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.platform_id ;;
  }

  dimension: return {
    type: string
    sql: ${TABLE}.return ;;
  }

  dimension: shipment_options {
    type: string
    sql: ${TABLE}.shipment_options ;;
  }

  dimension: tracktrace {
    type: string
    sql: ${TABLE}.tracktrace ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      platform.name,
      platform.id,
      account.id,
      account.username,
      address.count,
      api_key.count,
      api_key_old.count,
      _bak_api_key_type_0.count,
      collect_trip.count,
      collect_trip_schedule.count,
      email_template.count,
      email_template_old.count,
      external_integration_provider_credentials.count,
      file.count,
      invoice.count,
      invoice_category.count,
      invoice_item.count,
      return_contribution.count,
      return_shipment_link.count,
      shipment.count,
      shop_merged.count,
      webhook_history.count,
      webhook_subscription.count
    ]
  }
}
