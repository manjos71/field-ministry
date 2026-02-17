.class Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 206
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz p1, :cond_0

    .line 208
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->-$$Nest$fgetmPosition(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 209
    :cond_0
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 210
    new-instance p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2$1;

    invoke-direct {p2, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    invoke-static {p2}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    .line 217
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 218
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
