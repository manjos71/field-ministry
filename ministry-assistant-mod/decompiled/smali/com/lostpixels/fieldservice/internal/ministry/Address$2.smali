.class Lcom/lostpixels/fieldservice/internal/ministry/Address$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Address;->setVisits(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;Ljava/util/List;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$2;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$2;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$2;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$2;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$2;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$2;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$2;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->addVisits(Ljava/util/List;)V

    .line 218
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$2;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 219
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$2;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setParentRef(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto :goto_1

    :cond_1
    return-void
.end method
