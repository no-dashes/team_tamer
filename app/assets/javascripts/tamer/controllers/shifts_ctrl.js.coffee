app = @app
@ShiftsCtrl = ["$scope", "Shift", "Team", "Member", ($scope, Shift, Team, Member) ->
  $scope.shifts = (app.shifts = Shift.query())
  $scope.teams = (app.teams = Team.query())
  $scope.members = (app.members = Member.query())

  $scope.get_member = (member_id) ->
    for m in $scope.members
      return m if m.id == member_id 
    null

  $scope.get_team = (team_id) ->
    for t in $scope.teams
      return t if t.id == team_id 
    null

  $scope.drop_member = (member, team) ->
    for m in [0...(team.members.length)]
      if team.members[m] == member
        team.members.splice(m, 1) 
        break
    if team.members.length == 0
      $scope.drop_team team

  $scope.unteamed = (member) ->
    if member.team_id == null
      return member

  $scope.drop_team = (team) ->
    for m in [0...($scope.teams.length)]
      if $scope.teams[m] == team
        $scope.teams.splice(m, 1) 
        team.destroy

  $scope.addTeamMember = (event, ui) ->
    member = $scope.get_member ui.draggable.data('member-id')
    team = $scope.get_team this.team.id
    if member.team_id
      old_team = member.get_team $scope.teams
    team.addMember member
    if old_team.members.length == 0
      $scope.teams = old_team.destroy $scope.teams
]
