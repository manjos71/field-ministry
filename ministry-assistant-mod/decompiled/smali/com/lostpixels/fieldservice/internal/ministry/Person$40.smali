.class Lcom/lostpixels/fieldservice/internal/ministry/Person$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Person;->setInfo(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field final synthetic val$info:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;Ljava/util/List;)V
    .locals 0

    .line 1470
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$40;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$40;->val$info:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 1473
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$40;->val$info:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1474
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$40;->val$info:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x96

    if-le v0, v1, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$40;->val$info:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$40;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$40;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_1

    .line 1482
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$40;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 1483
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$40;->val$info:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1484
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$40;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmGet$visitInfoList()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$40;->val$info:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1485
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$40;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$date(Ljava/util/Date;)V

    return-void
.end method
