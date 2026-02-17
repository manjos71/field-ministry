.class Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->val$realm:Lio/realm/Realm;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AttachRVToTerritoryDlg;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    const/4 v2, 0x0

    new-array v2, v2, [Lio/realm/ImportFlag;

    invoke-virtual {v1, v0, v2}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    return-void
.end method
