
@TeamsCtrl = ["$scope", "Team", ($scope, Team) ->
  $scope.teams = Team.query()

  $scope.addTeam = ->
    team = Team.save($scope.newTeam)
    $scope.teams.push(team)
    $scope.newTeam = {}
]
