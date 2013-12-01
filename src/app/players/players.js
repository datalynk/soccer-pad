angular.module('views.players', ['data.dataSource']).

controller('PlayersCtrl', ['$scope', 'dataSource', function($scope, dataSource) {
	$scope.addPlayer = function() {
		dataSource.addPlayer($scope.playerName);

	}

    $scope.changeSorting = function(column) {
        var sort = $scope.sort || {};

        if (sort.column == column) {
            sort.descending = !sort.descending;
        } else {
            sort.column = column;
            sort.descending = true;
        }
        $scope.sort = sort;

    };

     $scope.reloadTable = function() {
        $scope.tableRows = [];
        for (var playerIndex in $scope.model.players) {
            var player = $scope.model.players[playerIndex],
                playerId = player._id,
                playerStats = $scope.stats.players[playerId],
                playerRatings = $scope.ratings.players[playerId]

            var tableRow = {
                name : player.name,
                games : playerStats.games,
                win : playerStats.win,
                loss : playerStats.loss,
                rating : playerRatings.mean,
                winPerc : (playerStats.win / (playerStats.games + 0.0001))*100,
                winD : playerStats.winD + playerStats.winA,
                lossD : playerStats.lossD + playerStats.lossA,
                winA : playerStats.winC + playerStats.winB,
                lossA : playerStats.lossC + playerStats.lossB,
                winW : playerStats.winA + playerStats.winB,
                lossW : playerStats.lossA + playerStats.lossA,
                winB : playerStats.winC + playerStats.winD,
                lossB : playerStats.lossC + playerStats.lossD
            }
            $scope.tableRows.push(tableRow);

        }
    }
}]);

