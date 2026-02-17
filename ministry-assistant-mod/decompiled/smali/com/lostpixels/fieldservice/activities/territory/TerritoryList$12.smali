.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

.field final synthetic val$copyVisit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 1472
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$12;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$12;->val$copyVisit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 1475
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$12;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->access$1100(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$12;->val$copyVisit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v1, v2}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    return-void
.end method
