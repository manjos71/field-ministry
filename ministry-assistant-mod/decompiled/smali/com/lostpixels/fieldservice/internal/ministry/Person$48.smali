.class Lcom/lostpixels/fieldservice/internal/ministry/Person$48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Person;->merge(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field final synthetic val$bIsFromImportTerritory:Z

.field final synthetic val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V
    .locals 0

    .line 1802
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$bIsFromImportTerritory:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 5

    .line 1806
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 1807
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1808
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$type()I

    move-result v0

    .line 1810
    :try_start_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$type()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$type(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1812
    :catch_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$type(I)V

    .line 1814
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$address(Ljava/lang/String;)V

    .line 1815
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$suburb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$suburb(Ljava/lang/String;)V

    .line 1816
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$name(Ljava/lang/String;)V

    .line 1817
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$email()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$email(Ljava/lang/String;)V

    .line 1818
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$postalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$postalCode(Ljava/lang/String;)V

    .line 1819
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$apartment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$apartment(Ljava/lang/String;)V

    .line 1820
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$phone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$phone(Ljava/lang/String;)V

    .line 1821
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$age()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$age(I)V

    .line 1822
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$motherTongue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$motherTongue(Ljava/lang/String;)V

    .line 1823
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$languages()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$languages(Ljava/lang/String;)V

    .line 1824
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$country()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$country(Ljava/lang/String;)V

    .line 1825
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$latitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$latitude(D)V

    .line 1826
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$longitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$longitude(D)V

    .line 1828
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$homePhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$homePhone(Ljava/lang/String;)V

    .line 1829
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$videoPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$videoPhone(Ljava/lang/String;)V

    .line 1830
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$generalInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$generalInfo(Ljava/lang/String;)V

    .line 1831
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$city()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$city(Ljava/lang/String;)V

    .line 1832
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$studyPublication()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$studyPublication(Ljava/lang/String;)V

    .line 1833
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$whereToContinue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$whereToContinue(Ljava/lang/String;)V

    .line 1834
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$timeForRV()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1835
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$timeForRV()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$timeForRV(Ljava/util/Date;)V

    .line 1837
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$timeForRV()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$timeForRV(Ljava/util/Date;)V

    goto :goto_1

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$timeForRV(Ljava/util/Date;)V

    .line 1841
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$date()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$date(Ljava/util/Date;)V

    .line 1842
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$priority()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$priority(I)V

    .line 1843
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$bestVisitTime()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$bestVisitTime(I)V

    .line 1844
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$bIsFromImportTerritory:Z

    if-eqz v0, :cond_2

    .line 1845
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setFavorite(Z)V

    goto :goto_2

    .line 1847
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$personType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$personType(I)V

    .line 1849
    :goto_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$isHidden()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isHidden(Z)V

    .line 1850
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$isPinnedToFront()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isPinnedToFront(Z)V

    .line 1851
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$isInterested()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$isInterested(Z)V

    .line 1852
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$lastTriedTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$lastTriedTime(Ljava/util/Date;)V

    .line 1854
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1855
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1856
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    new-instance v1, Lio/realm/RealmList;

    invoke-direct {v1}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$magazineList(Lio/realm/RealmList;)V

    .line 1857
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 1858
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 1860
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$magazineList()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1861
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$magazineList(Lio/realm/RealmList;)V

    .line 1864
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1865
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1866
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    new-instance v1, Lio/realm/RealmList;

    invoke-direct {v1}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$customTags(Lio/realm/RealmList;)V

    .line 1867
    :cond_6
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 1868
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 1870
    :cond_7
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1871
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$48;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$customTags()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    :cond_8
    :goto_4
    return-void
.end method
