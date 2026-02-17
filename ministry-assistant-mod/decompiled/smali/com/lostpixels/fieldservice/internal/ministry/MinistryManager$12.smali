.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addScriptureIfNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$index:I

.field final synthetic val$sortScriptures:Z

.field final synthetic val$verse:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 0

    .line 960
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$verse:Ljava/lang/String;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$index:I

    iput-object p5, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$content:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$sortScriptures:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 5

    .line 963
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$verse:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 965
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    .line 966
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$verse()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$verse:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 973
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$verse:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeFromList(Ljava/lang/String;I)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save(Landroid/content/Context;)Z

    .line 974
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$index:I

    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$verse:Ljava/lang/String;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$content:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/Scripture;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 976
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$content:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmSet$content(Ljava/lang/String;)V

    .line 979
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$mScripturesDate(Ljava/util/Date;)V

    .line 980
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->val$sortScriptures:Z

    if-eqz v0, :cond_3

    .line 981
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$12;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->-$$Nest$msortScriptures(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V

    :cond_3
    return-void
.end method
