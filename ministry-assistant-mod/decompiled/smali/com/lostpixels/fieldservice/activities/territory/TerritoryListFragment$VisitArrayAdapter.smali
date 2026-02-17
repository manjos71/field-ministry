.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VisitArrayAdapter"
.end annotation


# instance fields
.field final bUseSeparator:Z

.field final context:Landroid/app/Activity;

.field final items:Ljava/util/ArrayList;

.field final miStreetIx:J

.field final mlayoutID:I

.field private final msBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;Landroid/app/Activity;ILjava/util/ArrayList;JZ)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    .line 825
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 822
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    .line 826
    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->items:Ljava/util/ArrayList;

    .line 827
    iput p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->mlayoutID:I

    .line 828
    iput-wide p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->miStreetIx:J

    .line 829
    iput-boolean p7, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->bUseSeparator:Z

    .line 830
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->context:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 844
    :cond_0
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->bUseSeparator:Z

    if-eqz v1, :cond_1

    .line 845
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 847
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I
    .locals 4

    .line 1118
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1121
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f080384

    return p1

    :cond_1
    const p1, 0x7f08013c

    return p1

    :cond_2
    const p1, 0x7f080172

    return p1

    :cond_3
    :goto_0
    const p1, 0x7f0801fd

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 875
    invoke-virtual/range {p0 .. p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 877
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 878
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c007b

    .line 879
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 880
    const-string v2, "Separator"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    return-object p2

    :cond_1
    if-nez p2, :cond_2

    .line 885
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;

    invoke-direct {v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;-><init>()V

    .line 886
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 887
    iget v6, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->mlayoutID:I

    invoke-virtual {v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f09052f

    .line 889
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    const v6, 0x7f0902d9

    .line 890
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strDate:Landroid/widget/TextView;

    const v6, 0x7f09066c

    .line 891
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    const v6, 0x7f09066a

    .line 892
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strAge:Landroid/widget/TextView;

    const v6, 0x7f090444

    .line 893
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strNumber:Landroid/widget/TextView;

    const v6, 0x7f09066f

    .line 894
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strVisitTimes:Landroid/widget/TextView;

    const v6, 0x7f09027e

    .line 895
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    const v6, 0x7f090298

    .line 896
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgVisitType:Landroid/widget/ImageView;

    const v6, 0x7f090283

    .line 897
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgMapPin:Landroid/widget/ImageView;

    const v6, 0x7f090275

    .line 898
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgBookmark:Landroid/widget/ImageView;

    const v6, 0x7f0901c6

    .line 899
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->divider:Landroid/view/View;

    const v6, 0x7f090285

    .line 900
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgMoreBtn:Landroid/widget/ImageView;

    const v6, 0x7f0901b0

    .line 901
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgDeleteBtn:Landroid/widget/ImageView;

    .line 902
    iget-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgMoreBtn:Landroid/widget/ImageView;

    new-instance v7, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter$1;

    invoke-direct {v7, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 917
    iget-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgDeleteBtn:Landroid/widget/ImageView;

    new-instance v7, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter$2;

    invoke-direct {v7, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0902ec

    .line 932
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 933
    iget-object v7, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgMoreBtn:Landroid/widget/ImageView;

    new-instance v8, Landroid/graphics/RectF;

    const v9, 0x3f4ccccd    # 0.8f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v6, v7, v8}, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->setupDelegate(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    .line 935
    iget-object v7, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgDeleteBtn:Landroid/widget/ImageView;

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v9, v10, v11, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v6, v7, v8}, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->setupDelegate(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    .line 938
    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 940
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;

    move-object/from16 v5, p2

    .line 942
    :goto_0
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 944
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetaddHandler(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    move-result-object v6

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetaddHandler(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;->isEditMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 945
    iget-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 946
    iget-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgMoreBtn:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 948
    :cond_3
    iget-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 949
    iget-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgMoreBtn:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    if-eqz v1, :cond_22

    .line 954
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-eqz v6, :cond_4

    .line 956
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    iget-object v12, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    iget-object v12, v12, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v3, v12, v10, v11}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v3

    .line 958
    :cond_4
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz v2, :cond_5

    .line 960
    iget-object v10, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgMapPin:Landroid/widget/ImageView;

    if-nez v10, :cond_6

    .line 961
    :cond_5
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 962
    :cond_6
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 963
    iget-object v10, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgMapPin:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 965
    :cond_7
    iget-object v10, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgMapPin:Landroid/widget/ImageView;

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 967
    :goto_2
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ", "

    if-eqz v10, :cond_b

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    goto/16 :goto_3

    .line 972
    :cond_8
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v10

    if-nez v10, :cond_9

    .line 973
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 974
    iget-object v10, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    if-eqz v3, :cond_a

    .line 979
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    .line 980
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    .line 982
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 986
    :cond_a
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_b
    :goto_3
    if-eqz v3, :cond_c

    .line 968
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    .line 969
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 971
    :cond_c
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    :cond_d
    :goto_4
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 990
    iget-object v12, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 991
    iget-object v12, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 993
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 994
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_e

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_e

    .line 995
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    :cond_e
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_f

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_f

    .line 997
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    :cond_f
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_12

    .line 1000
    iget-object v13, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    const v15, 0x7f120001

    invoke-virtual {v14, v15}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    iget-object v13, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    iget-object v13, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v4, :cond_10

    .line 1004
    iget-object v13, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    :cond_10
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1008
    iget-object v10, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    iget-object v10, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strNumber:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1011
    :cond_11
    iget-object v10, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strNumber:Landroid/widget/TextView;

    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    iget-object v10, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strNumber:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1015
    :cond_12
    iget-object v10, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strNumber:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1017
    :goto_5
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1019
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v10

    const/16 v11, 0x10

    const/16 v12, 0xc

    const/4 v13, 0x3

    if-eq v10, v13, :cond_14

    .line 1020
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v10

    const/16 v14, 0xa

    if-eq v10, v14, :cond_14

    .line 1021
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v10

    const/4 v14, 0x7

    if-eq v10, v14, :cond_14

    .line 1022
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v10

    if-eq v10, v8, :cond_14

    .line 1023
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v10

    const/16 v14, 0x11

    if-eq v10, v14, :cond_14

    .line 1024
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v10

    if-eqz v10, :cond_14

    .line 1025
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v10

    if-eq v10, v12, :cond_14

    .line 1026
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v10

    if-ne v10, v11, :cond_13

    goto :goto_6

    .line 1030
    :cond_13
    iget-object v10, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v11

    and-int/lit8 v11, v11, -0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1031
    iget-object v10, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strDate:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v11

    and-int/lit8 v11, v11, -0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_7

    .line 1027
    :cond_14
    :goto_6
    iget-object v10, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v14

    or-int/2addr v14, v11

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1028
    iget-object v10, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strDate:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v14

    or-int/2addr v11, v14

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1035
    :goto_7
    const-string v10, "\n"

    const-string v11, ""

    if-eqz v3, :cond_16

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v14

    if-eq v14, v7, :cond_15

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v7

    const/4 v14, 0x6

    if-ne v7, v14, :cond_16

    :cond_15
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_16

    .line 1036
    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v14

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetmDayFormat(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Ljava/text/SimpleDateFormat;

    move-result-object v10

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v10

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1040
    :cond_16
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v7

    const/4 v14, 0x5

    if-eq v7, v14, :cond_17

    .line 1041
    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v14

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetmDayFormat(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Ljava/text/SimpleDateFormat;

    move-result-object v10

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v10

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1046
    :cond_17
    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    :goto_8
    iget-object v7, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strDate:Landroid/widget/TextView;

    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->msBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz v6, :cond_1e

    if-eqz v3, :cond_1e

    .line 1052
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1053
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1054
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_18

    .line 1055
    iget-object v6, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1056
    :cond_18
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->hasVisitType()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1057
    iget-object v4, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v7

    invoke-static {v6, v7}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->visitTypeToText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1059
    :cond_19
    iget-object v4, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1061
    :cond_1a
    iget-object v4, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    :goto_9
    iget-object v4, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1064
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1065
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v4

    if-eq v4, v12, :cond_1b

    .line 1067
    iget-object v4, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strVisitTimes:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    iget-object v4, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strVisitTimes:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 1069
    :cond_1b
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v4

    if-eq v4, v12, :cond_1c

    .line 1070
    iget-object v4, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strVisitTimes:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    :cond_1c
    :goto_a
    iget-object v4, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strAge:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAge()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v4, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1073
    iget-object v4, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strAge:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1076
    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgBookmark:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    .line 1078
    :cond_1d
    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgBookmark:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d

    .line 1080
    :cond_1e
    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1081
    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strAge:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1082
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v3

    const/16 v6, 0x9

    if-eq v3, v6, :cond_1f

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v3

    if-eq v3, v4, :cond_1f

    .line 1083
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_20

    :cond_1f
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getNumberOfVisits()I

    move-result v3

    if-lez v3, :cond_20

    .line 1084
    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strVisitTimes:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getNumberOfVisits()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strVisitTimes:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 1087
    :cond_20
    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strVisitTimes:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    :goto_b
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getComment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 1089
    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 1091
    :cond_21
    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    :goto_c
    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgBookmark:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1095
    :goto_d
    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgVisitType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->getVisitType(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1097
    iget-wide v3, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->miStreetIx:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const v4, 0x7f090054

    invoke-virtual {v5, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1098
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v3

    .line 1099
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getId()J

    move-result-wide v6

    .line 1100
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v8

    .line 1101
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v3, 0x7f090002

    invoke-virtual {v5, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1102
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const v10, 0x7f090060

    invoke-virtual {v5, v10, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1104
    iget-object v1, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgMoreBtn:Landroid/widget/ImageView;

    iget-wide v11, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->miStreetIx:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v4, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1105
    iget-object v1, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgMoreBtn:Landroid/widget/ImageView;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1106
    iget-object v1, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgMoreBtn:Landroid/widget/ImageView;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1108
    iget-object v1, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgDeleteBtn:Landroid/widget/ImageView;

    iget-wide v11, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->miStreetIx:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v4, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1109
    iget-object v1, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgDeleteBtn:Landroid/widget/ImageView;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1110
    iget-object v1, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$AddressViewHolder;->imgDeleteBtn:Landroid/widget/ImageView;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_22
    return-object v5
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected getVisitType(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I
    .locals 0

    .line 1142
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const p1, 0x7f080182

    return p1

    :pswitch_1
    const p1, 0x7f0802db

    return p1

    :pswitch_2
    const p1, 0x7f0801e1

    return p1

    :pswitch_3
    const p1, 0x7f080298

    return p1

    :pswitch_4
    const p1, 0x7f08036f

    return p1

    :pswitch_5
    const p1, 0x7f0801ee

    return p1

    :pswitch_6
    const p1, 0x7f0802fb

    return p1

    :pswitch_7
    const p1, 0x7f0802b3

    return p1

    :pswitch_8
    const p1, 0x7f08016b

    return p1

    :pswitch_9
    const p1, 0x7f0802d7

    return p1

    :pswitch_a
    const p1, 0x7f080164

    return p1

    :pswitch_b
    const p1, 0x7f080301

    return p1

    :pswitch_c
    const p1, 0x7f080315

    return p1

    :pswitch_d
    const p1, 0x7f0802ae

    return p1

    :pswitch_e
    const p1, 0x7f0800d1

    return p1

    :pswitch_f
    const p1, 0x7f08016d

    return p1

    :pswitch_10
    const p1, 0x7f0801e8

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$VisitArrayAdapter;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 867
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, p1, :cond_1

    return v1

    .line 869
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method
