program NanoReaksiPermukaan;

uses crt;

var
  diameter, luasPermukaan, volume, rasio: real;

begin
  clrscr;
  writeln('=== Simulasi Reaksi Permukaan Nanopartikel ===');
  writeln('Masukkan diameter partikel (nm): ');
  readln(diameter);

  // Asumsi bentuk bola, luas = 4πr² dan volume = 4/3πr³
  // Rasio luas per volume = 3 / r
  luasPermukaan := 4 * 3.14 * sqr(diameter / 2);
  volume := (4/3) * 3.14 * (sqr(diameter / 2) * (diameter / 2));
  rasio := luasPermukaan / volume;

  writeln('Luas Permukaan = ', luasPermukaan:0:2, ' nm^2');
  writeln('Volume         = ', volume:0:2, ' nm^3');
  writeln('Rasio Luas/Volume = ', rasio:0:4);

  if rasio > 6 then
    writeln('>> Reaktivitas tinggi! Ideal untuk katalis.')
  else
    writeln('>> Reaktivitas rendah. Kurang efisien untuk aplikasi nano.');
    
  readln;
end.
