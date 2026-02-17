.class Lcom/lostpixels/fieldservice/internal/ministry/Territory$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Territory;->updateAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field final synthetic val$a:Lcom/lostpixels/fieldservice/internal/ministry/Address;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$16;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$16;->val$a:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 6

    .line 800
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$16;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 801
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 802
    iget-object v5, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$16;->val$a:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isEqualID(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 803
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$16;->val$a:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v2, v4, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->updateAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_1

    :cond_3
    if-eqz v1, :cond_0

    :cond_4
    return-void
.end method
