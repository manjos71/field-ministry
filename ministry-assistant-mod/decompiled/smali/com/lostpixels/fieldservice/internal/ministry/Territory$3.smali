.class Lcom/lostpixels/fieldservice/internal/ministry/Territory$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setShouldSort(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field final synthetic val$mbShouldSort:Z


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Z)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$3;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$3;->val$mbShouldSort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 279
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$3;->val$mbShouldSort:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$3;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$shouldSort()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$3;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$streets()Lio/realm/RealmList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumComparator;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/utils/comparators/AlphanumComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$3;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmGet$shouldSort()Z

    move-result v0

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$3;->val$mbShouldSort:Z

    if-eq v0, v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$3;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setLastUpdated()V

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$3;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Territory$3;->val$mbShouldSort:Z

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->realmSet$shouldSort(Z)V

    return-void
.end method
