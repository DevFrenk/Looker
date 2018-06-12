view: migration_invitation {
  sql_table_name: public.migration_invitation ;;

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

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.hash ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account.id, account.username]
  }
}
