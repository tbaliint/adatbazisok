create database SzemelyiKolcsonok;
use SzemelyiKolcsonok;
CREATE TABLE dolgozo (
    dolgozo_id  int NOT NULL,
    dolgozo_nev NVARCHAR(128) NOT NULL
);

ALTER TABLE dolgozo ADD CONSTRAINT dolgozo_pk PRIMARY KEY ( dolgozo_id );

CREATE TABLE hitel (
    hitel_id        int NOT NULL,
    felvett_osszeg  int NOT NULL,
    futamido        int NOT NULL,
    kezdet          DATE NOT NULL,
    vege            DATE NOT NULL,
    thm             FLOAT NOT NULL,
    havi_torleszto  int NOT NULL,
    hitelf_forma_id int NOT NULL
);

ALTER TABLE hitel ADD CONSTRAINT hitel_pk PRIMARY KEY ( hitel_id,
                                                        hitelf_forma_id );

CREATE TABLE hitelf (
    forma_id int NOT NULL,
    forma    NVARCHAR(64) NOT NULL
);

ALTER TABLE hitelf ADD CONSTRAINT hitelf_pk PRIMARY KEY ( forma_id );

CREATE TABLE hitelig (
    igenyelt_osszeg    int NOT NULL,
    foly_kolts         int NOT NULL,
    ugyfel_ugyfel_id   int NOT NULL,
    hitel_hitel_id     int NOT NULL,
    dolgozo_dolgozo_id int NOT NULL,
    hitel_forma_id     int NOT NULL,
    teljesitett        CHAR(1) NOT NULL
);

CREATE UNIQUE INDEX hitelig__idx ON
    hitelig (
        hitel_hitel_id
    ASC,
        hitel_forma_id
    ASC );

ALTER TABLE hitelig ADD CONSTRAINT hitelig_pk PRIMARY KEY ( ugyfel_ugyfel_id,
                                                            dolgozo_dolgozo_id );

CREATE TABLE ugyfel (
    ugyfel_id      int NOT NULL,
    szemelyig_szam NVARCHAR(8) NOT NULL,
    nev            NVARCHAR(128) NOT NULL,
    leanykori_nev  NVARCHAR(128),
    szul_dat       DATE NOT NULL
);

ALTER TABLE ugyfel ADD CONSTRAINT ugyfel_pk PRIMARY KEY ( ugyfel_id );

ALTER TABLE hitel
    ADD CONSTRAINT hitel_hitelf_fk FOREIGN KEY ( hitelf_forma_id )
        REFERENCES hitelf ( forma_id );

ALTER TABLE hitelig
    ADD CONSTRAINT hitelig_dolgozo_fk FOREIGN KEY ( dolgozo_dolgozo_id )
        REFERENCES dolgozo ( dolgozo_id );

ALTER TABLE hitelig
    ADD CONSTRAINT hitelig_hitel_fk FOREIGN KEY ( hitel_hitel_id,
                                                  hitel_forma_id )
        REFERENCES hitel ( hitel_id,
                           hitelf_forma_id );

ALTER TABLE hitelig
    ADD CONSTRAINT hitelig_ugyfel_fk FOREIGN KEY ( ugyfel_ugyfel_id )
        REFERENCES ugyfel ( ugyfel_id );
        

select* from hitelig;

'''melyik dolgozó hány hitelt intézett'''
SELECT d.nev,
        count(dolgozo_dolgozo_id)(over partition by ugyfel_ugyfel_id)
FROM hitelig
where dolgozo_dolgozo_id = "valami";

'''a senior kategóriájú hitelek összege'''
select sum(felvett_osszeg)
FROM hitel h join hitelf hf on h.hitelf_forma_id = hf.forma_id
group by hf.forma
where hitelf.foram = "senior"

'''csoportonként az átlag felvett hitel'''
select avg(felvett_osszeg),
FROM hitel h join hitelf hf on h.hitelf_forma_id = hf.forma_id
group by hf.forma

'''melyik hitel nagyobb mint az átlag'''
select felvett_osszeg
from hitel
where felvett_osszeg > {
select avg(felvett_osszeg)
from hitel
}

'''azok az ugyfelek akiknek a nevük nem egyezik meg a születési nevükkel'''
select nev
from ugyfel
where nev |= leanykori_nev