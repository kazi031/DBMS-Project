
ALTER TABLE wholesale_storage DROP CONSTRAINT non_wholesale_storage_pk;
ALTER TABLE wholesale_storage DROP CONSTRAINT non_wholesale_storage_fk;
ALTER TABLE wholesale_storage DROP CONSTRAINT non_wholesale_storage_fk_1;

DROP TABLE non_wholesale_storage;

CREATE TABLE non_wholesale_storage
(
    area_no     VARCHAR2(4)     NOT NULL,
	item_code VARCHAR2(5) NOT NULL,
	item_amount_in_piece NUMBER(10) NOT NULL, 
	CONSTRAINT non_wholesale_storage_pk PRIMARY KEY(item_code,area_no),
	CONSTRAINT non_wholesale_storage_fk FOREIGN KEY(item_code) REFERENCES gen_items(item_code) ON DELETE CASCADE, 
	CONSTRAINT non_wholesale_storage_fk_1 FOREIGN KEY(area_no) REFERENCES areas(area_no) ON DELETE CASCADE
);



INSERT INTO non_wholesale_storage VALUES('a001','i001',0);
INSERT INTO non_wholesale_storage VALUES('a001','i002',0);
INSERT INTO non_wholesale_storage VALUES('a001','i003',0);
INSERT INTO non_wholesale_storage VALUES('a001','i004',0);
INSERT INTO non_wholesale_storage VALUES('a001','i005',0);
INSERT INTO non_wholesale_storage VALUES('a001','i006',0);
INSERT INTO non_wholesale_storage VALUES('a001','i007',0);
INSERT INTO non_wholesale_storage VALUES('a001','i008',0);
INSERT INTO non_wholesale_storage VALUES('a001','i009',0);
INSERT INTO non_wholesale_storage VALUES('a001','i010',0);
INSERT INTO non_wholesale_storage VALUES('a001','i011',0);
INSERT INTO non_wholesale_storage VALUES('a001','i012',0);
INSERT INTO non_wholesale_storage VALUES('a001','i013',0);
INSERT INTO non_wholesale_storage VALUES('a001','i014',0);
INSERT INTO non_wholesale_storage VALUES('a001','i015',0);
INSERT INTO non_wholesale_storage VALUES('a001','i016',0);
INSERT INTO non_wholesale_storage VALUES('a001','i017',0);
INSERT INTO non_wholesale_storage VALUES('a001','i018',0);
INSERT INTO non_wholesale_storage VALUES('a001','i019',0);
INSERT INTO non_wholesale_storage VALUES('a001','i020',0);
INSERT INTO non_wholesale_storage VALUES('a001','i021',0);
INSERT INTO non_wholesale_storage VALUES('a001','i022',0);
INSERT INTO non_wholesale_storage VALUES('a001','i023',0);


INSERT INTO non_wholesale_storage VALUES('a002','i001',0);
INSERT INTO non_wholesale_storage VALUES('a002','i002',0);
INSERT INTO non_wholesale_storage VALUES('a002','i003',0);
INSERT INTO non_wholesale_storage VALUES('a002','i004',0);
INSERT INTO non_wholesale_storage VALUES('a002','i005',0);
INSERT INTO non_wholesale_storage VALUES('a002','i006',0);
INSERT INTO non_wholesale_storage VALUES('a002','i007',0);
INSERT INTO non_wholesale_storage VALUES('a002','i008',0);
INSERT INTO non_wholesale_storage VALUES('a002','i009',0);
INSERT INTO non_wholesale_storage VALUES('a002','i010',0);
INSERT INTO non_wholesale_storage VALUES('a002','i011',0);
INSERT INTO non_wholesale_storage VALUES('a002','i012',0);
INSERT INTO non_wholesale_storage VALUES('a002','i013',0);
INSERT INTO non_wholesale_storage VALUES('a002','i014',0);
INSERT INTO non_wholesale_storage VALUES('a002','i015',0);
INSERT INTO non_wholesale_storage VALUES('a002','i016',0);
INSERT INTO non_wholesale_storage VALUES('a002','i017',0);
INSERT INTO non_wholesale_storage VALUES('a002','i018',0);
INSERT INTO non_wholesale_storage VALUES('a002','i019',0);
INSERT INTO non_wholesale_storage VALUES('a002','i020',0);
INSERT INTO non_wholesale_storage VALUES('a002','i021',0);
INSERT INTO non_wholesale_storage VALUES('a002','i022',0);
INSERT INTO non_wholesale_storage VALUES('a002','i023',0);


INSERT INTO non_wholesale_storage VALUES('a003','i001',0);
INSERT INTO non_wholesale_storage VALUES('a003','i002',0);
INSERT INTO non_wholesale_storage VALUES('a003','i003',0);
INSERT INTO non_wholesale_storage VALUES('a003','i004',0);
INSERT INTO non_wholesale_storage VALUES('a003','i005',0);
INSERT INTO non_wholesale_storage VALUES('a003','i006',0);
INSERT INTO non_wholesale_storage VALUES('a003','i007',0);
INSERT INTO non_wholesale_storage VALUES('a003','i008',0);
INSERT INTO non_wholesale_storage VALUES('a003','i009',0);
INSERT INTO non_wholesale_storage VALUES('a003','i010',0);
INSERT INTO non_wholesale_storage VALUES('a003','i011',0);
INSERT INTO non_wholesale_storage VALUES('a003','i012',0);
INSERT INTO non_wholesale_storage VALUES('a003','i013',0);
INSERT INTO non_wholesale_storage VALUES('a003','i014',0);
INSERT INTO non_wholesale_storage VALUES('a003','i015',0);
INSERT INTO non_wholesale_storage VALUES('a003','i016',0);
INSERT INTO non_wholesale_storage VALUES('a003','i017',0);
INSERT INTO non_wholesale_storage VALUES('a003','i018',0);
INSERT INTO non_wholesale_storage VALUES('a003','i019',0);
INSERT INTO non_wholesale_storage VALUES('a003','i020',0);
INSERT INTO non_wholesale_storage VALUES('a003','i021',0);
INSERT INTO non_wholesale_storage VALUES('a003','i022',0);
INSERT INTO non_wholesale_storage VALUES('a003','i023',0);



INSERT INTO non_wholesale_storage VALUES('a004','i001',0);
INSERT INTO non_wholesale_storage VALUES('a004','i002',0);
INSERT INTO non_wholesale_storage VALUES('a004','i003',0);
INSERT INTO non_wholesale_storage VALUES('a004','i004',0);
INSERT INTO non_wholesale_storage VALUES('a004','i005',0);
INSERT INTO non_wholesale_storage VALUES('a004','i006',0);
INSERT INTO non_wholesale_storage VALUES('a004','i007',0);
INSERT INTO non_wholesale_storage VALUES('a004','i008',0);
INSERT INTO non_wholesale_storage VALUES('a004','i009',0);
INSERT INTO non_wholesale_storage VALUES('a004','i010',0);
INSERT INTO non_wholesale_storage VALUES('a004','i011',0);
INSERT INTO non_wholesale_storage VALUES('a004','i012',0);
INSERT INTO non_wholesale_storage VALUES('a004','i013',0);
INSERT INTO non_wholesale_storage VALUES('a004','i014',0);
INSERT INTO non_wholesale_storage VALUES('a004','i015',0);
INSERT INTO non_wholesale_storage VALUES('a004','i016',0);
INSERT INTO non_wholesale_storage VALUES('a004','i017',0);
INSERT INTO non_wholesale_storage VALUES('a004','i018',0);
INSERT INTO non_wholesale_storage VALUES('a004','i019',0);
INSERT INTO non_wholesale_storage VALUES('a004','i020',0);
INSERT INTO non_wholesale_storage VALUES('a004','i021',0);
INSERT INTO non_wholesale_storage VALUES('a004','i022',0);
INSERT INTO non_wholesale_storage VALUES('a004','i023',0);



INSERT INTO non_wholesale_storage VALUES('a005','i001',0);
INSERT INTO non_wholesale_storage VALUES('a005','i002',0);
INSERT INTO non_wholesale_storage VALUES('a005','i003',0);
INSERT INTO non_wholesale_storage VALUES('a005','i004',0);
INSERT INTO non_wholesale_storage VALUES('a005','i005',0);
INSERT INTO non_wholesale_storage VALUES('a005','i006',0);
INSERT INTO non_wholesale_storage VALUES('a005','i007',0);
INSERT INTO non_wholesale_storage VALUES('a005','i008',0);
INSERT INTO non_wholesale_storage VALUES('a005','i009',0);
INSERT INTO non_wholesale_storage VALUES('a005','i010',0);
INSERT INTO non_wholesale_storage VALUES('a005','i011',0);
INSERT INTO non_wholesale_storage VALUES('a005','i012',0);
INSERT INTO non_wholesale_storage VALUES('a005','i013',0);
INSERT INTO non_wholesale_storage VALUES('a005','i014',0);
INSERT INTO non_wholesale_storage VALUES('a005','i015',0);
INSERT INTO non_wholesale_storage VALUES('a005','i016',0);
INSERT INTO non_wholesale_storage VALUES('a005','i017',0);
INSERT INTO non_wholesale_storage VALUES('a005','i018',0);
INSERT INTO non_wholesale_storage VALUES('a005','i019',0);
INSERT INTO non_wholesale_storage VALUES('a005','i020',0);
INSERT INTO non_wholesale_storage VALUES('a005','i021',0);
INSERT INTO non_wholesale_storage VALUES('a005','i022',0);
INSERT INTO non_wholesale_storage VALUES('a005','i023',0);



INSERT INTO non_wholesale_storage VALUES('a006','i001',0);
INSERT INTO non_wholesale_storage VALUES('a006','i002',0);
INSERT INTO non_wholesale_storage VALUES('a006','i003',0);
INSERT INTO non_wholesale_storage VALUES('a006','i004',0);
INSERT INTO non_wholesale_storage VALUES('a006','i005',0);
INSERT INTO non_wholesale_storage VALUES('a006','i006',0);
INSERT INTO non_wholesale_storage VALUES('a006','i007',0);
INSERT INTO non_wholesale_storage VALUES('a006','i008',0);
INSERT INTO non_wholesale_storage VALUES('a006','i009',0);
INSERT INTO non_wholesale_storage VALUES('a006','i010',0);
INSERT INTO non_wholesale_storage VALUES('a006','i011',0);
INSERT INTO non_wholesale_storage VALUES('a006','i012',0);
INSERT INTO non_wholesale_storage VALUES('a006','i013',0);
INSERT INTO non_wholesale_storage VALUES('a006','i014',0);
INSERT INTO non_wholesale_storage VALUES('a006','i015',0);
INSERT INTO non_wholesale_storage VALUES('a006','i016',0);
INSERT INTO non_wholesale_storage VALUES('a006','i017',0);
INSERT INTO non_wholesale_storage VALUES('a006','i018',0);
INSERT INTO non_wholesale_storage VALUES('a006','i019',0);
INSERT INTO non_wholesale_storage VALUES('a006','i020',0);
INSERT INTO non_wholesale_storage VALUES('a006','i021',0);
INSERT INTO non_wholesale_storage VALUES('a006','i022',0);
INSERT INTO non_wholesale_storage VALUES('a006','i023',0);


INSERT INTO non_wholesale_storage VALUES('a007','i001',0);
INSERT INTO non_wholesale_storage VALUES('a007','i002',0);
INSERT INTO non_wholesale_storage VALUES('a007','i003',0);
INSERT INTO non_wholesale_storage VALUES('a007','i004',0);
INSERT INTO non_wholesale_storage VALUES('a007','i005',0);
INSERT INTO non_wholesale_storage VALUES('a007','i006',0);
INSERT INTO non_wholesale_storage VALUES('a007','i007',0);
INSERT INTO non_wholesale_storage VALUES('a007','i008',0);
INSERT INTO non_wholesale_storage VALUES('a007','i009',0);
INSERT INTO non_wholesale_storage VALUES('a007','i010',0);
INSERT INTO non_wholesale_storage VALUES('a007','i011',0);
INSERT INTO non_wholesale_storage VALUES('a007','i012',0);
INSERT INTO non_wholesale_storage VALUES('a007','i013',0);
INSERT INTO non_wholesale_storage VALUES('a007','i014',0);
INSERT INTO non_wholesale_storage VALUES('a007','i015',0);
INSERT INTO non_wholesale_storage VALUES('a007','i016',0);
INSERT INTO non_wholesale_storage VALUES('a007','i017',0);
INSERT INTO non_wholesale_storage VALUES('a007','i018',0);
INSERT INTO non_wholesale_storage VALUES('a007','i019',0);
INSERT INTO non_wholesale_storage VALUES('a007','i020',0);
INSERT INTO non_wholesale_storage VALUES('a007','i021',0);
INSERT INTO non_wholesale_storage VALUES('a007','i022',0);
INSERT INTO non_wholesale_storage VALUES('a007','i023',0);


INSERT INTO non_wholesale_storage VALUES('a008','i001',0);
INSERT INTO non_wholesale_storage VALUES('a008','i002',0);
INSERT INTO non_wholesale_storage VALUES('a008','i003',0);
INSERT INTO non_wholesale_storage VALUES('a008','i004',0);
INSERT INTO non_wholesale_storage VALUES('a008','i005',0);
INSERT INTO non_wholesale_storage VALUES('a008','i006',0);
INSERT INTO non_wholesale_storage VALUES('a008','i007',0);
INSERT INTO non_wholesale_storage VALUES('a008','i008',0);
INSERT INTO non_wholesale_storage VALUES('a008','i009',0);
INSERT INTO non_wholesale_storage VALUES('a008','i010',0);
INSERT INTO non_wholesale_storage VALUES('a008','i011',0);
INSERT INTO non_wholesale_storage VALUES('a008','i012',0);
INSERT INTO non_wholesale_storage VALUES('a008','i013',0);
INSERT INTO non_wholesale_storage VALUES('a008','i014',0);
INSERT INTO non_wholesale_storage VALUES('a008','i015',0);
INSERT INTO non_wholesale_storage VALUES('a008','i016',0);
INSERT INTO non_wholesale_storage VALUES('a008','i017',0);
INSERT INTO non_wholesale_storage VALUES('a008','i018',0);
INSERT INTO non_wholesale_storage VALUES('a008','i019',0);
INSERT INTO non_wholesale_storage VALUES('a008','i020',0);
INSERT INTO non_wholesale_storage VALUES('a008','i021',0);
INSERT INTO non_wholesale_storage VALUES('a008','i022',0);
INSERT INTO non_wholesale_storage VALUES('a008','i023',0);



INSERT INTO non_wholesale_storage VALUES('a009','i001',0);
INSERT INTO non_wholesale_storage VALUES('a009','i002',0);
INSERT INTO non_wholesale_storage VALUES('a009','i003',0);
INSERT INTO non_wholesale_storage VALUES('a009','i004',0);
INSERT INTO non_wholesale_storage VALUES('a009','i005',0);
INSERT INTO non_wholesale_storage VALUES('a009','i006',0);
INSERT INTO non_wholesale_storage VALUES('a009','i007',0);
INSERT INTO non_wholesale_storage VALUES('a009','i008',0);
INSERT INTO non_wholesale_storage VALUES('a009','i009',0);
INSERT INTO non_wholesale_storage VALUES('a009','i010',0);
INSERT INTO non_wholesale_storage VALUES('a009','i011',0);
INSERT INTO non_wholesale_storage VALUES('a009','i012',0);
INSERT INTO non_wholesale_storage VALUES('a009','i013',0);
INSERT INTO non_wholesale_storage VALUES('a009','i014',0);
INSERT INTO non_wholesale_storage VALUES('a009','i015',0);
INSERT INTO non_wholesale_storage VALUES('a009','i016',0);
INSERT INTO non_wholesale_storage VALUES('a009','i017',0);
INSERT INTO non_wholesale_storage VALUES('a009','i018',0);
INSERT INTO non_wholesale_storage VALUES('a009','i019',0);
INSERT INTO non_wholesale_storage VALUES('a009','i020',0);
INSERT INTO non_wholesale_storage VALUES('a009','i021',0);
INSERT INTO non_wholesale_storage VALUES('a009','i022',0);
INSERT INTO non_wholesale_storage VALUES('a009','i023',0);



INSERT INTO non_wholesale_storage VALUES('a010','i001',0);
INSERT INTO non_wholesale_storage VALUES('a010','i002',0);
INSERT INTO non_wholesale_storage VALUES('a010','i003',0);
INSERT INTO non_wholesale_storage VALUES('a010','i004',0);
INSERT INTO non_wholesale_storage VALUES('a010','i005',0);
INSERT INTO non_wholesale_storage VALUES('a010','i006',0);
INSERT INTO non_wholesale_storage VALUES('a010','i007',0);
INSERT INTO non_wholesale_storage VALUES('a010','i008',0);
INSERT INTO non_wholesale_storage VALUES('a010','i009',0);
INSERT INTO non_wholesale_storage VALUES('a010','i010',0);
INSERT INTO non_wholesale_storage VALUES('a010','i011',0);
INSERT INTO non_wholesale_storage VALUES('a010','i012',0);
INSERT INTO non_wholesale_storage VALUES('a010','i013',0);
INSERT INTO non_wholesale_storage VALUES('a010','i014',0);
INSERT INTO non_wholesale_storage VALUES('a010','i015',0);
INSERT INTO non_wholesale_storage VALUES('a010','i016',0);
INSERT INTO non_wholesale_storage VALUES('a010','i017',0);
INSERT INTO non_wholesale_storage VALUES('a010','i018',0);
INSERT INTO non_wholesale_storage VALUES('a010','i019',0);
INSERT INTO non_wholesale_storage VALUES('a010','i020',0);
INSERT INTO non_wholesale_storage VALUES('a010','i021',0);
INSERT INTO non_wholesale_storage VALUES('a010','i022',0);
INSERT INTO non_wholesale_storage VALUES('a010','i023',0);



INSERT INTO non_wholesale_storage VALUES('a011','i001',0);
INSERT INTO non_wholesale_storage VALUES('a011','i002',0);
INSERT INTO non_wholesale_storage VALUES('a011','i003',0);
INSERT INTO non_wholesale_storage VALUES('a011','i004',0);
INSERT INTO non_wholesale_storage VALUES('a011','i005',0);
INSERT INTO non_wholesale_storage VALUES('a011','i006',0);
INSERT INTO non_wholesale_storage VALUES('a011','i007',0);
INSERT INTO non_wholesale_storage VALUES('a011','i008',0);
INSERT INTO non_wholesale_storage VALUES('a011','i009',0);
INSERT INTO non_wholesale_storage VALUES('a011','i010',0);
INSERT INTO non_wholesale_storage VALUES('a011','i011',0);
INSERT INTO non_wholesale_storage VALUES('a011','i012',0);
INSERT INTO non_wholesale_storage VALUES('a011','i013',0);
INSERT INTO non_wholesale_storage VALUES('a011','i014',0);
INSERT INTO non_wholesale_storage VALUES('a011','i015',0);
INSERT INTO non_wholesale_storage VALUES('a011','i016',0);
INSERT INTO non_wholesale_storage VALUES('a011','i017',0);
INSERT INTO non_wholesale_storage VALUES('a011','i018',0);
INSERT INTO non_wholesale_storage VALUES('a011','i019',0);
INSERT INTO non_wholesale_storage VALUES('a011','i020',0);
INSERT INTO non_wholesale_storage VALUES('a011','i021',0);
INSERT INTO non_wholesale_storage VALUES('a011','i022',0);
INSERT INTO non_wholesale_storage VALUES('a011','i023',0);



INSERT INTO non_wholesale_storage VALUES('a012','i001',0);
INSERT INTO non_wholesale_storage VALUES('a012','i002',0);
INSERT INTO non_wholesale_storage VALUES('a012','i003',0);
INSERT INTO non_wholesale_storage VALUES('a012','i004',0);
INSERT INTO non_wholesale_storage VALUES('a012','i005',0);
INSERT INTO non_wholesale_storage VALUES('a012','i006',0);
INSERT INTO non_wholesale_storage VALUES('a012','i007',0);
INSERT INTO non_wholesale_storage VALUES('a012','i008',0);
INSERT INTO non_wholesale_storage VALUES('a012','i009',0);
INSERT INTO non_wholesale_storage VALUES('a012','i010',0);
INSERT INTO non_wholesale_storage VALUES('a012','i011',0);
INSERT INTO non_wholesale_storage VALUES('a012','i012',0);
INSERT INTO non_wholesale_storage VALUES('a012','i013',0);
INSERT INTO non_wholesale_storage VALUES('a012','i014',0);
INSERT INTO non_wholesale_storage VALUES('a012','i015',0);
INSERT INTO non_wholesale_storage VALUES('a012','i016',0);
INSERT INTO non_wholesale_storage VALUES('a012','i017',0);
INSERT INTO non_wholesale_storage VALUES('a012','i018',0);
INSERT INTO non_wholesale_storage VALUES('a012','i019',0);
INSERT INTO non_wholesale_storage VALUES('a012','i020',0);
INSERT INTO non_wholesale_storage VALUES('a012','i021',0);
INSERT INTO non_wholesale_storage VALUES('a012','i022',0);
INSERT INTO non_wholesale_storage VALUES('a012','i023',0);


INSERT INTO non_wholesale_storage VALUES('a013','i001',0);
INSERT INTO non_wholesale_storage VALUES('a013','i002',0);
INSERT INTO non_wholesale_storage VALUES('a013','i003',0);
INSERT INTO non_wholesale_storage VALUES('a013','i004',0);
INSERT INTO non_wholesale_storage VALUES('a013','i005',0);
INSERT INTO non_wholesale_storage VALUES('a013','i006',0);
INSERT INTO non_wholesale_storage VALUES('a013','i007',0);
INSERT INTO non_wholesale_storage VALUES('a013','i008',0);
INSERT INTO non_wholesale_storage VALUES('a013','i009',0);
INSERT INTO non_wholesale_storage VALUES('a013','i010',0);
INSERT INTO non_wholesale_storage VALUES('a013','i011',0);
INSERT INTO non_wholesale_storage VALUES('a013','i012',0);
INSERT INTO non_wholesale_storage VALUES('a013','i013',0);
INSERT INTO non_wholesale_storage VALUES('a013','i014',0);
INSERT INTO non_wholesale_storage VALUES('a013','i015',0);
INSERT INTO non_wholesale_storage VALUES('a013','i016',0);
INSERT INTO non_wholesale_storage VALUES('a013','i017',0);
INSERT INTO non_wholesale_storage VALUES('a013','i018',0);
INSERT INTO non_wholesale_storage VALUES('a013','i019',0);
INSERT INTO non_wholesale_storage VALUES('a013','i020',0);
INSERT INTO non_wholesale_storage VALUES('a013','i021',0);
INSERT INTO non_wholesale_storage VALUES('a013','i022',0);
INSERT INTO non_wholesale_storage VALUES('a013','i023',0);



INSERT INTO non_wholesale_storage VALUES('a014','i001',0);
INSERT INTO non_wholesale_storage VALUES('a014','i002',0);
INSERT INTO non_wholesale_storage VALUES('a014','i003',0);
INSERT INTO non_wholesale_storage VALUES('a014','i004',0);
INSERT INTO non_wholesale_storage VALUES('a014','i005',0);
INSERT INTO non_wholesale_storage VALUES('a014','i006',0);
INSERT INTO non_wholesale_storage VALUES('a014','i007',0);
INSERT INTO non_wholesale_storage VALUES('a014','i008',0);
INSERT INTO non_wholesale_storage VALUES('a014','i009',0);
INSERT INTO non_wholesale_storage VALUES('a014','i010',0);
INSERT INTO non_wholesale_storage VALUES('a014','i011',0);
INSERT INTO non_wholesale_storage VALUES('a014','i012',0);
INSERT INTO non_wholesale_storage VALUES('a014','i013',0);
INSERT INTO non_wholesale_storage VALUES('a014','i014',0);
INSERT INTO non_wholesale_storage VALUES('a014','i015',0);
INSERT INTO non_wholesale_storage VALUES('a014','i016',0);
INSERT INTO non_wholesale_storage VALUES('a014','i017',0);
INSERT INTO non_wholesale_storage VALUES('a014','i018',0);
INSERT INTO non_wholesale_storage VALUES('a014','i019',0);
INSERT INTO non_wholesale_storage VALUES('a014','i020',0);
INSERT INTO non_wholesale_storage VALUES('a014','i021',0);
INSERT INTO non_wholesale_storage VALUES('a014','i022',0);
INSERT INTO non_wholesale_storage VALUES('a014','i023',0);



INSERT INTO non_wholesale_storage VALUES('a015','i001',0);
INSERT INTO non_wholesale_storage VALUES('a015','i002',0);
INSERT INTO non_wholesale_storage VALUES('a015','i003',0);
INSERT INTO non_wholesale_storage VALUES('a015','i004',0);
INSERT INTO non_wholesale_storage VALUES('a015','i005',0);
INSERT INTO non_wholesale_storage VALUES('a015','i006',0);
INSERT INTO non_wholesale_storage VALUES('a015','i007',0);
INSERT INTO non_wholesale_storage VALUES('a015','i008',0);
INSERT INTO non_wholesale_storage VALUES('a015','i009',0);
INSERT INTO non_wholesale_storage VALUES('a015','i010',0);
INSERT INTO non_wholesale_storage VALUES('a015','i011',0);
INSERT INTO non_wholesale_storage VALUES('a015','i012',0);
INSERT INTO non_wholesale_storage VALUES('a015','i013',0);
INSERT INTO non_wholesale_storage VALUES('a015','i014',0);
INSERT INTO non_wholesale_storage VALUES('a015','i015',0);
INSERT INTO non_wholesale_storage VALUES('a015','i016',0);
INSERT INTO non_wholesale_storage VALUES('a015','i017',0);
INSERT INTO non_wholesale_storage VALUES('a015','i018',0);
INSERT INTO non_wholesale_storage VALUES('a015','i019',0);
INSERT INTO non_wholesale_storage VALUES('a015','i020',0);
INSERT INTO non_wholesale_storage VALUES('a015','i021',0);
INSERT INTO non_wholesale_storage VALUES('a015','i022',0);
INSERT INTO non_wholesale_storage VALUES('a015','i023',0);



INSERT INTO non_wholesale_storage VALUES('a016','i001',0);
INSERT INTO non_wholesale_storage VALUES('a016','i002',0);
INSERT INTO non_wholesale_storage VALUES('a016','i003',0);
INSERT INTO non_wholesale_storage VALUES('a016','i004',0);
INSERT INTO non_wholesale_storage VALUES('a016','i005',0);
INSERT INTO non_wholesale_storage VALUES('a016','i006',0);
INSERT INTO non_wholesale_storage VALUES('a016','i007',0);
INSERT INTO non_wholesale_storage VALUES('a016','i008',0);
INSERT INTO non_wholesale_storage VALUES('a016','i009',0);
INSERT INTO non_wholesale_storage VALUES('a016','i010',0);
INSERT INTO non_wholesale_storage VALUES('a016','i011',0);
INSERT INTO non_wholesale_storage VALUES('a016','i012',0);
INSERT INTO non_wholesale_storage VALUES('a016','i013',0);
INSERT INTO non_wholesale_storage VALUES('a016','i014',0);
INSERT INTO non_wholesale_storage VALUES('a016','i015',0);
INSERT INTO non_wholesale_storage VALUES('a016','i016',0);
INSERT INTO non_wholesale_storage VALUES('a016','i017',0);
INSERT INTO non_wholesale_storage VALUES('a016','i018',0);
INSERT INTO non_wholesale_storage VALUES('a016','i019',0);
INSERT INTO non_wholesale_storage VALUES('a016','i020',0);
INSERT INTO non_wholesale_storage VALUES('a016','i021',0);
INSERT INTO non_wholesale_storage VALUES('a016','i022',0);
INSERT INTO non_wholesale_storage VALUES('a016','i023',0);




INSERT INTO non_wholesale_storage VALUES('a017','i001',0);
INSERT INTO non_wholesale_storage VALUES('a017','i002',0);
INSERT INTO non_wholesale_storage VALUES('a017','i003',0);
INSERT INTO non_wholesale_storage VALUES('a017','i004',0);
INSERT INTO non_wholesale_storage VALUES('a017','i005',0);
INSERT INTO non_wholesale_storage VALUES('a017','i006',0);
INSERT INTO non_wholesale_storage VALUES('a017','i007',0);
INSERT INTO non_wholesale_storage VALUES('a017','i008',0);
INSERT INTO non_wholesale_storage VALUES('a017','i009',0);
INSERT INTO non_wholesale_storage VALUES('a017','i010',0);
INSERT INTO non_wholesale_storage VALUES('a017','i011',0);
INSERT INTO non_wholesale_storage VALUES('a017','i012',0);
INSERT INTO non_wholesale_storage VALUES('a017','i013',0);
INSERT INTO non_wholesale_storage VALUES('a017','i014',0);
INSERT INTO non_wholesale_storage VALUES('a017','i015',0);
INSERT INTO non_wholesale_storage VALUES('a017','i016',0);
INSERT INTO non_wholesale_storage VALUES('a017','i017',0);
INSERT INTO non_wholesale_storage VALUES('a017','i018',0);
INSERT INTO non_wholesale_storage VALUES('a017','i019',0);
INSERT INTO non_wholesale_storage VALUES('a017','i020',0);
INSERT INTO non_wholesale_storage VALUES('a017','i021',0);
INSERT INTO non_wholesale_storage VALUES('a017','i022',0);
INSERT INTO non_wholesale_storage VALUES('a017','i023',0);



INSERT INTO non_wholesale_storage VALUES('a018','i001',0);
INSERT INTO non_wholesale_storage VALUES('a018','i002',0);
INSERT INTO non_wholesale_storage VALUES('a018','i003',0);
INSERT INTO non_wholesale_storage VALUES('a018','i004',0);
INSERT INTO non_wholesale_storage VALUES('a018','i005',0);
INSERT INTO non_wholesale_storage VALUES('a018','i006',0);
INSERT INTO non_wholesale_storage VALUES('a018','i007',0);
INSERT INTO non_wholesale_storage VALUES('a018','i008',0);
INSERT INTO non_wholesale_storage VALUES('a018','i009',0);
INSERT INTO non_wholesale_storage VALUES('a018','i010',0);
INSERT INTO non_wholesale_storage VALUES('a018','i011',0);
INSERT INTO non_wholesale_storage VALUES('a018','i012',0);
INSERT INTO non_wholesale_storage VALUES('a018','i013',0);
INSERT INTO non_wholesale_storage VALUES('a018','i014',0);
INSERT INTO non_wholesale_storage VALUES('a018','i015',0);
INSERT INTO non_wholesale_storage VALUES('a018','i016',0);
INSERT INTO non_wholesale_storage VALUES('a018','i017',0);
INSERT INTO non_wholesale_storage VALUES('a018','i018',0);
INSERT INTO non_wholesale_storage VALUES('a018','i019',0);
INSERT INTO non_wholesale_storage VALUES('a018','i020',0);
INSERT INTO non_wholesale_storage VALUES('a018','i021',0);
INSERT INTO non_wholesale_storage VALUES('a018','i022',0);
INSERT INTO non_wholesale_storage VALUES('a018','i023',0);


INSERT INTO non_wholesale_storage VALUES('a019','i001',0);
INSERT INTO non_wholesale_storage VALUES('a019','i002',0);
INSERT INTO non_wholesale_storage VALUES('a019','i003',0);
INSERT INTO non_wholesale_storage VALUES('a019','i004',0);
INSERT INTO non_wholesale_storage VALUES('a019','i005',0);
INSERT INTO non_wholesale_storage VALUES('a019','i006',0);
INSERT INTO non_wholesale_storage VALUES('a019','i007',0);
INSERT INTO non_wholesale_storage VALUES('a019','i008',0);
INSERT INTO non_wholesale_storage VALUES('a019','i009',0);
INSERT INTO non_wholesale_storage VALUES('a019','i010',0);
INSERT INTO non_wholesale_storage VALUES('a019','i011',0);
INSERT INTO non_wholesale_storage VALUES('a019','i012',0);
INSERT INTO non_wholesale_storage VALUES('a019','i013',0);
INSERT INTO non_wholesale_storage VALUES('a019','i014',0);
INSERT INTO non_wholesale_storage VALUES('a019','i015',0);
INSERT INTO non_wholesale_storage VALUES('a019','i016',0);
INSERT INTO non_wholesale_storage VALUES('a019','i017',0);
INSERT INTO non_wholesale_storage VALUES('a019','i018',0);
INSERT INTO non_wholesale_storage VALUES('a019','i019',0);
INSERT INTO non_wholesale_storage VALUES('a019','i020',0);
INSERT INTO non_wholesale_storage VALUES('a019','i021',0);
INSERT INTO non_wholesale_storage VALUES('a019','i022',0);
INSERT INTO non_wholesale_storage VALUES('a019','i023',0);