.class public Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$FloorAdapter;
    }
.end annotation


# instance fields
.field private bUserEvent:Z

.field private mFlinger:Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;

.field private mFloorItems:[Landroid/widget/EditText;

.field private mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

.field private mPreferredAddress:Ljava/lang/String;

.field private mPreferredStreet:Ljava/lang/String;

.field private mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field private mTerritoryID:J

.field private mVisitID:J

.field private medtNumber:Landroid/widget/EditText;

.field private medtStreet:Landroid/widget/AutoCompleteTextView;

.field private miCurrentFloor:I

.field private mlstStreets:Ljava/util/ArrayList;

.field private mtxtFloor:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetbUserEvent(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->bUserEvent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlinger(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFlinger:Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFloorItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)[Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFloorMap(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtNumber(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->medtNumber:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmtxtFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mtxtFloor:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbUserEvent(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->bUserEvent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmiCurrentFloor(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$maddBuilding(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->addBuilding()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetApartmentNumbers(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->getApartmentNumbers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFloorNumbers(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->getFloorNumbers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetFloorNames(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->setFloorNames()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetResult(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->setResult()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;-><init>()V

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->bUserEvent:Z

    return-void
.end method

.method private addBuilding()V
    .locals 14

    .line 779
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->add(ILjava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->add(ILjava/lang/String;)V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "\n"

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 785
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 786
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    if-eqz v7, :cond_2

    .line 787
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 794
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->setResult()V

    .line 795
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 799
    :cond_4
    iget-wide v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mVisitID:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_8

    .line 800
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;-><init>()V

    .line 801
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->medtStreet:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setStreetName(Ljava/lang/String;)V

    .line 802
    new-instance v2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->medtNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;-><init>(Ljava/lang/String;I)V

    .line 803
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 805
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->getMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 806
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 807
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 808
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 809
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 810
    invoke-virtual {v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 811
    array-length v9, v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_5

    aget-object v11, v7, v10

    .line 812
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 813
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 814
    new-instance v12, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v12, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 815
    invoke-virtual {v12, v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v12, v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setFloor(I)V

    .line 817
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 822
    :cond_7
    invoke-virtual {v2, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->setVisits(Ljava/util/List;)V

    .line 823
    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 824
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    goto/16 :goto_6

    .line 826
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 829
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 830
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 831
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 832
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mVisitID:J

    cmp-long v13, v9, v11

    if-nez v13, :cond_b

    .line 833
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v4

    goto :goto_3

    :cond_c
    if-eqz v4, :cond_12

    .line 840
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    const-class v6, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v2, v6}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    iget-wide v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mVisitID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v2, v7, v6}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz v2, :cond_d

    .line 843
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    .line 845
    :cond_d
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 846
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 847
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 848
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 849
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 850
    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 851
    array-length v8, v6

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_e

    aget-object v10, v6, v9

    .line 852
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 853
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_f

    .line 854
    new-instance v11, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-direct {v11, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 855
    invoke-virtual {v11, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v11, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setFloor(I)V

    .line 857
    invoke-virtual {v11, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 858
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 864
    :cond_10
    :goto_5
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 865
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v4, p0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->removeVisit(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    goto :goto_5

    .line 867
    :cond_11
    invoke-virtual {v4, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->setVisits(Ljava/util/List;)V

    .line 868
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->updateIsBuilding()V

    .line 871
    :cond_12
    :goto_6
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->setResult()V

    .line 872
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getApartmentNumbers()Ljava/util/List;
    .locals 3

    .line 896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    .line 898
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getFloorNumbers()Ljava/util/List;
    .locals 4

    .line 883
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 884
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->addFloorNumber(Landroid/content/Context;)I

    move-result v1

    const/16 v2, -0x64

    :goto_0
    const/16 v3, 0xc8

    if-gt v2, v3, :cond_4

    const/4 v3, 0x1

    if-nez v2, :cond_0

    if-eq v1, v3, :cond_3

    :cond_0
    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    goto :goto_1

    .line 888
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private setFloorNames()V
    .locals 5

    .line 680
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->contains(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v3, ""

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    iget v4, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    iget v4, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    invoke-virtual {v1, v4}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->contains(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 693
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    iget v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setResult()V
    .locals 3

    .line 876
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 877
    const-string v1, "Territory"

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 878
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 160
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c003c

    .line 162
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const-wide/16 v0, -0x1

    .line 163
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritoryID:J

    .line 164
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mVisitID:J

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 166
    const-string v3, "VisitID"

    const-string v4, "Streets"

    const-string v5, "PrefAddress"

    const-string v6, "PrefStreet"

    const-string v7, "TerritoryID"

    const-string v8, "Territory"

    if-eqz p1, :cond_5

    .line 167
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v2, :cond_0

    invoke-virtual {p1, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v2, :cond_1

    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritoryID:J

    .line 171
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v2

    iget-wide v7, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritoryID:J

    invoke-virtual {v2, v7, v8}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v2

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 173
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mVisitID:J

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredStreet:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredStreet:Ljava/lang/String;

    .line 177
    :cond_3
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredAddress:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredAddress:Ljava/lang/String;

    .line 179
    :cond_4
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mlstStreets:Ljava/util/ArrayList;

    if-nez v2, :cond_a

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 180
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mlstStreets:Ljava/util/ArrayList;

    goto :goto_0

    .line 182
    :cond_5
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v9, :cond_6

    invoke-virtual {v2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 183
    invoke-virtual {v2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object v8, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 185
    :cond_6
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mVisitID:J

    .line 186
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v3, :cond_7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 187
    invoke-virtual {v2, v7, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritoryID:J

    .line 188
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    iget-wide v7, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritoryID:J

    invoke-virtual {v3, v7, v8}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v3

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 190
    :cond_7
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredStreet:Ljava/lang/String;

    if-nez v3, :cond_8

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 191
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredStreet:Ljava/lang/String;

    .line 192
    :cond_8
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredAddress:Ljava/lang/String;

    if-nez v3, :cond_9

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 193
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredAddress:Ljava/lang/String;

    .line 194
    :cond_9
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mlstStreets:Ljava/util/ArrayList;

    if-nez v3, :cond_a

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 195
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mlstStreets:Ljava/util/ArrayList;

    :cond_a
    :goto_0
    const v2, 0x7f090202

    .line 199
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->medtStreet:Landroid/widget/AutoCompleteTextView;

    const v2, 0x7f0901fb

    .line 200
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->medtNumber:Landroid/widget/EditText;

    const v2, 0x7f0900f7

    .line 202
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v3, 0x7f0900f1

    .line 203
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v4, 0x7f0900eb

    .line 204
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f090104

    .line 205
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    const/4 v6, 0x3

    .line 206
    new-array v6, v6, [Landroid/widget/EditText;

    iput-object v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    const v7, 0x7f0901f1

    .line 207
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 208
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    const v7, 0x7f0901f2

    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    .line 209
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    const v7, 0x7f0901f3

    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    const v6, 0x7f09065a

    .line 210
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;

    iput-object v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFlinger:Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;

    const v6, 0x7f090320

    .line 211
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mtxtFloor:Landroid/widget/TextView;

    const v6, 0x7f0900e6

    .line 213
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 214
    new-instance v7, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$1;

    invoke-direct {v7, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iput-boolean v8, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->bUserEvent:Z

    .line 223
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->medtStreet:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    if-eqz p1, :cond_b

    .line 226
    const-string v6, "Floor"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    .line 227
    const-string v6, "FloorMap"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    goto :goto_1

    .line 229
    :cond_b
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->addFloorNumber(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    .line 230
    new-instance p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    .line 233
    :goto_1
    iget p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v8

    .line 234
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mtxtFloor:Landroid/widget/TextView;

    const v7, 0x7f12026d

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->setFloorNames()V

    .line 239
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mlstStreets:Ljava/util/ArrayList;

    if-eqz p1, :cond_c

    .line 240
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v6, 0x109000a

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mlstStreets:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 242
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->medtStreet:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v6, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    :cond_c
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredStreet:Ljava/lang/String;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    .line 246
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->medtStreet:Landroid/widget/AutoCompleteTextView;

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredStreet:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_d
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredAddress:Ljava/lang/String;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    .line 249
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->medtNumber:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredAddress:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredStreet:Ljava/lang/String;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    iget-wide v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mVisitID:J

    cmp-long p1, v6, v0

    if-eqz p1, :cond_e

    .line 251
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->medtStreet:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 252
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->medtStreet:Landroid/widget/AutoCompleteTextView;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 253
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->medtNumber:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 254
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    aget-object p1, p1, v9

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 258
    :cond_e
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->medtNumber:Landroid/widget/EditText;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 288
    new-instance p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$3;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    new-instance p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$4;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    new-instance p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$5;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V

    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    new-instance p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$6;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$6;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V

    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFlinger:Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;

    invoke-virtual {p1, v9}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->setIgnoreChildFocusRequests(Z)V

    .line 580
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFlinger:Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$7;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V

    invoke-virtual {p1, v0, v8}, Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger;->setOnScreenChangeListener(Lcom/lostpixels/fieldservice/ui/flinger/ViewFlinger$OnScreenChangeListener;Z)V

    .line 675
    iput-boolean v9, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->bUserEvent:Z

    .line 676
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->medtStreet:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v9}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 702
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->add(ILjava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->add(ILjava/lang/String;)V

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 708
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 709
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    if-eqz v7, :cond_2

    .line 710
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 718
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1204bd

    .line 719
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12055b

    .line 720
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$9;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$9;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V

    .line 719
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12045b

    .line 724
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$8;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$8;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;)V

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 730
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 731
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v3

    .line 735
    :cond_4
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->setResult()V

    .line 737
    :cond_5
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 742
    const-string v0, "Floor"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    .line 743
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_0

    const-string v0, "Territory"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_1

    const-string v0, "TerritoryID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritoryID:J

    .line 747
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritoryID:J

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredStreet:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 750
    const-string v0, "PrefStreet"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredStreet:Ljava/lang/String;

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredAddress:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 752
    const-string v0, "PrefAddress"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredAddress:Ljava/lang/String;

    .line 753
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mlstStreets:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 754
    const-string v0, "Streets"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mlstStreets:Ljava/util/ArrayList;

    .line 756
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 761
    const-string v0, "Floor"

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 763
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->miCurrentFloor:I

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorItems:[Landroid/widget/EditText;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;->add(ILjava/lang/String;)V

    .line 765
    iget-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritoryID:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 766
    const-string v0, "Territory"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 768
    :cond_0
    const-string v2, "TerritoryID"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 769
    :goto_0
    const-string v0, "VisitID"

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mVisitID:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 770
    const-string v0, "PrefStreet"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredStreet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v0, "PrefAddress"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mPreferredAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v0, "Streets"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mlstStreets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 773
    const-string v0, "FloorMap"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;->mFloorMap:Lcom/lostpixels/fieldservice/activities/territory/dialogs/FloorItemMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 774
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
