
drop table deck;

create table deck (
    deck_id     serial         primary key not null,
    deck_name   varchar(32)                not null
);

insert into deck(deck_name) values ('��̔���');
insert into deck(deck_name) values ('�u���[�A�C�Y�f�b�L');
insert into deck(deck_name) values ('�^�̃u���[�A�C�Y�f�b�L');
insert into deck(deck_name) values ('�u���[�A�C�Y');
insert into deck(deck_name) values ('�f�b�L�I�u�u���[�A�C�Y');

