.class Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->addPublication(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$eType:I

.field final synthetic val$publicationItem:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$publicationItem:Ljava/lang/String;

    iput p3, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$eType:I

    iput-object p4, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$publicationItem:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 319
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 323
    iget v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$eType:I

    if-eqz v1, :cond_14

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 468
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    const/16 v2, 0xe

    .line 478
    invoke-virtual {v1, v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Ljava/lang/String;I)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save(Landroid/content/Context;)Z

    .line 479
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$msort(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Ljava/util/List;)V

    .line 484
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 485
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 438
    :cond_4
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 439
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_0

    .line 448
    :cond_6
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    const/16 v2, 0xb

    .line 449
    invoke-virtual {v1, v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Ljava/lang/String;I)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save(Landroid/content/Context;)Z

    .line 450
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$msort(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Ljava/util/List;)V

    .line 455
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 456
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_0

    .line 410
    :cond_8
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 411
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_0

    .line 420
    :cond_a
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    const/16 v2, 0xd

    .line 421
    invoke-virtual {v1, v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Ljava/lang/String;I)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save(Landroid/content/Context;)Z

    .line 422
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$msort(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Ljava/util/List;)V

    .line 427
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 428
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto/16 :goto_0

    .line 382
    :cond_c
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 383
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_0

    .line 392
    :cond_e
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    const/16 v2, 0xc

    .line 393
    invoke-virtual {v1, v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Ljava/lang/String;I)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save(Landroid/content/Context;)Z

    .line 394
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$msort(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Ljava/util/List;)V

    .line 399
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 400
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto/16 :goto_0

    .line 353
    :cond_10
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 354
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_0

    .line 363
    :cond_12
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    const/16 v2, 0xa

    .line 364
    invoke-virtual {v1, v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Ljava/lang/String;I)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save(Landroid/content/Context;)Z

    .line 365
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$msort(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Ljava/util/List;)V

    .line 370
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 371
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_0

    .line 325
    :cond_14
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 326
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_0

    .line 335
    :cond_16
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Ljava/lang/String;I)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->val$context:Landroid/content/Context;

    .line 336
    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save(Landroid/content/Context;)Z

    .line 337
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$msort(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Ljava/util/List;)V

    .line 342
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 343
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 497
    :cond_18
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$2;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$date(Ljava/util/Date;)V

    :cond_19
    return-void
.end method
