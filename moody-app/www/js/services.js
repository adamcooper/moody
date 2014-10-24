angular.module('moody.services')

.factory('DataService', function($q, $timeout) {

  var load = function () {
  }

  var getEmotions = function() {

    var deferred = $q.defer();

    $timeout( function(){
      deferred.resolve([
        { name: 'Sad' },
        { name: 'Happy' },
      ]);

    }, 1500);

    return deferred.promise;
  };

  return {
    load : load,
    getEmotions: getEmotions
  }
})
.factory('Emotion', function($resource) {
  return $resource('http://localhost:3000/emotions/:id');
})
.factory('Friends', function() {
  // Might use a resource here that returns a JSON array

  // Some fake testing data
  var friends = [
    { id: 0, name: 'Scruff McGruff' },
    { id: 1, name: 'G.I. Joe' },
    { id: 2, name: 'Miss Frizzle' },
    { id: 3, name: 'Ash Ketchum' }
  ];

  return {
    all: function() {
      return friends;
    },
    get: function(friendId) {
      // Simple index lookup
      return friends[friendId];
    }
  }
});
