view: account {
  sql_table_name: public.account ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: additional_info {
    type: string
    sql: ${TABLE}.additional_info ;;
  }

  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contact_id ;;
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

  dimension: merge_parent_id {
    type: number
    sql: ${TABLE}.merge_parent_id ;;
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

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: password_hashed_bcrypt {
    type: string
    sql: ${TABLE}.password_hashed_bcrypt ;;
  }

  dimension: password_reset_hash {
    type: string
    sql: ${TABLE}.password_reset_hash ;;
  }

  dimension_group: password_reset_hash_expires {
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
    sql: ${TABLE}.password_reset_hash_expires ;;
  }

  dimension: platform_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.platform_id ;;
  }

  dimension: shipment_estimates {
    type: string
    sql: ${TABLE}.shipment_estimates ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: terms_agreed {
    type: string
    sql: ${TABLE}.terms_agreed ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      username,
      platform.name,
      platform.id,
      contact.id,
      contact.first_name,
      contact.last_name,
      account_bracket_range.count,
      account_messages.count,
      account_shipment_option_price.count,
      account_shipment_volume.count,
      account_shipment_volume_old.count,
      account_shipment_weight_volume.count,
      account_ui_setting.count,
      address.count,
      affiliate.count,
      affiliate_credit.count,
      api_key.count,
      api_key_old.count,
      _bak_account_shipment_volume.count,
      _bak_api_key_type_0.count,
      collect_trip_planning.count,
      coupon.count,
      email_template.count,
      email_template_old.count,
      file.count,
      invoice.count,
      invoice_category.count,
      invoice_item.count,
      label_credit.count,
      migration_invitation.count,
      _old_account_shipment_volume.count,
      _old_admin_users.count,
      prices.count,
      return_contribution.count,
      return_shipment_link.count,
      shipment.count,
      shop.count,
      shop_merged.count,
      user.count,
      webhook_history.count,
      webhook_subscription.count
    ]
  }
}
