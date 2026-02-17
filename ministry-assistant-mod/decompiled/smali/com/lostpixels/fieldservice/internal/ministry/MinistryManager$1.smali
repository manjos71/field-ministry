.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->cleanUpPersons(Lio/realm/Realm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$lstUnused:Ljava/util/ArrayList;

.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/util/ArrayList;Lio/realm/Realm;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$1;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$1;->val$lstUnused:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$1;->val$realm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 6

    .line 351
    const-string v0, "1.131"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$1;->val$lstUnused:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Long;

    .line 354
    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$1;->val$realm:Lio/realm/Realm;

    const-class v5, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v4, v5}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v3

    .line 355
    invoke-virtual {v3}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v3, :cond_0

    .line 356
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v4

    if-nez v4, :cond_0

    .line 357
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->delete()V

    .line 359
    invoke-static {v3}, Lio/realm/RealmObject;->deleteFromRealm(Lio/realm/RealmModel;)V

    goto :goto_0

    :cond_1
    return-void
.end method
