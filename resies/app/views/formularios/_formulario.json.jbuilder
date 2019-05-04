json.extract! formulario, :id, :nombre_encargado, :telefono, :fecha, :created_at, :updated_at
json.url formulario_url(formulario, format: :json)
