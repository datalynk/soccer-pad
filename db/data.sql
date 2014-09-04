DELETE FROM players;

INSERT INTO players VALUES ('beti', 'Beti');
INSERT INTO players VALUES ('diego', 'Diego');
INSERT INTO players VALUES ('damiang', 'Damian G.');
INSERT INTO players VALUES ('mariusz', 'Mariusz');
INSERT INTO players VALUES ('damianj', 'Damian J.');
INSERT INTO players VALUES ('ela', 'Ela');
INSERT INTO players VALUES ('aga', 'Aga');
INSERT INTO players VALUES ('seba', 'Seba');
INSERT INTO players VALUES ('tomek', 'Tomek');
INSERT INTO players VALUES ('michal', 'Michał');
INSERT INTO players VALUES ('filip', 'Filip');
INSERT INTO players VALUES ('wojtek', 'Wojtek');


DELETE FROM games;

INSERT INTO games (blueDefender, blueAttacker, whiteDefender, whiteAttacker, blueScore, whiteScore, date)
	VALUES('beti', 'aga', 'wojtek', 'filip', 1, 10, NOW() - INTERVAL 12 DAY);


DELETE FROM rating_periods;

INSERT INTO rating_periods (uid, title, fromDate, toDate)
	VALUES('overall', 'Overall', CURDATE() - INTERVAL 5 YEAR, CURDATE() + INTERVAL 5 YEAR);

INSERT INTO rating_periods (uid, title, fromDate, toDate)
	VALUES('201409', 'Month: 2014-09', STR_TO_DATE('2014-09-01','%Y-%m-%d'), STR_TO_DATE('2014-10-01','%Y-%m-%d') - INTERVAL 1 SECOND);


DELETE FROM ratings;

INSERT INTO ratings (periodUid, playerUid, tsMean, tsSd) 
	VALUES('201409', 'aga', 3, 7);

/*INSERT INTO games (blueDefender, blueAttacker, whiteDefender, whiteAttacker, blueScore, whiteScore, gameDate)
	VALUES('beti', 'aga', 'wojtek', 'filip', 1, 10, NOW() - INTERVAL 10 DAY);
*/

/*
INSERT INTO games (blueDefender, blueAttacker, whiteDefender, whiteAttacker, blueScore, whiteScore, gameDate)
	VALUES('beti', 'ela', 'wojtek', 'diego', 10, 6, NOW() - INTERVAL 7 DAY);

INSERT INTO games (blueDefender, blueAttacker, whiteDefender, whiteAttacker, blueScore, whiteScore, gameDate)
	VALUES('seba', 'beti', 'wojtek', 'damiang', 10, 9, NOW() - INTERVAL 6 DAY);

INSERT INTO games (blueDefender, blueAttacker, whiteDefender, whiteAttacker, blueScore, whiteScore, gameDate)
	VALUES('mariusz', 'aga', 'wojtek', 'filip', 2, 10, NOW() - INTERVAL 3 DAY);

INSERT INTO games (blueDefender, blueAttacker, whiteDefender, whiteAttacker, blueScore, whiteScore, gameDate)
	VALUES('tomek', 'diego', 'aga', 'wojtek', 0, 10, NOW() - INTERVAL 1 DAY);
	*/
COMMIT;