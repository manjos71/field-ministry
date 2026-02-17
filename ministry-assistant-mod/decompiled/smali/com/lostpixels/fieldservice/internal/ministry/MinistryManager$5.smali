.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->sortSuburbs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 826
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$NameCompare;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$5;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$NameCompare;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager-IA;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method
