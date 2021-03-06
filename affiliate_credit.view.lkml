view: affiliate_credit {
  sql_table_name: public.affiliate_credit ;;

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

  dimension: credit {
    type: number
    sql: ${TABLE}.credit ;;
  }

  dimension: due {
    type: number
    sql: ${TABLE}.due ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account.id, account.username]
  }
}
