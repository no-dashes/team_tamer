@app.factory "Team", ["$resource", ($resource) ->
  Team = $resource("/api/teams/:id", {id: "@id"}, {update: {method: "PUT"}})
  Team.prototype.addMember = (member) ->
    member.team_id = this.id
    this.members.push member
    member.$update
    this.$update
  Team.prototype.destroy = (scope) ->
    for i in [0...(scope.length)]
      if team[i].id == this.id
        scope.splice(i, 1)
        this.$delete()
        return scope
  return Team

] 

