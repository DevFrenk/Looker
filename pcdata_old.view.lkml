view: pcdata_old {
  sql_table_name: public.pcdata_old ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: gemeentenaam {
    type: string
    sql: ${TABLE}.gemeentenaam ;;
  }

  dimension: gemeentenaam_nen {
    type: string
    sql: ${TABLE}.gemeentenaam_nen ;;
  }

  dimension: huisnr_tm {
    type: number
    sql: ${TABLE}.huisnr_tm ;;
  }

  dimension: huisnr_van {
    type: number
    sql: ${TABLE}.huisnr_van ;;
  }

  dimension: lettercombinatie {
    type: string
    sql: ${TABLE}.lettercombinatie ;;
  }

  dimension: plaatsnaam {
    type: string
    sql: ${TABLE}.plaatsnaam ;;
  }

  dimension: plaatsnaam_nen {
    type: string
    sql: ${TABLE}.plaatsnaam_nen ;;
  }

  dimension: provincienaam {
    type: string
    sql: ${TABLE}.provincienaam ;;
  }

  dimension: reeksid {
    type: number
    value_format_name: id
    sql: ${TABLE}.reeksid ;;
  }

  dimension: reeksindicatie {
    type: string
    sql: ${TABLE}.reeksindicatie ;;
  }

  dimension: straatnaam {
    type: string
    sql: ${TABLE}.straatnaam ;;
  }

  dimension: straatnaam_nen {
    type: string
    sql: ${TABLE}.straatnaam_nen ;;
  }

  dimension: wijkcode {
    type: string
    sql: ${TABLE}.wijkcode ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
