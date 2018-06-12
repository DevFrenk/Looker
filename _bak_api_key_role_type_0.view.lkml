view: _bak_api_key_role_type_0 {
  sql_table_name: public._bak_api_key_role_type_0 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: api_key_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.api_key_id ;;
  }

  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, api_key.username, api_key.id, role.id, role.name]
  }
}
