.class Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Territory;->mergeStreets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 7

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 614
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/RealmList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    .line 615
    :goto_1
    iget-object v5, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 616
    iget-object v5, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 617
    iget-object v5, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddresses(Ljava/util/List;)V

    .line 618
    iget-object v5, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 619
    iget-object v5, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->delete()V

    .line 620
    iget-object v5, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/realm/RealmList;->deleteFromRealm(I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_1
    move v2, v3

    goto/16 :goto_0

    .line 626
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 627
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 628
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->delete()V

    .line 629
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->deleteFromRealm(I)V

    goto :goto_4

    .line 630
    :cond_3
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 631
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->delete()V

    .line 632
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/realm/RealmList;->deleteFromRealm(I)V

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 636
    :cond_5
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$shouldSort()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 637
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumComparator;

    invoke-direct {v2}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 638
    :cond_6
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 640
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 641
    throw v0
.end method
