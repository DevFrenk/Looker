view: role_inheritance {
  sql_table_name: public.role_inheritance ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: parent_role_id {
    type: number
    sql: ${TABLE}.parent_role_id ;;
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
