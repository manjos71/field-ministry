.class Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addCityIfNew(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

.field final synthetic val$cityTrim:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Ljava/lang/String;)V
    .locals 0

    .line 934
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$11;->val$cityTrim:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 4

    .line 937
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$11;->val$cityTrim:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 938
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmSet$mCitiesDate(Ljava/util/Date;)V

    .line 939
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->realmGet$cities()Lio/realm/RealmList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$NameCompare;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$11;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager$NameCompare;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager-IA;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
