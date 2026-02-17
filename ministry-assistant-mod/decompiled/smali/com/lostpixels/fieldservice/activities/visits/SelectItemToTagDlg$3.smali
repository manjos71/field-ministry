.class Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$3;
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

    .line 276
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    const p1, 0x7f090054

    .line 278
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p3, 0x7f090002

    .line 279
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const p4, 0x7f090060

    .line 280
    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 281
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-static {p4}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p4

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 282
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 283
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 284
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->-$$Nest$fgetmPosition(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 285
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long v0, p2, p4

    if-eqz v0, :cond_1

    .line 286
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->access$200(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;

    move-result-object p2

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->access$100(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;

    move-result-object p3

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide p4

    invoke-virtual {p2, p3, p4, p5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 288
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->-$$Nest$fgetmPosition(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 290
    :cond_0
    invoke-static {p1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 291
    new-instance p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$3$1;

    invoke-direct {p2, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$3$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$3;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    invoke-static {p2}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    .line 300
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 301
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$3;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
