.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;)V
    .locals 0

    .line 4312
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 2

    .line 4315
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2$1;->this$2:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->-$$Nest$fgetmTemporaryTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/ImportFlag;

    invoke-virtual {p1, v0, v1}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    return-void
.end method
