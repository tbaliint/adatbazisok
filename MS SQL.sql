/*1. Készítsünk nézetet VSZOBA néven, amely megjeleníti a szobák adatai mellett a megfelelő szálláshely nevét, helyét és a csillagok számát is!
Az oszlopoknak nem szükséges külön nevet adni!
Teszteljük is a nézetet, pl: SELECT * FROM UJAENB_VSZOBA*/
create or ALTER view VSZOBA
as 
select  sz.*,
		szh.SZALLAS_NEV,
        szh.HELY,
        szh.CSILLAGOK_SZAMA
FROM Szoba sz join Szallashely szh on sz.SZALLAS_FK = szh.SZALLAS_ID




/*2 Készítsen tárolt eljárást SPUgyfelFoglalasok, amely a paraméterként megkapott ügyfél azonosítóhoz tartozó foglalások adatait listázza!
Teszteljük a tárolt eljárás működését, pl: EXEC UJAENB_SPUgyfelFoglalasok 'laszlo2'
*/

create or alter PROC SPUgyfelFoglalasok
--paraméterek
@ugyfel nvarchar(100)
AS
BEGIN
  SELECT * 
  FROM Foglalas
  WHERE ugyfel_fk = @ugyfel
END



/*
3. Készítsen skalár értékű függvényt UDFFerohely néven, amely visszaadja, hogy a paraméterként megkapott foglalás azonosítóhoz hány férőhelyes szoba tartozik!
a. Teszteljük a függvény működését!
*/
create or alter function UDFFerohely
(
	@foglalas_azonosito int
)
returns INT
as 
BEGIN
	DECLARE @ferohely int 
	SELECT @ferohely = sz.FEROHELY
    from Foglalas f join Szoba sz on f.SZOBA_FK = sz.SZOBA_ID
	where f.FOGLALAS_PK = @foglalas_azonosito
    return @ferohely
end

