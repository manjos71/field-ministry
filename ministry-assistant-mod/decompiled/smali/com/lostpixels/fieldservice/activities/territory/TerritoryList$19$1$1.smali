.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;->onAddPublication(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;

.field final synthetic val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field final synthetic val$personInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;Lcom/lostpixels/fieldservice/internal/ministry/Person;Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;)V
    .locals 0

    .line 2439
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1$1;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1$1;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1$1;->val$personInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 2442
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1$1;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19$1$1;->val$personInfo:Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method
