.class Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->deletePublicationNoSync(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

.field final synthetic val$eType:I

.field final synthetic val$publication:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/report/PublicationManager;ILjava/lang/String;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->val$eType:I

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->val$publication:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 558
    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->val$eType:I

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

    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrMovies()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->val$publication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    return-void

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrOther()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->val$publication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    return-void

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrVideos()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->val$publication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    return-void

    .line 563
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrTracts()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->val$publication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    return-void

    .line 569
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBroschures()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->val$publication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    return-void

    .line 560
    :cond_5
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/report/PublicationManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/PublicationManager;->realmGet$marrBooks()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/report/PublicationManager$4;->val$publication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
