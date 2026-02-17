.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->merge(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$realm:Lio/realm/Realm;

.field final synthetic val$rhsOffline:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;Landroid/content/Context;)V
    .locals 0

    .line 1337
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$rhsOffline:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$realm:Lio/realm/Realm;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 6

    .line 1343
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mSuburbDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$rhsOffline:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mSuburbDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mSuburbDate()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$rhsOffline:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mSuburbDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1344
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    new-instance v1, Lio/realm/RealmList;

    invoke-direct {v1}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$suburbs(Lio/realm/RealmList;)V

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 1347
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$rhsOffline:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1348
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$mSuburbDate(Ljava/util/Date;)V

    .line 1352
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mCitiesDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$rhsOffline:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mCitiesDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mCitiesDate()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$rhsOffline:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mCitiesDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1353
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1354
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    new-instance v1, Lio/realm/RealmList;

    invoke-direct {v1}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$cities(Lio/realm/RealmList;)V

    .line 1355
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 1356
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$rhsOffline:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1357
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$mCitiesDate(Ljava/util/Date;)V

    .line 1361
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mScripturesDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$rhsOffline:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mScripturesDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mScripturesDate()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$rhsOffline:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$mScripturesDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$rhsOffline:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1362
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 1363
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$rhsOffline:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1364
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$mScripturesDate(Ljava/util/Date;)V

    .line 1369
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    .line 1370
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$rhsOffline:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->-$$Nest$fgetunmanagedPersonList(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1372
    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v5, 0x0

    .line 1373
    invoke-virtual {v4, v2, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->merge(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 1380
    :cond_6
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3, v4, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addPerson(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)J

    .line 1383
    :goto_1
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addSuburbIfNew(Landroid/content/Context;Ljava/lang/String;)V

    .line 1384
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addCityIfNew(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1387
    :cond_7
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$realm:Lio/realm/Realm;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    .line 1388
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$rhsOffline:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->unmanagedTerritoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 1389
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addSuburbIfNew(Landroid/content/Context;Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 1393
    iget-object v5, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->merge(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    .line 1399
    :cond_9
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$26;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3, v4, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    goto :goto_2

    :cond_a
    return-void
.end method
