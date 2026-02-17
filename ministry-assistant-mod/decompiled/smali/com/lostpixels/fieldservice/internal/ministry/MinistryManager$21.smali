.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$realm:Lio/realm/Realm;

.field final synthetic val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;Lio/realm/Realm;)V
    .locals 0

    .line 1116
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;->val$realm:Lio/realm/Realm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 1119
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lio/realm/RealmObject;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1121
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->delete()V

    .line 1122
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->deleteItem(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 1123
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Lio/realm/RealmObject;->deleteFromRealm(Lio/realm/RealmModel;)V

    .line 1124
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$21;->val$realm:Lio/realm/Realm;

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->-$$Nest$mcleanUpPersons(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lio/realm/Realm;)V

    return-void
.end method
