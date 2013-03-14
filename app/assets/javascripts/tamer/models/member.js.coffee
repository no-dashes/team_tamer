console.log 'loading models...'

@app.factory "Member", ["$resource", "Team", ($resource, Team) ->
  Member = $resource("/api/members/:id", {id: "@id"}, {update: {method: "PUT"}})
  Member.prototype.get_team = (scope) ->
    console.log Team
    for team in scope
      if team.id == this.team_id
        return team 
  Member.prototype.set_team = (team) ->
    this.team_id = team.id
    return this
  return Member
]
