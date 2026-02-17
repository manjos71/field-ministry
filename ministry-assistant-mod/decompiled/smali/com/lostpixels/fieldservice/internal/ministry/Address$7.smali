.class Lcom/lostpixels/fieldservice/internal/ministry/Address$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Address;->removeVisit(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

.field final synthetic val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$7;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {v0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$7;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static {v0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 269
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$7;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->delete()V

    .line 270
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->realmGet$visitsList()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$7;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Address$7;->val$visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static {v0}, Lio/realm/RealmObject;->deleteFromRealm(Lio/realm/RealmModel;)V

    return-void
.end method
