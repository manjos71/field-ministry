.class public Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonFilteredArray"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;
    }
.end annotation


# static fields
.field private static instance:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;


# instance fields
.field private final addressPattern:Ljava/util/regex/Pattern;

.field private colorBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

.field private final context:Landroid/content/Context;

.field private groupBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

.field private includeArchived:Z

.field private listCities:Ljava/util/List;

.field private final listCustomTags:Ljava/util/List;

.field private listGroups:Ljava/util/List;

.field private listNeighborhoods:Ljava/util/List;

.field private listPersons:Ljava/util/List;

.field private final listTags:Ljava/util/List;

.field private sortBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

.field private sortIncreasing:Z

.field private final streetComparator:Lcom/lostpixels/fieldservice/utils/comparators/AlphanumStringComparator;


# direct methods
.method static bridge synthetic -$$Nest$mcompareSorting(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/internal/ministry/Person;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->compareSorting(Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/internal/ministry/Person;)I

    move-result p0

    return p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1686
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByNeighborhood:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->groupBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    .line 1687
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;->eSortByDate:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    .line 1688
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->eColorByType:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->colorBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    .line 1694
    new-instance v0, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumStringComparator;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumStringComparator;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->streetComparator:Lcom/lostpixels/fieldservice/utils/comparators/AlphanumStringComparator;

    .line 1698
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listPersons:Ljava/util/List;

    .line 1699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listCustomTags:Ljava/util/List;

    .line 1700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listTags:Ljava/util/List;

    .line 1701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listNeighborhoods:Ljava/util/List;

    .line 1702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listCities:Ljava/util/List;

    const/4 v0, 0x1

    .line 1703
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortIncreasing:Z

    .line 1704
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 1705
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->includeArchived:Z

    .line 1706
    const-string p1, "^\\d+\\w?\\s+\\w.*"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->addressPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private compareSorting(Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/internal/ministry/Person;)I
    .locals 9

    .line 1816
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$17;->$SwitchMap$com$lostpixels$fieldservice$helpfunctions$PublicConstants$ESort:[I

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 1822
    :cond_0
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortIncreasing:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1823
    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    neg-int p1, p1

    return p1

    .line 1818
    :cond_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getLastUpdate()Ljava/util/Date;

    move-result-object p1

    .line 1819
    :goto_0
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object p2

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getLastUpdate()Ljava/util/Date;

    move-result-object p2

    .line 1820
    :goto_1
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortIncreasing:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    if-eqz v0, :cond_5

    return p1

    :cond_5
    neg-int p1, p1

    return p1

    .line 1826
    :cond_6
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->addressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v3, " "

    const-string v4, ")"

    const-string v5, " ("

    const/16 v6, 0x20

    if-eqz v0, :cond_8

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1829
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1833
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1839
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1840
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1841
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1842
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1849
    :goto_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->addressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1852
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1856
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 1862
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1863
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1865
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1866
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1869
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1871
    :goto_3
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortIncreasing:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->streetComparator:Lcom/lostpixels/fieldservice/utils/comparators/AlphanumStringComparator;

    invoke-virtual {v0, p1, p2}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumStringComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1872
    :cond_d
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->streetComparator:Lcom/lostpixels/fieldservice/utils/comparators/AlphanumStringComparator;

    invoke-virtual {v0, p1, p2}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumStringComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method private doFilter()V
    .locals 15

    .line 2307
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 2309
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2310
    const-class v2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string v3, "isHidden"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 2311
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isHidden()Z

    move-result v4

    .line 2312
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 2313
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 2314
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 2315
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_3

    if-eqz v4, :cond_3

    .line 2318
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2325
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2326
    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v4

    const-string v5, "houseHolder"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lio/realm/RealmQuery;->notEqualTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 2327
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2330
    :cond_5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2331
    invoke-virtual {v0, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "visitType"

    invoke-virtual {v3, v7, v5}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 2332
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2335
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2336
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 2337
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v8

    if-eq v8, v9, :cond_9

    :cond_8
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isInterested()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v8, 0x1

    .line 2339
    :goto_5
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isHidden()Z

    move-result v11

    if-nez v11, :cond_c

    .line 2342
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2345
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCustomTagsSet()Ljava/util/Set;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCustomTagsSet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_b
    const/4 v11, 0x1

    .line 2350
    :cond_c
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 2352
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v12

    if-nez v12, :cond_d

    const/4 v8, 0x0

    .line 2356
    :cond_d
    iget-boolean v12, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->includeArchived:Z

    if-eqz v12, :cond_e

    if-eqz v11, :cond_f

    :cond_e
    if-nez v12, :cond_10

    if-eqz v11, :cond_10

    :cond_f
    const/4 v8, 0x0

    :cond_10
    if-eqz v8, :cond_15

    .line 2361
    iget-object v11, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listTags:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    .line 2363
    sget-object v13, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$17;->$SwitchMap$com$lostpixels$fieldservice$activities$visits$ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v13, v12

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_7

    .line 2405
    :pswitch_0
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_14

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_14

    :cond_12
    :goto_6
    const/4 v12, 0x1

    goto/16 :goto_8

    .line 2402
    :pswitch_1
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_13

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_12

    :cond_13
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_14

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_14

    goto :goto_6

    .line 2399
    :pswitch_2
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isPinnedToFront()Z

    move-result v12

    goto :goto_8

    .line 2396
    :pswitch_3
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v12

    if-ne v12, v9, :cond_14

    goto :goto_6

    .line 2393
    :pswitch_4
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v12

    if-nez v12, :cond_14

    goto :goto_6

    .line 2390
    :pswitch_5
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result v12

    if-ne v12, v10, :cond_14

    goto :goto_6

    .line 2383
    :pswitch_6
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_14

    .line 2384
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 2385
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v13

    const/16 v14, 0x9

    if-eq v13, v14, :cond_12

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v12

    if-nez v12, :cond_14

    goto :goto_6

    :cond_14
    :goto_7
    const/4 v12, 0x0

    goto :goto_8

    .line 2380
    :pswitch_7
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->hasVisitTimeSet()Z

    move-result v12

    goto :goto_8

    .line 2377
    :pswitch_8
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPriority()I

    move-result v12

    if-lez v12, :cond_14

    goto :goto_6

    .line 2374
    :pswitch_9
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v12

    goto :goto_8

    .line 2371
    :pswitch_a
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v12

    goto :goto_8

    .line 2368
    :pswitch_b
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v12

    goto :goto_8

    .line 2365
    :pswitch_c
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v12

    :goto_8
    if-nez v12, :cond_11

    const/4 v8, 0x0

    :cond_15
    if-eqz v8, :cond_1d

    .line 2418
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listCustomTags:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2419
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCustomTagsSet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    const/4 v8, 0x0

    :cond_17
    if-eqz v8, :cond_1a

    .line 2427
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listCities:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 2429
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listCities:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2430
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v8, 0x1

    goto :goto_9

    :cond_19
    const/4 v8, 0x0

    :cond_1a
    :goto_9
    if-eqz v8, :cond_1d

    .line 2441
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listNeighborhoods:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1d

    .line 2443
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listNeighborhoods:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2444
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    goto :goto_a

    :cond_1c
    const/4 v10, 0x0

    :goto_a
    move v8, v10

    :cond_1d
    if-eqz v8, :cond_7

    .line 2456
    new-instance v8, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v9

    invoke-direct {v8, v7, v9, v10}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;J)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2459
    :cond_1e
    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listPersons:Ljava/util/List;

    .line 2461
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doGroup()V
    .locals 32

    move-object/from16 v0, p0

    .line 1879
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1880
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1882
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    const v4, 0x7f120480

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1883
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$17;->$SwitchMap$com$lostpixels$fieldservice$helpfunctions$PublicConstants$EGroupBy:[I

    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->groupBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, -0x7

    const/4 v6, 0x3

    const/4 v7, 0x6

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v4, :pswitch_data_0

    :cond_0
    move-object v3, v1

    goto/16 :goto_1e

    .line 1924
    :pswitch_0
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listPersons:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1925
    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$3;

    invoke-direct {v3, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1932
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$17;->$SwitchMap$com$lostpixels$fieldservice$helpfunctions$PublicConstants$ESort:[I

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getSortBy()Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v10, :cond_3

    if-eq v3, v8, :cond_2

    if-eq v3, v6, :cond_1

    const-string v3, ""

    goto :goto_0

    .line 1940
    :cond_1
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    const v4, 0x7f120457

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1937
    :cond_2
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    const v4, 0x7f1204ef

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1934
    :cond_3
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    const v4, 0x7f12035c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1944
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v9, v4, :cond_0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v9, v9, 0x1

    check-cast v5, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    .line 1945
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2245
    :pswitch_1
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listPersons:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2246
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 2247
    invoke-virtual {v4, v7, v5}, Ljava/util/Calendar;->add(II)V

    const/16 v5, 0xb

    const/16 v6, 0x17

    .line 2248
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    const/16 v6, 0x3b

    .line 2249
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    .line 2250
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 2251
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 2254
    new-instance v5, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$18;

    invoke-direct {v5, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$18;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2262
    new-instance v5, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$19;

    invoke-direct {v5, v0, v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$19;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;Ljava/util/Date;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2288
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2
    if-ge v9, v5, :cond_0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v9, v9, 0x1

    check-cast v6, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    .line 2289
    iget-object v7, v6, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 2290
    invoke-virtual {v4, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 2293
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v6, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v10

    const-string v11, "EEEE"

    invoke-static {v11, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2295
    invoke-static {v8}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v10

    iget-object v6, v6, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getTimeForRV()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2296
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2291
    :cond_5
    :goto_3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2058
    :pswitch_2
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listPersons:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2059
    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$5;

    invoke-direct {v3, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$5;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2069
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    .line 2070
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    const v7, 0x7f120499

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPriority()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1885
    :pswitch_3
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listPersons:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1886
    new-instance v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$1;

    invoke-direct {v4, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1895
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_5
    if-ge v9, v4, :cond_0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v9, v9, 0x1

    check-cast v5, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    .line 1896
    iget-object v5, v5, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v5

    .line 1897
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1898
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1900
    :cond_6
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1904
    :pswitch_4
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listPersons:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1905
    new-instance v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$2;

    invoke-direct {v4, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1915
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_6
    if-ge v9, v4, :cond_0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v9, v9, 0x1

    check-cast v5, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    .line 1916
    iget-object v5, v5, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v5

    .line 1917
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1918
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1920
    :cond_7
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2075
    :pswitch_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2076
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2077
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2078
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2079
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2080
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2081
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2082
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2083
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2084
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2085
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2086
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v1

    .line 2088
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    move-object/from16 v18, v3

    const v3, 0x7f120451

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2089
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    move-object/from16 v19, v1

    const v1, 0x7f1203c2

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2090
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    move-object/from16 v20, v1

    const v1, 0x7f1203e0

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2091
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    move-object/from16 v21, v1

    const v1, 0x7f120555

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2092
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    move-object/from16 v22, v1

    const v1, 0x7f120449

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2093
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    move-object/from16 v23, v1

    const v1, 0x7f12053e

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2094
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    move-object/from16 v24, v1

    const v1, 0x7f120554

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2095
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    move-object/from16 v25, v1

    const v1, 0x7f120533

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2096
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    move-object/from16 v26, v1

    const v1, 0x7f120405

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2097
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    move-object/from16 v27, v1

    const v1, 0x7f1204bb

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2098
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    move-object/from16 v28, v1

    const v1, 0x7f120508

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2101
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listPersons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v30, v3

    move-object/from16 v3, v29

    check-cast v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    move-object/from16 v29, v1

    .line 2102
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->hasVisitTimeSet()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2103
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitMorning()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2104
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2105
    :cond_8
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitDay()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2106
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2107
    :cond_9
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitEvening()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2108
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2109
    :cond_a
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitWeekend()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2110
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2111
    :cond_b
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitMonday()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2112
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2113
    :cond_c
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitTuesday()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2114
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2115
    :cond_d
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitWednesday()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2116
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2117
    :cond_e
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitThursday()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2118
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2119
    :cond_f
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitFriday()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2120
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2121
    :cond_10
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitSaturday()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2122
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2123
    :cond_11
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->visitSunday()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2124
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2126
    :cond_12
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_8
    move-object/from16 v1, v29

    move-object/from16 v3, v30

    goto/16 :goto_7

    :cond_14
    move-object/from16 v29, v1

    .line 2130
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$6;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$6;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2136
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$7;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$7;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2142
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$8;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$8;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2148
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$9;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$9;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v7, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2154
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$10;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$10;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2160
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$11;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$11;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v10, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2166
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$12;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$12;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v11, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2172
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$13;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$13;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v12, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2178
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$14;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$14;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v13, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2184
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$15;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$15;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v14, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2190
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$16;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$16;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v15, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2196
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$17;

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$17;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v9, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2204
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_15

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    add-int/lit8 v3, v3, 0x1

    check-cast v30, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    move/from16 v31, v1

    move-object/from16 v1, v19

    .line 2205
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v31

    goto :goto_9

    .line 2206
    :cond_15
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_16

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v3, v3, 0x1

    check-cast v19, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    move/from16 v30, v1

    move-object/from16 v1, v20

    .line 2207
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v30

    goto :goto_a

    .line 2208
    :cond_16
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_17

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v3, v3, 0x1

    check-cast v19, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    move/from16 v20, v1

    move-object/from16 v1, v21

    .line 2209
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v20

    goto :goto_b

    .line 2210
    :cond_17
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_18

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v3, v3, 0x1

    check-cast v19, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    move/from16 v20, v1

    move-object/from16 v1, v22

    .line 2211
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v20

    goto :goto_c

    .line 2212
    :cond_18
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_19

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v3, v3, 0x1

    check-cast v19, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    move/from16 v20, v1

    move-object/from16 v1, v23

    .line 2213
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v20

    goto :goto_d

    .line 2214
    :cond_19
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_1a

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v3, v3, 0x1

    check-cast v19, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    move/from16 v20, v1

    move-object/from16 v1, v24

    .line 2215
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v20

    goto :goto_e

    .line 2216
    :cond_1a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_1b

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v3, v3, 0x1

    check-cast v19, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    move/from16 v20, v1

    move-object/from16 v1, v25

    .line 2217
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v20

    goto :goto_f

    .line 2218
    :cond_1b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_1c

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v3, v3, 0x1

    check-cast v19, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    move/from16 v20, v1

    move-object/from16 v1, v26

    .line 2219
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v20

    goto :goto_10

    .line 2220
    :cond_1c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v1, :cond_1d

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v3, v3, 0x1

    check-cast v19, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    move/from16 v20, v1

    move-object/from16 v1, v27

    .line 2221
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v20

    goto :goto_11

    .line 2222
    :cond_1d
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v1, :cond_1e

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v3, v3, 0x1

    check-cast v19, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    move/from16 v20, v1

    move-object/from16 v1, v28

    .line 2223
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v20

    goto :goto_12

    .line 2224
    :cond_1e
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_1f

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v3, v3, 0x1

    check-cast v19, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    move/from16 v20, v1

    move-object/from16 v1, v29

    .line 2225
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v20

    goto :goto_13

    .line 2226
    :cond_1f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v1, :cond_20

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v3, v3, 0x1

    check-cast v16, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    move/from16 v19, v1

    move-object/from16 v1, v18

    .line 2227
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v19

    goto :goto_14

    :cond_20
    move-object/from16 v3, v17

    .line 2230
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2231
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2232
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2233
    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2234
    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2235
    invoke-interface {v3, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2236
    invoke-interface {v3, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2237
    invoke-interface {v3, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2238
    invoke-interface {v3, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2239
    invoke-interface {v3, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2240
    invoke-interface {v3, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2241
    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1e

    :pswitch_6
    move-object v3, v1

    .line 1959
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_15
    if-gt v4, v7, :cond_21

    .line 1961
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1963
    :cond_21
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    const v9, 0x7f120479

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1964
    iget-object v9, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    const v11, 0x7f12047c

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1965
    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    const v12, 0x7f120540

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1966
    iget-object v12, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    const v13, 0x7f120532

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1967
    iget-object v13, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    const v14, 0x7f12047a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1968
    iget-object v14, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    const v15, 0x7f12053f

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1969
    iget-object v15, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->context:Landroid/content/Context;

    const v7, 0x7f120531

    invoke-virtual {v15, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1972
    new-instance v15, Ljava/util/GregorianCalendar;

    invoke-direct {v15}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v6, 0x5

    .line 1973
    invoke-virtual {v15, v6, v5}, Ljava/util/Calendar;->add(II)V

    .line 1974
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v10, -0xe

    .line 1975
    invoke-virtual {v5, v6, v10}, Ljava/util/Calendar;->add(II)V

    .line 1976
    new-instance v10, Ljava/util/GregorianCalendar;

    invoke-direct {v10}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v8, -0x15

    .line 1977
    invoke-virtual {v10, v6, v8}, Ljava/util/Calendar;->add(II)V

    .line 1978
    new-instance v8, Ljava/util/GregorianCalendar;

    invoke-direct {v8}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v6, -0x1

    move-object/from16 v22, v9

    const/4 v9, 0x2

    .line 1979
    invoke-virtual {v8, v9, v6}, Ljava/util/Calendar;->add(II)V

    .line 1980
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    move-object/from16 v23, v11

    const/4 v11, -0x2

    .line 1981
    invoke-virtual {v6, v9, v11}, Ljava/util/Calendar;->add(II)V

    .line 1982
    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-direct {v11}, Ljava/util/GregorianCalendar;-><init>()V

    move-object/from16 v24, v12

    const/4 v12, -0x3

    .line 1983
    invoke-virtual {v11, v9, v12}, Ljava/util/Calendar;->add(II)V

    .line 1986
    new-instance v9, Ljava/util/GregorianCalendar;

    invoke-direct {v9}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1987
    iget-object v12, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listPersons:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_16
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    move-object/from16 v26, v12

    if-eqz v25, :cond_29

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v12, v25

    check-cast v12, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    move-object/from16 v25, v13

    .line 1988
    iget-object v13, v12, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_28

    .line 1989
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_28

    move-object/from16 v28, v14

    const/4 v14, 0x0

    .line 1990
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1991
    invoke-virtual {v9, v15}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 1992
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_17
    const/4 v13, 0x6

    goto/16 :goto_18

    .line 1993
    :cond_22
    invoke-virtual {v9, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    const/4 v13, 0x1

    .line 1994
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 1995
    :cond_23
    invoke-virtual {v9, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    const/4 v13, 0x2

    .line 1996
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 1997
    :cond_24
    invoke-virtual {v9, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    const/4 v13, 0x3

    .line 1998
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 1999
    :cond_25
    invoke-virtual {v9, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    const/4 v13, 0x4

    .line 2000
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 2001
    :cond_26
    invoke-virtual {v9, v11}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27

    const/4 v13, 0x5

    .line 2002
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_27
    const/4 v13, 0x6

    .line 2004
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_28
    move-object/from16 v28, v14

    const/4 v13, 0x6

    .line 2006
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_18
    move-object/from16 v13, v25

    move-object/from16 v12, v26

    move-object/from16 v14, v28

    goto/16 :goto_16

    :cond_29
    move-object/from16 v25, v13

    move-object/from16 v28, v14

    .line 2010
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v5, :cond_2a

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Ljava/util/List;

    .line 2011
    new-instance v9, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$4;

    invoke-direct {v9, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$4;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_19

    .line 2021
    :cond_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_1a
    if-ge v6, v5, :cond_32

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Ljava/util/List;

    .line 2022
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    if-eqz v9, :cond_30

    const/4 v13, 0x1

    if-eq v9, v13, :cond_2f

    const/4 v11, 0x2

    if-eq v9, v11, :cond_2e

    const/4 v12, 0x3

    if-eq v9, v12, :cond_2d

    const/4 v14, 0x4

    if-eq v9, v14, :cond_2c

    const/4 v15, 0x5

    if-eq v9, v15, :cond_2b

    .line 2049
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2050
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1c
    move-object/from16 v10, v22

    goto :goto_1d

    .line 2045
    :cond_2b
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2046
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2c
    const/4 v15, 0x5

    .line 2041
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v28

    .line 2042
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2d
    const/4 v14, 0x4

    const/4 v15, 0x5

    .line 2037
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v25

    .line 2038
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2e
    const/4 v12, 0x3

    const/4 v14, 0x4

    const/4 v15, 0x5

    .line 2033
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v24

    .line 2034
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2f
    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v14, 0x4

    const/4 v15, 0x5

    .line 2029
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v23

    .line 2030
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_30
    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x5

    .line 2025
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v22

    .line 2026
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1d
    move-object/from16 v22, v10

    goto :goto_1b

    :cond_31
    move-object/from16 v10, v22

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x5

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1a

    .line 2302
    :cond_32
    :goto_1e
    iput-object v3, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listPersons:Ljava/util/List;

    .line 2303
    iput-object v2, v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listGroups:Ljava/util/List;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;
    .locals 1

    .line 1712
    sget-object v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->instance:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    if-nez v0, :cond_0

    .line 1713
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->instance:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    .line 1714
    :cond_0
    sget-object p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->instance:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    return-object p0
.end method


# virtual methods
.method public getColorBy()Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;
    .locals 1

    .line 1770
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->colorBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    return-object v0
.end method

.method public getGroupBy()Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;
    .locals 1

    .line 1743
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->groupBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    return-object v0
.end method

.method public getGroupList()Ljava/util/List;
    .locals 1

    .line 1782
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listGroups:Ljava/util/List;

    return-object v0
.end method

.method public getPersonList()Ljava/util/List;
    .locals 1

    .line 1778
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listPersons:Ljava/util/List;

    return-object v0
.end method

.method public getSortBy()Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;
    .locals 1

    .line 1757
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    return-object v0
.end method

.method public isShowArchived()Z
    .locals 1

    .line 1739
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->includeArchived:Z

    return v0
.end method

.method public isSortIncreasing()Z
    .locals 1

    .line 1803
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortIncreasing:Z

    return v0
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1729
    const-string v0, "order"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortIncreasing:Z

    .line 1730
    const-string v0, "sort"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;->valueOf(Ljava/lang/String;)Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    .line 1731
    const-string v0, "group"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->valueOf(Ljava/lang/String;)Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->groupBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1723
    const-string v0, "order"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortIncreasing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1724
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;->token(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sort"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->groupBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->token(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setColorBy(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;)V
    .locals 0

    .line 1774
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->colorBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    return-void
.end method

.method public setGroupBy(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;)V
    .locals 2

    .line 1747
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->groupBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    if-eq v0, p1, :cond_1

    .line 1748
    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByBestVisit:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    if-ne v0, v1, :cond_0

    .line 1749
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->doFilter()V

    .line 1751
    :cond_0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->groupBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    .line 1752
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->doGroup()V

    :cond_1
    return-void
.end method

.method public setSortBy(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;)V
    .locals 2

    .line 1761
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    if-eq v0, p1, :cond_1

    .line 1762
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->groupBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByBestVisit:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    if-ne v0, v1, :cond_0

    .line 1763
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->doFilter()V

    .line 1764
    :cond_0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    .line 1765
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->doGroup()V

    :cond_1
    return-void
.end method

.method public setSortIncreasing(Z)V
    .locals 2

    .line 1807
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortIncreasing:Z

    if-eq v0, p1, :cond_1

    .line 1808
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->groupBy:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByBestVisit:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    if-ne v0, v1, :cond_0

    .line 1809
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->doFilter()V

    .line 1810
    :cond_0
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->sortIncreasing:Z

    .line 1811
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->doGroup()V

    :cond_1
    return-void
.end method

.method public setTags(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1786
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1787
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listCustomTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1789
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1790
    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->convert(Ljava/lang/String;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listTags:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1794
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listCustomTags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1796
    :cond_1
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listNeighborhoods:Ljava/util/List;

    .line 1797
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->listCities:Ljava/util/List;

    .line 1798
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->doFilter()V

    .line 1799
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->doGroup()V

    return-void
.end method

.method public showArchived(Z)V
    .locals 0

    .line 1735
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->includeArchived:Z

    return-void
.end method

.method public update()V
    .locals 0

    .line 1718
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->doFilter()V

    .line 1719
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->doGroup()V

    return-void
.end method
