@app.factory "Member", ["$resource", ($resource) ->
  $resource("/api/members/:id", {id: "@id"}, {update: {method: "PUT"}})
]

@app.factory "Team", ["$resource", ($resource) ->
  $resource("/api/teams/:id", {id: "@id"}, {update: {method: "PUT"}})
]

@app.factory "Shift", ["$resource", ($resource) ->
  $resource("/api/scheduling/:id", {id: "@id"}, {update: {method: "PUT"}})
]
