.class Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Territory;->merge(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$realm:Lio/realm/Realm;

.field final synthetic val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;Lio/realm/Realm;)V
    .locals 0

    .line 957
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$realm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 5

    .line 961
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 963
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 965
    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->merge(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Street;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 973
    :cond_1
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$realm:Lio/realm/Realm;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 974
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Lcom/lostpixels/fieldservice/internal/ministry/Street;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    goto :goto_0

    .line 980
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$lastUpdated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$lastUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 981
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$lastUpdated()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$lastUpdated(Ljava/util/Date;)V

    .line 982
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$name(Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$region()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$region(Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$city()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$city(Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$territoryCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$territoryCardPath(Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$shouldSort()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$shouldSort(Z)V

    .line 988
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$disableOldTerrMsg()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$disableOldTerrMsg(Z)V

    .line 989
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$oldTerritoryDlgDisplayed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$oldTerritoryDlgDisplayed(Z)V

    .line 990
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$isHidden(Z)V

    .line 991
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$isReturned()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$isReturned(Z)V

    .line 993
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$shouldSort()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 994
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumComparator;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 996
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$dateCreated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$dateCreated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 997
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$24;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$dateCreated()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$dateCreated(Ljava/util/Date;)V

    :cond_5
    return-void
.end method
