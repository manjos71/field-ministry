.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeScripture(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$iIndex:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;I)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$14;->val$iIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 1001
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$scriptures()Lio/realm/RealmList;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$14;->val$iIndex:I

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->deleteFromRealm(I)V

    .line 1002
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$14;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$mScripturesDate(Ljava/util/Date;)V

    return-void
.end method
