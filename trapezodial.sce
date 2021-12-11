clc

batas_bawah=input("Batas Bawah = ");
batas_atas=input("Batas Atas = ");
jumlah_trapesium=input("Jumlah Trapesium = ");
delta_x = (batas_atas - batas_bawah) / jumlah_trapesium;

jumlah_coffx = 0;

mprintf("xs\t\t f(x)\t\t Cof\t\t Cof*f(x)\n");
for i=0:jumlah_trapesium
    xs = 1 +(delta_x * i);
    fx = (((1/2) * (xs^2)) - (2*xs) + 3);
    cof = 0;
    if xs == batas_bawah || xs == batas_atas then
        cof = 1;
    else
        cof = 2;
    end

    coeffx = cof * fx;
    jumlah_coffx = jumlah_coffx + coeffx;
    jumlah_fx = jumlah_fx + fx;

    mprintf(string(xs)+"\t\t "+string(fx)+"\t\t "+string(cof)+"\t\t "+string(coeffx)+"\n");
end
mprintf("\nTotal\t\t \t\t \t\t "+string(jumlah_coffx)+"\n");

hasil = delta_x * jumlah_coffx / 2;

mprintf("Hasil = "+string(hasil))