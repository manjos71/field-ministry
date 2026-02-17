.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->merge(Landroid/content/Context;Ljava/util/Collection;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$realm:Lio/realm/Realm;

.field final synthetic val$rhsPersons:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;Ljava/util/Collection;Landroid/content/Context;)V
    .locals 0

    .line 1575
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;->val$realm:Lio/realm/Realm;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;->val$rhsPersons:Ljava/util/Collection;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 6

    .line 1578
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;->val$realm:Lio/realm/Realm;

    const-class v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 1580
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;->val$rhsPersons:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1582
    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v5, 0x0

    .line 1583
    invoke-virtual {v4, v2, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->merge(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1590
    :cond_1
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;->val$realm:Lio/realm/Realm;

    invoke-virtual {v3, v4, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addPerson(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)J

    .line 1591
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Lcom/lostpixels/fieldservice/internal/ministry/Person;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    .line 1594
    :goto_1
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addSuburbIfNew(Landroid/content/Context;Ljava/lang/String;)V

    .line 1595
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$29;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addCityIfNew(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
