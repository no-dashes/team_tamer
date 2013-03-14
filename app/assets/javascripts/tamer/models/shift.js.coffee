@app.factory "Shift", ["$resource", ($resource) ->
  $resource("/api/scheduling/:id", {id: "@id"}, {update: {method: "PUT"}})
]
