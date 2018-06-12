view: access_role {
  sql_table_name: public.access_role ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: access_id {
    type: number
    sql: ${TABLE}.access_id ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, role.id, role.name]
  }
}
