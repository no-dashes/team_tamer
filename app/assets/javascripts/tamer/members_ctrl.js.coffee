
@MembersCtrl = ["$scope", "Member", ($scope, Member) ->
  $scope.members = Member.query()

  $scope.addMember = ->
    member = Member.save($scope.newMember)
    $scope.members.push(member)
    $scope.newMember = {}
]
