.class Lcom/lostpixels/fieldservice/internal/ministry/Visit$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Visit;->delete()V
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

    .line 1010
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$22;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$22;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$22;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$22;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    return-void

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Visit$22;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->realmGet$visitTypeList()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    :cond_1
    return-void
.end method
