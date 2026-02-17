.class Lcom/lostpixels/fieldservice/internal/ministry/Territory$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Territory;->updateStreet(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
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

    .line 782
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$15;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$15;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 6

    const/4 v0, 0x0

    .line 785
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$15;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 786
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$15;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$15;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getId()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 787
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$15;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$15;->val$street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v1, v0, v2}, Lio/realm/RealmList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
