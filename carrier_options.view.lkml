view: carrier_options {
  sql_table_name: public.carrier_options ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: carrier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.carrier_id ;;
  }

  dimension: carrier_optionable_id {
    type: number
    sql: ${TABLE}.carrier_optionable_id ;;
  }

  dimension: carrier_optionable_type {
    type: string
    sql: ${TABLE}.carrier_optionable_type ;;
  }

  dimension: is_default {
    type: yesno
    sql: ${TABLE}.is_default ;;
  }

  dimension: options {
    type: string
    sql: ${TABLE}.options ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [id, username, carrier.name, carrier.id]
  }
}
