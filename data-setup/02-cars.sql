CREATE TABLE IF NOT EXISTS cars (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
	owner_id UUID REFERENCES people(id),
	model_year TEXT,
	car_make TEXT,
	car_model TEXT,
	vin TEXT
);
insert into cars (id, owner_id, model_year, car_make, car_model, vin) values 
('dd67e750-4e57-4a88-ae4f-86682b1ea4ba', 'd7030980-61d8-400f-aa29-5c64d49d0c95', 2001, 'Chevrolet', 'Astro', 'TRUUT28N151813391'),
('d2eb0c51-2ab3-4652-85ec-1032fea9f2c9', '567f0090-6820-4562-af6d-9620203e81a1', 1994, 'Volvo', '960', 'W04GX5GV3B1154170'),
('c2d302f9-8a5d-4431-a799-d73980c008b2', 'faccdc06-b115-4223-8c5d-38a4c1b3d03b', 1998, 'Chevrolet', 'Blazer', 'WBA3C3C53EF159089'),
('3030e6e1-06fe-4db4-ab15-a06adac8703b', '89d44328-aa08-4c34-8a99-28d2888cdfc7', 1997, 'Dodge', 'Neon', 'JM1NC2LF8D0875096'),
('c723ec26-02e8-4a0c-b1a3-f3c11de644bd', '935d2d1a-a98b-4d48-bc41-56c6be592693', 1994, 'Acura', 'Legend', 'JN8AZ2NE4F9289788'),
('30cc3cf1-2cf8-40fd-90d2-2c5933f437c2', 'cf057c37-7351-4253-9a5f-9345a0744fcb', 1993, 'Geo', 'Tracker', 'WBA1F5C54EV107955'),
('4529a7c7-b1a0-4b98-9a38-ffb45bd58860', '7d36fd3a-64fe-480a-a906-ed3531d25117', 2009, 'Chevrolet', 'Express 2500', 'JHMZE2H78ES639095'),
('c0841aac-7de5-440a-befc-6334afe108e8', 'f53d1f15-e373-4ccb-b981-b624ae50163c', 1965, 'Pontiac', 'Grand Prix', '3D73M4CL3BG689602'),
('c6e51ec6-127e-421c-9caf-8dcee30fd9a7', '568a48d9-60c5-4f70-8d25-ecafacda509d', 1994, 'Suzuki', 'Swift', '1N6AA0CC4DN318331'),
('47797555-a2e6-4d60-873e-a2f75e2ca995', 'b6299fcf-f729-4c26-a3b4-a27cff0809ad', 1992, 'Mercedes-Benz', '300TE', '1D7RW3BK6AS757146'),
('59f876f3-3b69-40d7-be81-671660f911a0', '5ff965e2-1949-4d41-a2a9-91e78074640b', 2011, 'Audi', 'A8', '2G4WN58C791400934'),
('e5277119-5906-4640-9938-5903684ad731', 'b672e2a8-d7a0-486a-b0d4-2782b99642b6', 2008, 'Cadillac', 'XLR', '1C4NJPBA4ED806215'),
('4039ca9b-1df5-4403-ade6-7664e80544f7', '8649e9ab-7fce-4e0a-a76e-80ae6e92b042', 2008, 'BMW', 'X6', 'WAUFGAFB9BN818446'),
('148283b4-698f-45f6-8eaa-8fd53f15c849', 'c93d5449-548a-4b0f-87b0-9ae5a653a7c7', 1990, 'Ford', 'Probe', 'JM1DE1KYXE0514845'),
('2a414621-c057-4fb2-8305-67a6979b383d', '38d439f5-3ba2-4a60-971e-1b620d681b39', 2000, 'Mitsubishi', 'Montero', 'WAUGFAFCXEN477112'),
('83e0392f-d7e8-448b-a54b-898714bd3492', 'bcdd83d1-6e88-4c0d-9f42-a9b93e8cfe88', 2009, 'Bentley', 'Azure', 'WAUDV74F57N141053'),
('b3a19be1-1f0a-43f9-becc-9ad896a1e471', 'e6bd0724-a7be-49a9-bd91-49e4641d9b72', 1994, 'Honda', 'Civic', 'WVGAV7AX9CW557948'),
('f685dfef-7248-46ca-93a3-5c3556fab12c', '7aff6574-847d-42ce-a4b0-2a169aed3308', 2005, 'Saturn', 'Relay', '2HKRM3H30DH147441'),
('ac7d74fd-870c-48b0-aa29-7d96e45eb0dc', '1c8b29d6-6121-4085-b736-f2c9133df49b', 2009, 'Jaguar', 'XK', 'WAUSG74F09N443614'),
('0a350022-9432-46d3-a7dd-7f3c754f0ca5', 'b5ceaf19-fb1c-419d-958b-fafd47548e61', 2004, 'Spyker', 'C8 Laviolette', 'WBABS53491J151278'),
('d4657978-c794-45b7-a77a-bff5e582d16f', '9ede5e2b-b4db-4ec1-a17d-8c2dd5e306d6', 2004, 'BMW', '760', '1FMNE1BW0AD067148'),
('b9b39dbc-23d8-474b-8bed-e7d06caf5656', '3f13f7d4-8bd3-4437-8a8a-48712baaee1b', 2011, 'Mercury', 'Milan', '3VW4S7ATXEM350296'),
('a33e83d9-3548-48a2-86ca-01773ab2dad2', '81ed5d3e-f53e-4bb6-82e7-7f70cb9f8c4a', 2006, 'Mitsubishi', 'Montero', 'WAUR2AFD2DN649984'),
('d71eab34-950b-4d34-8223-ed9ec0574b62', 'efe2ec88-e52a-4003-bbcb-0a58993cd8cf', 2006, 'Audi', 'A8', 'WAU3VAFR0BA612901'),
('62b8f1b1-48e0-4ea4-ab0e-12543d8dabea', '54c02007-5b81-4a8a-8e54-ce4b82cea876', 1995, 'Ford', 'Contour', '1FTEW1CW5AK085124'),
('3658355c-9e06-4f0a-bcea-e8b4a346fbe4', '9a668b73-b4fc-4d85-8b18-47cd78505b25', 1969, 'Plymouth', 'Roadrunner', 'WBA3A5C57DF165428'),
('c20d4605-a093-4fd7-aa39-7101fc9c64a8', '275e74e4-6221-4ff1-ae7b-8bb92e31f039', 1987, 'Buick', 'Electra', '5UXZW0C50CL725791'),
('e243af96-9228-4325-93ee-ee92ff36157a', '9db75f21-c277-483a-a541-df037f5eead4', 2008, 'Volkswagen', 'GTI', 'WBA3T3C57F5982955'),
('9c34f86d-7d77-4c3a-89df-535d42f59bf5', 'e6cb48e8-4607-4877-aa1f-96b012e04083', 2010, 'Mazda', 'Mazdaspeed 3', '1GYS4KEF6ER570488'),
('dba208a5-d6e3-40fc-a3e5-8df60c082a56', 'a90cca0b-3911-4ca0-bf24-853a7e640c36', 2004, 'Lotus', 'Exige', '5YMGZ0C59D0796790'),
('e2643f0f-97cc-43fe-be30-1554351d41ef', '42d1ac45-8502-4ea7-a26a-48d04557f306', 1994, 'Chevrolet', 'G-Series G20', '2T1BURHE5FC044043'),
('06fd49b4-f142-441d-8332-19f7db145b1b', 'c8781c63-a4ce-41e0-ac22-ad6d463317d9', 2005, 'Infiniti', 'FX', 'SALAK2V60FA995043'),
('2f34a369-716d-4836-b2c8-a1f0e7e6e033', 'ddf8e934-ddb4-4de6-8c6a-8a6ce375d20d', 2004, 'Lotus', 'Exige', 'WBAWV5C53AP561217'),
('b9acc2a1-a471-4a97-b3e3-677883460dcb', '5ace404d-dbe3-45c0-aeea-287168e9f1c8', 2007, 'Chevrolet', 'Monte Carlo', 'YV1902FH6D1489644'),
('c409811a-9924-4b81-bf4f-955e05b6232b', '1d87a27a-2c9c-466e-a707-809ca2c6154e', 2009, 'Kia', 'Rondo', '1B3BD2FB4BN797586'),
('ffd00542-baa1-4794-a35c-abf715657967', 'ad3acb08-e1f6-4368-8886-5100d3cff228', 1998, 'Plymouth', 'Voyager', 'JN1CV6AR7FM756878'),
('0f8ea5b6-f053-4ce6-9d7f-4fb00508996e', '1034e3e5-af4a-4355-8549-494c02f5367b', 2010, 'Dodge', 'Journey', '1N6AA0EJ8FN940364'),
('b88191ec-af8b-478d-ba78-282690ee95cf', 'fa861fc7-16f6-4cbd-984e-a3eabcb6b9d8', 2002, 'Nissan', 'Altima', 'JM3TB2BV9E0176085'),
('c985cd04-6399-40d7-be64-b6b704cad233', '82a6906f-304c-4dc6-a7a3-13e8df5446c0', 2006, 'Toyota', 'Corolla', 'JN1CV6AP4CM654013'),
('fb4d2cee-f19d-4f67-a596-c7f4e4141e29', '89a032f3-a431-4a6d-b0af-489254c8c91a', 2012, 'Lexus', 'CT', '1D7CW3BKXAS523968'),
('48bd3833-c85c-44ec-a042-d8d45fcdcecd', 'd2331023-3a83-4a6f-a3c3-879256fdd87a', 1996, 'GMC', 'Savana 1500', 'JH4DC53873S009471'),
('fe2d7d6c-35b8-4fdd-ae88-8cebcd69139b', '9cb5b259-cb87-4376-9ca6-c093d9618794', 1997, 'Pontiac', 'Grand Am', 'JTMHY7AJXA5550449'),
('90e1ec44-4f0f-4302-b82e-aaae9c487944', 'c5224168-a1af-41cc-9bfc-c2e6f2e8d85a', 1995, 'GMC', 'Yukon', '1G6DZ67A890074887'),
('3c90e593-2689-400a-84bd-c741c8c13654', '06288c12-8e56-4b2b-8a6b-e64b56a4bd1d', 2000, 'Volvo', 'V70', '1G6DK1EDXB0041545'),
('bad7bffa-cd3a-4a9e-822b-6007d4ed8af3', 'c7d99e71-a61b-40e9-ad27-c8f8cd7e0687', 2011, 'Mercury', 'Grand Marquis', 'JN8AZ1MU5DW576400'),
('4fe1b93d-6d47-4bdc-ad6c-b23725a708f4', '86e4292f-84da-4860-8341-235e425fed9a', 1992, 'Chrysler', 'Fifth Ave', 'WAUHFAFL4AA798245'),
('85f93858-ae75-45c9-9e26-f866596a8c3f', 'ca1e847d-ec49-49c3-9076-a94311c3b025', 2009, 'Kia', 'Optima', '3D73Y4CL0AG601902'),
('1e4ca8b5-de79-42e2-b834-31ce6693a571', 'd0b0e284-a902-466a-9014-434a011d5b86', 1996, 'Chevrolet', 'Suburban 1500', 'SCFAB423X1K247188'),
('ca3eb6c4-2178-4b5f-b96c-6b623f5e44c3', '1729ccfc-c1cf-46e3-96d1-543b89e7d0eb', 2002, 'Ford', 'Escort', 'YV1902AH4B1972814'),
('459f82ab-a006-4655-b522-64f5b8f06994', '64d5ce46-9862-4d25-971b-1e34335bbdde', 2005, 'Jaguar', 'X-Type', 'WAUJC58E55A482150'),
('afd2ac06-f847-4a64-ab05-d9c0ddd7948d', '27bcf76a-76ca-48e8-aad6-d80ade2f071a', 1993, 'Buick', 'Century', 'WBABS33491J707013'),
('f6c32dd1-e2d5-48ce-97cc-3c1c0c92b453', '35bcc1e9-b39a-404a-81b0-8b01f9cb73a1', 2007, 'Mercedes-Benz', 'M-Class', '5UXFA13544L141077'),
('55a0ad9b-4481-4fcc-a168-3fee164b3c21', 'a7de2802-2b10-4af1-9927-a59eae71e7d9', 2007, 'Audi', 'A4', 'WAUAF98E46A002275'),
('a4339d01-9d4f-4307-8db2-d601ba9bad4d', 'cd5d7169-2859-46e8-8b3a-8b6349c2aa0f', 1994, 'Suzuki', 'Swift', 'JTDKN3DU6A0784078'),
('66546403-67ea-4187-856f-2f255d07f5af', 'e1cc3954-9a3d-4a81-94a6-e335f08affdf', 1985, 'Toyota', 'MR2', '4F2CY0C74BK625412'),
('4464b7c1-a1f6-494b-af88-112177dd92aa', '2bc14cb3-79f3-4236-9a83-c5f8f9e957c3', 2011, 'Volvo', 'XC90', 'WBAGH83451D258106'),
('2a9c3843-91c9-4f92-baf8-fbe9e7c16a1b', 'd98fba9e-1334-415c-ba9e-3d136bd3a7f7', 1998, 'GMC', 'Envoy', '1GTG5BE34F1646272'),
('3dae2954-0e94-4adb-a050-bf1f33d55057', '1785197b-ce02-48f0-92a2-6bef93bce9d1', 2011, 'BMW', '1 Series', '2T1KU4EE2DC504537'),
('dfc01af0-c9cc-4fa6-bc77-6190393c6fbb', '9548c664-bc10-406c-9029-c979538eee3c', 1984, 'Lincoln', 'Mark VII', 'WAUHFAFL8DN416330'),
('4df15069-9c08-4571-88be-ee6ce070856b', '2e1ad45a-1c10-43ce-aeff-ab24a2d7a921', 2007, 'Audi', 'S4', 'WA1EY94L57D595836'),
('045dce73-f4d3-45bb-a531-2eef97319df3', 'd50f71f1-d3d4-425f-a64c-56cdafde6574', 2007, 'Honda', 'S2000', '3N1CE2CP0FL522760'),
('910b4b1b-563b-4245-8aa8-4f4ac788c7a0', '227a0128-ff25-4598-a5ae-32c2f36160ee', 2003, 'Mercury', 'Sable', 'SALVP1BG6EH917611'),
('a0ca15b1-a984-44d4-b4a6-6180a1ade590', '3740f93e-f997-41c9-9ca3-93967f21930d', 1994, 'Pontiac', 'Bonneville', '1D4SD6GT9BC760593'),
('14b8b3c1-8cfa-4621-b4f0-52d1932251ef', 'd2636041-66c6-441d-9676-06365f0a2a8d', 1992, 'Volkswagen', 'Fox', '5N1AA0NC8EN223459'),
('f491a4a7-32f2-4483-a4cd-a6c8ad4d6e8a', '2e45b8da-c925-49f4-becf-465fd31790cf', 2002, 'Isuzu', 'Rodeo Sport', '1C3CDFEB5ED843467'),
('64e93ad3-0598-42ef-8465-8803b78e2722', '08837f35-1701-4dd4-9c75-481410652d85', 2007, 'Porsche', '911', '1D7RV1GT9AS870002'),
('a05c9677-0f5d-435a-91b5-3e096a0e696a', 'e85e2988-7382-4402-9973-9d301a40326f', 2010, 'Nissan', 'Versa', '3D73M3CLXBG229265'),
('50d59654-5bc2-4c81-9121-937bde1982ab', '3a0a75b5-e5bf-44f3-b7c5-0a7ed1061088', 2003, 'Buick', 'Rendezvous', '2B3CK5CT4AH737453'),
('1f991a97-4349-441b-8eb7-12cfdcc1ddd5', 'ca38fbe9-e2f4-42e4-9bd4-6b0d62493876', 2008, 'Cadillac', 'STS-V', '1N6AF0KY2FN312707'),
('53d241e6-2c50-4fe4-ae95-12ec5a87b127', '3b0bf14f-9362-4e4b-a402-eb72df813644', 2011, 'Infiniti', 'G', '1FTEW1CM7EK165464'),
('1ea3f918-7baf-44e0-bb0e-ea77980e6dcd', '0daab617-79d4-47b3-bcf7-02633f091748', 2008, 'Lamborghini', 'Murciélago', 'WAUSF98E07A421018'),
('da125b79-b35d-4d35-b91a-89baad7fb15f', 'e86971dc-63f5-4c5f-a8f1-e39c3c03a7bd', 2012, 'Dodge', 'Journey', 'SCBBB7ZH1DC314218'),
('2847b4d0-5821-40f0-982c-d318f2be679f', 'c6541f86-1733-4171-8ace-e772040a0542', 1996, 'Plymouth', 'Neon', '1G6DC8EY1B0799668'),
('0fc0f4ac-306e-4b86-b181-722646229291', '9f9a8462-effc-47b5-a9e1-bfc12acad645', 2003, 'Mitsubishi', 'Challenger', '4T1BD1EB6DU701715'),
('dae54f04-c1cd-42f2-ab8b-f6a34644aa35', '54a4c4bb-1979-4a01-9182-5bb5c0c9f3b0', 1994, 'Volvo', '960', '1G4GG5E37CF953232'),
('4ebe3b12-8197-432c-9359-aac623dbdfa7', '32df7e47-8d51-4e9e-8f70-02a5d65fce99', 1992, 'Lotus', 'Esprit', 'WBABD33496J431630'),
('6e3e9f22-bdd6-4c93-8351-33532f6b02d8', 'b9812e99-c779-4192-932f-b99a956f3738', 2012, 'Toyota', 'RAV4', 'WAUJC68E55A495213'),
('622e7edc-9bec-47c0-9e2e-c92a890bb98c', 'ec828669-b738-4226-9b16-a32a35f41678', 2003, 'Lexus', 'LS', '1G6DH577090398305'),
('f07559c5-d344-4763-99e6-4101d8bbb4a3', '7efe49a3-3eba-4093-882f-40de056c578e', 2005, 'Saturn', 'Relay', 'WBAVB73557F546409'),
('9c3bbebd-78a7-4f84-9018-4ec9b865aca5', '1d87e0ba-a4d1-4bce-9349-d92f5e33e90c', 2007, 'Audi', 'RS4', '1G6AV5S84F0695987'),
('58ed2c08-654f-4c0d-940f-f8ded3f28b27', 'b71ac6e7-0163-4a1c-bbfd-c81eac98dc3e', 1989, 'Lexus', 'ES', '3C3CFFCR2ET378554'),
('2cae7156-3fd9-4285-909e-efb3e66c8143', '5449430e-d4da-4ab6-befc-fbdf80febb89', 1996, 'Plymouth', 'Voyager', '1GYS3HEF8CR535034'),
('5f9bee2a-e4da-4059-be03-3e9079064bcb', '12b7effc-2394-4cf9-84e9-5fefc780ee3e', 2010, 'Porsche', 'Panamera', 'WP0AB2A83FK154049'),
('69d996c5-baf3-4471-8935-8e7158c83a62', 'f4288489-b22f-472a-8ae8-3e32b439f163', 2005, 'Toyota', 'Avalon', 'WAUKF78E48A448177'),
('22b1cba1-c361-45f0-8775-402b895bd954', 'b60777d3-3936-48e7-87bb-f1e9c0752b62', 2008, 'Chevrolet', 'Express 1500', '1FMEU5BE2AU883215'),
('34176371-b7e5-4be5-a7d2-b1b57a68aeee', '0cd45cf7-85d3-42f1-9385-84b1468e5b53', 1995, 'Dodge', 'Ram Van 2500', 'KMHTC6AD7EU218974'),
('d51fbfa0-b8b2-4134-8991-5244d9730684', '30f21edb-c19d-4054-bfe2-30bc372b0c80', 1984, 'Ford', 'Laser', 'WAUEF78E47A498606'),
('0d93b2eb-2db1-48e4-99c1-962c14a1f40d', '32ab2ef8-6dbd-4030-ad26-4ab968060c80', 1995, 'GMC', '3500', 'WBABN33462J723999'),
('b06350ef-f9ad-4996-8bd0-c92d04fe11c0', '71f49135-a00a-4e78-901b-9eeb2eeedd21', 2001, 'BMW', 'Z3', 'WAUEH94F77N764892'),
('4c13fcce-41eb-43e0-a87c-6336d3f9953d', '1881b039-b54c-485b-b611-3b08ae2476de', 1996, 'Mazda', 'Miata MX-5', '5N1BA0NC1FN755383'),
('82043bb9-124b-43e7-a0c2-b8abced9760b', '090d8b62-859c-4f1f-af22-a5e323899ebe', 2010, 'Aston Martin', 'DB9', 'WBSBR93424P438686'),
('e45f7e80-b79c-40f1-aec5-69854b9c426e', '19f57c8c-5d9f-43ec-934b-88d3a1600cae', 1999, 'Toyota', 'Celica', '19UUA56932A050617'),
('6099ab10-4f6d-4293-bf41-586ec0ac06ea', '965c615f-e1e0-4528-bcd5-e412a4b7d98a', 1993, 'Ford', 'Explorer', '1D7RB1CP3BS222867'),
('2a82fa3b-e679-4a8f-bbb3-f24e5ba0bebe', 'efc2e213-6bd3-4ac8-a568-7ca107ad47ee', 2008, 'Land Rover', 'Range Rover Sport', 'WAUMFAFL1BN090964'),
('ec20c69e-d91f-4ffe-8ade-fb74261a3044', '9d89e5d0-86bd-4a7d-b2b3-0b51e489538a', 1985, 'Pontiac', '6000', 'JA32U2FU9FU103114'),
('094194c7-35f7-4a02-859f-f42a00f3dd39', '833d8b08-e6e0-4e7f-bbe6-e73dcb033ea7', 1997, 'BMW', '5 Series', '19UUA75558A752408'),
('923e69b9-33f0-433e-ae1f-0ba5ba3c5679', '108cc07f-f423-4ddc-9dd9-3793bd38712a', 2003, 'Ford', 'Escort ZX2', 'WVGEF9BP3DD277903'),
('b5508ee7-0177-4bd1-9252-98fc001094cb', 'f6718440-3c60-42c4-a795-c22e4df6e41e', 1994, 'Suzuki', 'Swift', '3VW4A7ATXCM382889'),
('c3caac3c-627f-4c93-bd38-2d3aec5c0de1', '4c5d9d5c-d41e-408e-834d-3f8eb8e95947', 2002, 'Ford', 'Mustang', '1G6AY5S32F0931628'),
('12002ea3-2e31-4078-ace0-7555327bee10', '2470fd75-041d-4632-b18e-046b57b977b4', 2008, 'Toyota', '4Runner', 'WAUJC68E22A508401'),
('cd4bb5ad-8db4-4a8a-a33c-fbcb0f98dcd7', 'd7030980-61d8-400f-aa29-5c64d49d0c95', 2000, 'Mazda', 'B-Series Plus', '1G6DC8E59C0173633'),
('5db59dc2-e890-4ead-b2f1-fa61256764c5', '567f0090-6820-4562-af6d-9620203e81a1', 2003, 'Toyota', 'RAV4', 'SCFEBBAK6DG420999'),
('8e1ec558-4af8-4bff-b521-682907f2b369', 'faccdc06-b115-4223-8c5d-38a4c1b3d03b', 1991, 'Audi', '90', '3N1CN7AP0EK579741'),
('23a9999f-ac29-4f40-8e49-af6384f67c04', '89d44328-aa08-4c34-8a99-28d2888cdfc7', 2007, 'Audi', 'RS4', '5N1AN0NW3EN589411'),
('90bd2ba1-387b-45b0-89d8-12dadb50f331', '935d2d1a-a98b-4d48-bc41-56c6be592693', 2001, 'Dodge', 'Neon', '2G4GV5EV2B9326792'),
('394e8725-a953-4d25-b46f-5e07b9c92f96', 'cf057c37-7351-4253-9a5f-9345a0744fcb', 1969, 'Plymouth', 'Roadrunner', '5J8TB3H38EL398573'),
('cf8e3e9a-e66e-43c9-9647-45e7b04e837c', '7d36fd3a-64fe-480a-a906-ed3531d25117', 2010, 'Kia', 'Rio', '1G4GH5G38DF253408'),
('3f0fc870-5541-4cc5-84a3-8679e92edde2', 'f53d1f15-e373-4ccb-b981-b624ae50163c', 1996, 'Suzuki', 'Sidekick', 'WVGDP9BP1ED892251'),
('fe95ece3-daf3-48c5-9a40-448420d89062', '568a48d9-60c5-4f70-8d25-ecafacda509d', 2009, 'Mercedes-Benz', 'SLK-Class', 'WA1VGBFP4EA593438'),
('52c380f8-1c38-46c0-8d49-d46a5c241690', 'b6299fcf-f729-4c26-a3b4-a27cff0809ad', 2006, 'Saturn', 'Relay', 'WBAUC9C57DV603201'),
('e9b7a23e-cf43-4135-92e3-f785b9370d2e', '5ff965e2-1949-4d41-a2a9-91e78074640b', 1990, 'Volkswagen', 'Fox', 'WA1CMAFP2FA946870'),
('ff16ffaf-71df-46e9-916f-4f25017e5a07', 'b672e2a8-d7a0-486a-b0d4-2782b99642b6', 2008, 'Kia', 'Sportage', 'WAUVT58EX3A662691'),
('1273ea0e-659e-48a0-bd73-69e789eaefd3', '8649e9ab-7fce-4e0a-a76e-80ae6e92b042', 1997, 'Mazda', 'Protege', '1G4HP54K754856219'),
('2f2f49a1-505e-4663-a1dd-f0be6c6a2950', 'c93d5449-548a-4b0f-87b0-9ae5a653a7c7', 2006, 'Acura', 'RL', 'WAULV94E79N052621'),
('01bacc2f-c912-4516-a732-d2d0a04159a7', '38d439f5-3ba2-4a60-971e-1b620d681b39', 2012, 'GMC', 'Sierra 3500', '1FTMF1E86AF665467'),
('1a489879-d094-4100-85e4-ded86938a200', 'bcdd83d1-6e88-4c0d-9f42-a9b93e8cfe88', 2003, 'Ford', 'F-Series', 'WAUBNBFB8AN717830'),
('990804f9-7c9b-4a24-8e4e-48cf9d419ebb', 'e6bd0724-a7be-49a9-bd91-49e4641d9b72', 2006, 'Mazda', 'B-Series', '5TFBW5F17DX140273'),
('eddf017f-6451-4372-8358-eb9e47658293', '7aff6574-847d-42ce-a4b0-2a169aed3308', 1995, 'Volkswagen', 'Eurovan', '1G4CU541414940597'),
('91a7a03c-1f31-459a-9261-37f08130e2ba', '1c8b29d6-6121-4085-b736-f2c9133df49b', 2012, 'Chrysler', '200', 'JHMGE8G3XBC715723'),
('9307d708-20dc-4a95-91d2-ff0b2b0a4f68', 'b5ceaf19-fb1c-419d-958b-fafd47548e61', 2007, 'GMC', 'Canyon', '19UUA56742A559775');