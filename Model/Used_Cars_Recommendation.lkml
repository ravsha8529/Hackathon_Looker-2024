connection: "lookerdata"

# Include all the views
include: "/views/**/*.view.lkml"

datagroup: 2024_12_04_wav_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: 2024_12_04_wav_default_datagroup

explore: cars_hack {
  join: car_similarity {
    relationship: one_to_many
    type: left_outer
    sql_on: ${cars_hack.car_id} = ${car_similarity.car_id} ;;  # Update if necessary
  }
}
