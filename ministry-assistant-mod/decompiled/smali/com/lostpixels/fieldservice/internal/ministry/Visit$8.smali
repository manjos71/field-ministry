.class Lcom/lostpixels/fieldservice/internal/ministry/Visit$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Visit;->updateVisitHistory(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

.field final synthetic val$date:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/util/Date;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$8;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$8;->val$date:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 744
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$8;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$8;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$8;->val$date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/VisitTypeItem;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method
