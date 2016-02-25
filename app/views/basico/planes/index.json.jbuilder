json.array!(@basico_planes) do |basico_plan|
  json.extract! basico_plan, :id, :nombre
  json.url basico_plan_url(basico_plan, format: :json)
end
