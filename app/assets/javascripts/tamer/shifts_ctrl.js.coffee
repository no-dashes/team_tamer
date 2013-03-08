
@ShiftsCtrl = ["$scope", "Shift", "Team", "Member", ($scope, Shift, Team, Member) ->
  $scope.shifts = Shift.query()
  $scope.teams = Team.query()
  $scope.members = Member.query()

  $scope.addShift = ->
    shift = Shift.save($scope.newShift)
    $scope.shifts.push(shift)
    $scope.newShift = {}
]
