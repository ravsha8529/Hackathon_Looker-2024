view: car_similarity {
  sql_table_name: `fit-mantra-242107.Hack123.Car_Similarity` ;;  # Replace with your actual database and schema

    # Dimensions
    dimension: car_name {
      type: string
      sql: ${TABLE}.car_name ;;
    }

    dimension: car_id {
      type: number
      sql: ${TABLE}.car_id ;;
    }

    dimension: similar_car_name {
      type: string
      sql: ${TABLE}.similar_car_name ;;
    }

    dimension: similar_car_id {
      type: number
      sql: ${TABLE}.similar_car_id ;;
    }

    dimension: similar_year {
      type: number
      sql: ${TABLE}.similar_year ;;
    }

    dimension: similar_age_of_car {
      type: number
      sql: ${TABLE}.similar_age_of_car ;;
    }

    dimension: similar_distance {
      type: number
      sql: ${TABLE}.similar_distance ;;
    }

    dimension: similar_owner {
      type: number
      sql: ${TABLE}.similar_owner ;;
    }

    dimension: similar_fuel {
      type: string
      sql: ${TABLE}.similar_fuel ;;
    }

    dimension: similar_location {
      type: string
      sql: ${TABLE}.similar_location ;;
    }

    dimension: similar_drive {
      type: string
      sql: ${TABLE}.similar_drive ;;
    }

    dimension: similar_type {
      type: string
      sql: ${TABLE}.similar_type ;;
    }

    dimension: similar_price {
      type: number
      sql: ${TABLE}.similar_price ;;
    }

    dimension: similar_ratings {
      type: number
      sql: ${TABLE}.similar_ratings ;;
    }

    dimension: similar_safety_rating {
      type: number
      sql: ${TABLE}.similar_safety_rating ;;
    }

    dimension: similar_color {
      type: string
      sql: ${TABLE}.similar_color ;;
    }

    dimension: cosine_similarity {
      type: number
      sql: ${TABLE}.cosine_similarity ;;
    }

    # Measures
    measure: count_distinct {
      type: count_distinct
      sql: ${TABLE}.car_id ;;
    }

    measure: avg_cosine_similarity {
      type: average
      sql: ${TABLE}.cosine_similarity ;;
    }
  }
