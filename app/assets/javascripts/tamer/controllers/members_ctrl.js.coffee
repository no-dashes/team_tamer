console.log 'loading controllers...'

@MembersCtrl = ["$scope", "Member", ($scope, Member) ->
  $scope.members = Member.query()
]
