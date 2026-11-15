# Adna Merge Studio

Ticari DNA kitlerini (23andMe, AncestryDNA, FTDNA, MyHeritage, LivingDNA) ve BAM/CRAM dosyalarını panel SNP'leriyle uyumlu PLINK setlerine dönüştüren; birleştirme ve EIGENSTRAT dönüşümü yapan R/Shiny programı. Geliştiren: mozy70.

## İndirme ve kurulum

1. **Code → Download ZIP** ile dosyaları indirin ve bir klasöre çıkarın.
2. Kurulum ve kullanım: `KURULUM_ve_KULLANIM_v3.17_TR_EN.txt` (Bölüm 1'den başlayın).
3. Windows'ta program `AdnaMerge\BASLAT.bat` ile RStudio olmadan da açılır.

PLINK 1.9 programla birlikte gelir (`AdnaMerge\bin\plink.exe`); ayrıca kurmanız gerekmez.

## Üçüncü taraf bileşenler

- PLINK 1.9: `AdnaMerge/bin`, GPL-3; kaynak kodu `plink_1.9.0_kaynak.zip`, lisans `LICENSE_PLINK_GPL3.txt`
- Yleaf'ten türetilmiş Y-SNP tabloları: GPL-3, lisans `AdnaMerge/veri/LICENSE_Yleaf_GPL3.txt`
- UCSC hg19 → hg38 liftOver zinciri, rCRS (NC_012920.1)

Kaynaklar ve yapılan değişiklikler: `AdnaMerge/veri/KAYNAK.txt`.

---

# Adna Merge Studio (English)

R/Shiny program that converts consumer DNA kits (23andMe, AncestryDNA, FTDNA, MyHeritage, LivingDNA) and BAM/CRAM files into PLINK sets matching panel SNPs, with merging and EIGENSTRAT conversion. Developed by mozy70.

## Download and install

1. Download the files with **Code → Download ZIP** and extract them to a folder.
2. Installation and usage: `KURULUM_ve_KULLANIM_v3.17_TR_EN.txt` (ENGLISH GUIDE, second half of the file).
3. On Windows the program also starts without RStudio via `AdnaMerge\BASLAT.bat`.

PLINK 1.9 ships with the program (`AdnaMerge\bin\plink.exe`); no separate installation is needed.

## Third-party components

- PLINK 1.9: `AdnaMerge/bin`, GPL-3; source code `plink_1.9.0_kaynak.zip`, license `LICENSE_PLINK_GPL3.txt`
- Y-SNP tables derived from Yleaf: GPL-3, license `AdnaMerge/veri/LICENSE_Yleaf_GPL3.txt`
- UCSC hg19 → hg38 liftOver chain, rCRS (NC_012920.1)

Sources and modifications: `AdnaMerge/veri/KAYNAK.txt`.

---

## Lisans / License

Telif Hakkı (C) 2026 mozy70

Bu program özgür yazılımdır: Free Software Foundation tarafından yayımlanan GNU Genel Kamu Lisansı sürüm 3 hükümlerine ve aşağıdaki ek şartlara uygun olarak yeniden dağıtılabilir ve/veya değiştirilebilir. Program HİÇBİR GARANTİ OLMAKSIZIN dağıtılmaktadır; ayrıntılar için GNU Genel Kamu Lisansı'na bakınız (`LICENSE`).

GNU GPL v3 madde 7 uyarınca ek şartlar:
(b) "Adna Merge Studio by mozy70" yazar atfı, kaynak dosyalarda ve bu programı ya da değiştirilmiş bir sürümünü içeren her eserin gösterdiği yasal bildirimlerde korunmalıdır.
(c) Değiştirilmiş sürümler orijinalden farklı olduğu makul biçimde belirtilerek işaretlenmeli ve orijinal sürüm olarak sunulmamalıdır.

Copyright (C) 2026 mozy70

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License version 3 as published by the Free Software Foundation, with the additional terms below. This program is distributed WITHOUT ANY WARRANTY; see the GNU General Public License for details (`LICENSE`).

Additional terms under GNU GPL v3 section 7:
(b) The author attribution "Adna Merge Studio by mozy70" must be preserved in the source files and in the Appropriate Legal Notices displayed by any work containing this program or a modified version of it.
(c) Modified versions must be marked in reasonable ways as different from the original version and must not be presented as the original.
