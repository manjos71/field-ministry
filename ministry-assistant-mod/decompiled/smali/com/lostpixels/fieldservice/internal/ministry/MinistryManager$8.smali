.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeCities(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iIndex:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;ILandroid/content/Context;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;->val$iIndex:I

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 882
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;->val$iIndex:I

    if-le v0, v1, :cond_0

    .line 883
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v1

    iget v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;->val$iIndex:I

    invoke-virtual {v1, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->deleteString(Ljava/lang/String;I)V

    .line 884
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;->val$iIndex:I

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->deleteFromRealm(I)V

    .line 885
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$8;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$mCitiesDate(Ljava/util/Date;)V

    :cond_0
    return-void
.end method
