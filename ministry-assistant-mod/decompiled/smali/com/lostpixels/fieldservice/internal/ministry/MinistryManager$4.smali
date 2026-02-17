.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeSuburbNoSync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/lang/String;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$4;->val$string:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    const/4 v0, 0x0

    .line 811
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 812
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$4;->val$string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$suburbs()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->deleteFromRealm(I)V

    .line 814
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$4;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$mSuburbDate(Ljava/util/Date;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
