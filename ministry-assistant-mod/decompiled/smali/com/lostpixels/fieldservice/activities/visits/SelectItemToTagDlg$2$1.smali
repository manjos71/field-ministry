.class Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2;

.field final synthetic val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2$1;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->access$000(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2$1;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Lio/realm/ImportFlag;

    invoke-virtual {v0, v1, v2}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    return-void
.end method
