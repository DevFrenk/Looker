view: file_relationship {
  sql_table_name: public.file_relationship ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created ;;
  }

  dimension_group: deleted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.deleted ;;
  }

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.file_id ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modified ;;
  }

  dimension: related_id {
    type: number
    sql: ${TABLE}.related_id ;;
  }

  dimension: related_type {
    type: string
    sql: ${TABLE}.related_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, file.id, file.filename]
  }
}
