.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->setCities(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$cities:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/util/ArrayList;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$7;->val$cities:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 870
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->deleteAllFromRealm()Z

    .line 871
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->clear()V

    .line 872
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$7;->val$cities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 873
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$NameCompare;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$7;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$NameCompare;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager-IA;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
