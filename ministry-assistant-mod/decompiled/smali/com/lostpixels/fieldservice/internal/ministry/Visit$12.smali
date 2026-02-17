.class Lcom/lostpixels/fieldservice/internal/ministry/Visit$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Visit;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$12;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 815
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$12;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setHouseHolder(J)V

    .line 816
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$12;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setVisitInterested(Z)V

    .line 817
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$12;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 818
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$12;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$numVisits(I)V

    .line 819
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$12;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 820
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$12;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmSet$comment(Ljava/lang/String;)V

    return-void
.end method
