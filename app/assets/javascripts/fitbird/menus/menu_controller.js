module.controller('MenuCtrl', ['$scope',
  function ($scope) {
    $scope.menu = [
      {
        "title": "Exercises",
        "sref": "exerciseDescriptions",
        "icon": "my-icon"
      },
      {
        "title": "Exercise Plans",
        "sref": "exercisePlans",
        "icon": "my-icon"
      },
      {
        "title": "Habits",
        "sref": "habits",
        "icon": "my-icon"
      },
      {
        "title": "Payment Plans",
        "sref": "paymentPlans",
        "icon": "my-icon"
      },
      {
        "title": "Bookings",
        "sref": "bookings",
        "icon": "my-icon"
      },
      {
        "title": "Users",
        "sref": "users",
        "icon": "icon-users"
      },
      {
        "title": "Profile",
        "sref": "profiles.detail",
        "icon": "icon-cog"
      }
    ];
}]);
