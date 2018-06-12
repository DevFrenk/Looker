view: account_ui_setting {
  sql_table_name: public.account_ui_setting ;;

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

  dimension: json_data {
    type: string
    sql: ${TABLE}.json_data ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account.id, account.username]
  }
}
