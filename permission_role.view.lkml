view: permission_role {
  sql_table_name: public.permission_role ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: permission_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.permission_id ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, role.id, role.name, permission.id]
  }
}
