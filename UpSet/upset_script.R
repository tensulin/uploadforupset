library(UpSetR)
filepath <- "~/Uni/Bachelor/6.Semester/Bachelorarbeit/nebenaufgaben/UpSet/"

pdf(file=paste0(filepath, "upset_all_intersects.pdf") ,width=10,height=8,pointsize=16)
png(filename=paste0(filepath, "upset_all_intersects.png"), units="in",width=70,height=8,pointsize=16,res=300)

#Datensatz laden:
pan <- read.csv(file = paste0(filepath, "upset_coregenome_pan.csv"), header=T)

upset(pan, nsets = 17, nintersects = 590, order.by = ("freq"))
#upset(pan, nsets = 21)
#upset(pan, intersections = list(list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_subsp_brassicacearum_NFM421"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_51MFCVI2.1"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_PP1_210F"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_36B7"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_36D4"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_37D10"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_38D4"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_38D7"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_48H11"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_93F8"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_BS3663"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_DF41"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_Delaware"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_L13.6.12"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_LBUM300"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_LZ.4"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_PA1G7"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_TM1A3"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_Wood1"), list("Pseudomonas_brassicacearum_3Re2.7", "Pseudomonas_brassicacearum_strain_Wood3")))


#So werden nur gennannte Intersections angezeigt. Die stehen dann in der intersections list als: list("name1", "name2", ...)
#Wichtig: Upset erkennt aus irgendeinem Grund keine Namen an, die mit Zahlen anfangen, dementsprechend musst du die betroffenen Organismennamen ändern .

#Die spezifizierten Queries kann man dann noch bunt machen wenn man möchte, das erfolgt mit dem Parameter Queries. Beispiel:
#upset(pan, nsets=9, intersections = list(list("LBUM300"), list("NFM421", "PA1G7"), list("BS3663", "TM1A3")), queries = list(list(query = intersects, params = list("NFM421", "PA1G7"), color = "red", active = TRUE)))

#Das würde jetzt die intersection von NFM421 und PA1G7 rot färben.
#Wichtig: die Queries die genannt sind müssen auch im Diagram vorhanden sein, sonst stürzt das Program ab.

dev.off()
