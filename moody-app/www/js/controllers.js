angular.module('moody.controllers')

.controller('RecordCtrl', function($scope) {
})

.controller('LearnCtrl', function($scope, DataService, $ionicLoading, Emotion) {

  $scope.emotions = Emotion.query();

  // $ionicLoading.show({
  //     content: 'Loading Data',
  //     animation: 'fade-in',
  //     showBackdrop: true,
  //     maxWidth: 200,
  //     showDelay: 500
  // });

  // DataService.getEmotions().then(
  //     function(emotions) {
  //         $scope.emotions = emotions;
  //         $ionicLoading.hide();
  //     }
  // )
})

.controller('FriendDetailCtrl', function($scope, $stateParams, Friends) {
  $scope.friend = Friends.get($stateParams.friendId);
})

.controller('AccountCtrl', function($scope) {
});
