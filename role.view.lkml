view: role {
  sql_table_name: public.role ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: assignable {
    type: yesno
    sql: ${TABLE}.assignable ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: role_type {
    type: string
    sql: ${TABLE}.role_type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      access_role.count,
      api_key_role.count,
      _bak_api_key_role_type_0.count,
      permission_role.count,
      role_inheritance.count,
      user_role.count
    ]
  }
}
