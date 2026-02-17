.class Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->deletePublication(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$eType:I

.field final synthetic val$publication:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;ILjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$eType:I

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$publication:Ljava/lang/String;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 520
    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$eType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$publication:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$mdeletePublication(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lio/realm/RealmList;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$publication:Ljava/lang/String;

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->deleteString(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$publication:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$mdeletePublication(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lio/realm/RealmList;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$publication:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->deleteString(Ljava/lang/String;I)V

    goto :goto_0

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$publication:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$mdeletePublication(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lio/realm/RealmList;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$publication:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->deleteString(Ljava/lang/String;I)V

    goto :goto_0

    .line 526
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$publication:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$mdeletePublication(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lio/realm/RealmList;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$publication:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->deleteString(Ljava/lang/String;I)V

    goto :goto_0

    .line 534
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$publication:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$mdeletePublication(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lio/realm/RealmList;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$publication:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->deleteString(Ljava/lang/String;I)V

    goto :goto_0

    .line 522
    :cond_5
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$publication:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->-$$Nest$mdeletePublication(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;Lio/realm/RealmList;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->val$publication:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->deleteString(Ljava/lang/String;I)V

    .line 548
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$3;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method
