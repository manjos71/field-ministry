.class Lcom/lostpixels/fieldservice/internal/ministry/Territory$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Territory;->removeStreet(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field final synthetic val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$13;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$13;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$13;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$13;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 762
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 763
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$13;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->delete()V

    .line 764
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$13;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$13;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->remove(Ljava/lang/Object;)Z

    .line 765
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$13;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v0}, Lio/realm/RealmObject;->deleteFromRealm(Lio/realm/RealmModel;)V

    return-void
.end method
