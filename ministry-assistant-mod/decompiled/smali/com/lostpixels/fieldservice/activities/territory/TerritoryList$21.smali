.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask$CurrentCityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updateAllPositionsFromAddress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V
    .locals 0

    .line 2918
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGotCurrentCityComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 2921
    new-instance v6, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {v6, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c008c

    .line 2922
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 2923
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v1, 0x7f120166

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902a2

    .line 2925
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    const v0, 0x7f09016f

    .line 2926
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/CheckBox;

    .line 2927
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v1, 0x7f12039b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 2928
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2930
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/map/PositionReceiver;->getLastKnownLocation(Landroid/content/Context;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2933
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getInstance()Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;

    move-result-object v7

    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iget-wide v9, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v11, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper;->getFromLocation(Landroid/content/Context;DDI)Ljava/util/List;

    move-result-object p1

    .line 2936
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2937
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/utils/map/GeoCoderWrapper$GeocoderAddress;->city:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const p1, 0x7f0900f5

    .line 2943
    invoke-virtual {v6, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 2944
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Landroid/widget/CheckBox;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3081
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method
