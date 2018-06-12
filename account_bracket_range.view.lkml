view: account_bracket_range {
  sql_table_name: public.account_bracket_range ;;

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

  dimension: bracket_range_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.bracket_range_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account.id, account.username, bracket_ranges.id]
  }
}
