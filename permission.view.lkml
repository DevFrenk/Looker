view: permission {
  sql_table_name: public.permission ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  measure: count {
    type: count
    drill_fields: [id, permission_role.count]
  }
}
