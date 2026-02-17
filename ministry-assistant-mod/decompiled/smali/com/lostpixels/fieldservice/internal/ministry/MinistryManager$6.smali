.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addSuburbIfNew(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$suburb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;->val$suburb:Ljava/lang/String;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 838
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;->val$suburb:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 840
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;->val$suburb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 841
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 842
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 849
    :cond_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;->val$suburb:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Ljava/lang/String;I)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save(Landroid/content/Context;)Z

    .line 850
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 851
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$mSuburbDate(Ljava/util/Date;)V

    .line 852
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$NameCompare;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$6;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$NameCompare;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager-IA;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method
