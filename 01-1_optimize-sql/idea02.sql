DROP PROCEDURE addStockLedger_by_qcID;
DELIMITER //
CREATE PROCEDURE addStockLedger_by_qcID(IN qcID INT)
 BEGIN
	DECLARE n INT DEFAULT 0;
	DECLARE i INT DEFAULT 0;
	CREATE TEMPORARY TABLE qcas_view(
	  `article_id` int(8) unsigned NOT NULL auto_increment,
	  `quantity` int default NULL,
	  `qc_id` int(8) default NULL,
	  PRIMARY KEY (`article_id`)
	) AUTO_INCREMENT=1;
	INSERT INTO qcas_view (article_id, quantity)
		SELECT article_id, quantity
		FROM quality_control_articles
        WHERE qc_id = qcID;
	SELECT COUNT(*) FROM qcas_view INTO n;
	SET i=0;
	WHILE i < n DO
		INSERT INTO stock_ledger (article_id, bin, quantity)
			SELECT article_id, 'quality_control', quantity
            FROM qcas_view q LIMIT i,1;
		INSERT INTO stock_ledger (article_id, bin, quantity)
			SELECT article_id, 'main_bin', quantity * -1
            FROM qcas_view q LIMIT i,1;
	SET i = i + 1;
	END WHILE;
    DROP TABLE qcas_view;
END //
DELIMITER ;
