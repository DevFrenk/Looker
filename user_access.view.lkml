view: user_access {
  sql_table_name: public.user_access ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accessible_id {
    type: number
    sql: ${TABLE}.accessible_id ;;
  }

  dimension: accessible_type {
    type: string
    sql: ${TABLE}.accessible_type ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.id, user.username]
  }
}
