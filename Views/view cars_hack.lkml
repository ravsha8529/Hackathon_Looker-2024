view: cars_hack {
  sql_table_name: `fit-mantra-242107.Hack123.Cars_Hack` ;;

  dimension: age_of_car {
    type: number
    sql: ${TABLE}.`Age of Car` ;;
  }
  dimension: car_id {
    type: number
    sql: ${TABLE}.`Car ID` ;;
  }
  dimension: car_name {
    type: string
    sql: ${TABLE}.`Car Name` ;;
  }
  dimension: color {
    type: string
    sql: ${TABLE}.Color ;;
  }
  dimension: distance {
    type: number
    sql: ${TABLE}.Distance ;;
  }
  dimension: drive {
    type: string
    sql: ${TABLE}.Drive ;;
  }
  dimension: fuel {
    type: string
    sql: ${TABLE}.Fuel ;;
  }
  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }
  dimension: owner {
    type: number
    sql: ${TABLE}.Owner ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }
  dimension: ratings {
    type: number
    sql: ${TABLE}.Ratings ;;
  }
  dimension: safety_rating {
    type: number
    sql: ${TABLE}.`Safety Rating` ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }
  measure: count {
    type: count
    drill_fields: [car_name]
  }
}
