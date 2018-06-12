view: shipments {
  sql_table_name: public.shipment ;;

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: accountid {
    group_label: "IDs"
    type: string
    sql: ${TABLE}.ACCOUNTID ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  measure: total_revenue {
    type: sum
    value_format_name: eur
    sql: ${amount} ;;
    drill_fields: [id,accountid,currency,modified]
  }

  measure: average_revenue {
    type: average
    value_format_name: eur
    sql: ${amount} / 100;;
  }

  dimension_group: created {
    type: time
    timeframes: [date,week,month,year]
    sql: CAST(${TABLE}.CREATED as timestamp) ;;
  }





  dimension: createdby {
    type: string
    sql: ${TABLE}.CREATEDBY ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }

  dimension: customsdeclarations {
    type: string
    sql: ${TABLE}.CUSTOMSDECLARATIONS ;;
  }

  dimension: generalsettings {
    type: string
    sql: ${TABLE}.GENERALSETTINGS ;;
  }

  dimension: modified {
    type: string
    sql: ${TABLE}.MODIFIED ;;
  }

  dimension: modifiedby {
    type: string
    sql: ${TABLE}.MODIFIEDBY ;;
  }

  dimension: options {
    type: string
    sql: ${TABLE}.OPTIONS ;;
  }

  dimension: parentid {
    group_label: "IDs"
    type: number
    value_format_name: id
    sql: ${TABLE}.PARENTID ;;
  }

  dimension: physicalproperties {
    type: string
    sql: ${TABLE}.PHYSICALPROPERTIES ;;
  }

  dimension: pickup {
    type: string
    sql: ${TABLE}.PICKUP ;;
  }

  dimension: recipient {
    hidden: yes
    type: string
    sql: ${TABLE}.RECIPIENT ;;
  }

  dimension: recipient_country  {
    group_label: "Recipient"
    map_layer_name: countries
    type: string
    sql: UPPER(REPLACE(${recipient}:cc,'""')) ;;
    drill_fields: [recipient_city]
  }

  dimension: recipient_city  {
    group_label: "Recipient"
    type: string
    sql: initcap(REPLACE(${recipient}:city,'""')) ;;
  }

  dimension: recipient_postcode  {
    group_label: "Recipient"
    type: string
    sql: REPLACE(${recipient}:postcode,'""') ;;
  }

  dimension: referenceidentifier {
    type: string
    sql: ${TABLE}.REFERENCEIDENTIFIER ;;
  }

  dimension: sender {
    type: string
    sql: ${TABLE}.SENDER ;;
  }

  dimension: shipmenttype {
    type: number
    sql: ${TABLE}.SHIPMENTTYPE ;;
  }

  dimension: shipment_type_name {
    type: string
    sql:
    CASE
      WHEN ${shipmenttype} = 1 THEN 'Courier'
      WHEN ${shipmenttype} = 2 THEN 'Post'
      ELSE 'Other'
    END
    ;;
  }

  dimension: shopid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.SHOPID ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.STATUS ;;
  }

  measure: count {
    type: count
    drill_fields: [id, shops.id, shops.name, invoice_items.count]
  }
}
