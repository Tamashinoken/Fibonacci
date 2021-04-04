!___________________________________________________________________________
! Ushbu dastur yordamida fibonacci sonlarini hosil qilish mumkin.           |
! Fibonacci sonlarini matematik ko`rinishi quyidagicha:                     |
! a1 = 1                                                                    |
! a2 = 1                                                                    |
! a3 = 2                                                                    |
! a4 = 3                                                                    |
! a5 = 5                                                                    |
! .....                                                                     |
! an = a(n-1) + a(n-2)                                                      |
!                                                                           |
! Muallif: AshurovS                                                         |
! versiya: 1.0.0                                                            |
!___________________________________________________________________________|

IMPLICIT NONE !Dastur o`zgaruvchilarini avtomatik ravishda aniqlash funksiyasini bekor qilamiz
! Ya'ni har bir o`zgaruvchi turini o`zimiz belgilaymiz
! Agar bu buyruq bo`lmasa, kompilyator har bir o`zgaruvchi turini o`zi aniqlaydi
! Bunda u i,j,k,l,m,n belgilari bilan boshlanuvchi o`zgaruvchilarni INTEGER deb hisoblaydi.
! Bu ba'zida foydali va qulay bo`lishi mumkin. Lekin katta dasturlarda, shuningdek belgili o`zgaruvchilarda
! bu xatolikni keltirib chiqaradi.
! Shu sababli turli xatoliklardan qochish uchun har bir o`zgaruvchi turini o`zimiz aniqlashimiz lozim.

INTEGER(8)::i,n
INTEGER(8),DIMENSION(15)::a ! bir o`lchamli, n ta elementdan tashkil topgan matritsa
WRITE(*,*)'n sonni kiriting:' ! Fibonacci sonlarini ma'lum bir songacha hisoblaymiz. Biz kiritgan n son o`sha chegara.
! Masalan n = 100 bo`lsa, dastur 1 dan 100 gacha oraliqda fibonacci sonlarini ekranga chiqaradi.
! Dastur cheksiz ko`p miqdorda fibonacci sonlarini hisoblay olmaydi.
! Kompyuterlarning texnik imkoniyati ham bunga imkon bermaydi:(

READ(*,*)n

! Asosiy sikl
! Ketma-ketlikning eng birinchi ikkita hadi bu 1 va 1. Undan keyingilari 2, 3 va hokazo.
! Shu sababli a(n) bir o`lchamli matritsaning dastlabki elementlari 1 va 1 ni qabul qiladi.
DO i=3,n
a(2)=a(1)+1
a(i)=a(i-1)+a(i-2)
WRITE(*,*)a(i)
END DO
END
