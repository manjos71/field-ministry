.class Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Territory;->importMerge(Landroid/content/Context;Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Z)Z
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

    .line 920
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->val$realm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 5

    .line 923
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

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

    .line 925
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

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

    .line 927
    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->merge(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Street;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 935
    :cond_1
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->val$realm:Lio/realm/Realm;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 936
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Lcom/lostpixels/fieldservice/internal/ministry/Street;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    goto :goto_0

    .line 940
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$shouldSort()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 941
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumComparator;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 944
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$lastUpdated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$lastUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 945
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$23;->val$rhs:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$lastUpdated()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$lastUpdated(Ljava/util/Date;)V

    :cond_4
    return-void
.end method
