.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VisitInfoWindowAdapter"
.end annotation


# instance fields
.field private final dayNameFormat:Ljava/text/SimpleDateFormat;

.field private final mContents:Landroid/view/View;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)V
    .locals 2

    .line 974
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 970
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->dayNameFormat:Ljava/text/SimpleDateFormat;

    .line 975
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c016c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 2

    .line 981
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$mgetMarkerData(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;Lcom/google/android/gms/maps/model/Marker;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 984
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->visit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$MarkerInfoData;->street:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->setData(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 986
    invoke-virtual {p0, v0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->setData(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V

    .line 987
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmMapFrame(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/lostpixels/fieldservice/ui/MapWrapperLayout;->setMarkerWithInfoWindow(Lcom/google/android/gms/maps/model/Marker;Landroid/view/View;)V

    .line 988
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmInfoButtonListener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->setMarker(Lcom/google/android/gms/maps/model/Marker;)V

    .line 990
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    return-object p1
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setData(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    .line 999
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v3, 0x7f09052f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1000
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v4, 0x7f090441

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1001
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v5, 0x7f0902d9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1002
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v6, 0x7f09066c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1003
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v7, 0x7f09066a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1004
    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v8, 0x7f09066f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1005
    iget-object v8, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v9, 0x7f09027e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1006
    iget-object v9, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v10, 0x7f090298

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 1007
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmimgMoreButton(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Landroid/widget/ImageView;

    move-result-object v10

    if-nez v10, :cond_0

    .line 1008
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->mContents:Landroid/view/View;

    const v12, 0x7f0903e0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-static {v10, v11}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fputmimgMoreButton(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;Landroid/widget/ImageView;)V

    .line 1010
    :cond_0
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetaddHandler(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    move-result-object v10

    const v11, 0x7f0800c6

    const v12, 0x7f080147

    if-eqz v10, :cond_1

    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetaddHandler(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    move-result-object v10

    invoke-interface {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;->isEditMode()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1011
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmimgMoreButton(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1013
    :cond_1
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmimgMoreButton(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1017
    :goto_0
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmInfoButtonListener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

    move-result-object v10

    if-nez v10, :cond_3

    .line 1018
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetaddHandler(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetaddHandler(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;

    move-result-object v10

    invoke-interface {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;->isEditMode()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1019
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    new-instance v11, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter$1;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmimgMoreButton(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Landroid/widget/ImageView;

    move-result-object v13

    iget-object v14, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iget-object v14, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    .line 1020
    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080149

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-direct {v11, v0, v13, v12, v14}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v10, v11}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fputmInfoButtonListener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;)V

    goto :goto_1

    .line 1031
    :cond_2
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    new-instance v12, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter$2;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmimgMoreButton(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Landroid/widget/ImageView;

    move-result-object v13

    iget-object v14, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget-object v14, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    .line 1032
    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0800c8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-direct {v12, v0, v13, v11, v14}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v10, v12}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fputmInfoButtonListener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;)V

    .line 1043
    :goto_1
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmimgMoreButton(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Landroid/widget/ImageView;

    move-result-object v10

    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v11}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmInfoButtonListener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1044
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-static {v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->-$$Nest$fgetmimgMoreButton(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;)Landroid/widget/ImageView;

    move-result-object v10

    new-instance v11, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter$3;

    invoke-direct {v11, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p1, :cond_18

    .line 1055
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v10

    .line 1057
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ", "

    const-string v14, " "

    if-eqz v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    move-object/from16 v12, p2

    goto/16 :goto_4

    .line 1059
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v12

    if-nez v12, :cond_6

    .line 1060
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v9

    move-object v15, v12

    move-object/from16 v12, p2

    goto :goto_5

    .line 1063
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1065
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 1066
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    .line 1067
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v12

    move-object/from16 v12, p2

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    move-object/from16 v15, v16

    :goto_3
    move-object/from16 v16, v9

    goto :goto_5

    :cond_7
    move-object/from16 v16, v12

    move-object/from16 v12, p2

    goto :goto_2

    .line 1058
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    .line 1071
    :goto_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_8

    .line 1073
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1075
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    move/from16 p2, v1

    if-nez p2, :cond_c

    .line 1078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1079
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_a

    .line 1080
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    move-object/from16 v17, v6

    .line 1081
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-object/from16 v18, v7

    const v7, 0x7f120001

    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 1084
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_b

    .line 1086
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_6

    :cond_c
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 1093
    :goto_6
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v6, 0x0

    cmp-long v1, v10, v6

    if-eqz v1, :cond_d

    .line 1098
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    iget-object v3, v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v1, v3, v10, v11}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    .line 1100
    :goto_7
    const-string v3, ""

    if-eqz v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_f

    :cond_e
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 1101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->dayNameFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1102
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_10

    .line 1103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->dayNameFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 1105
    :cond_10
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v6

    const/4 v7, 0x3

    const/16 v9, 0x10

    const/16 v10, 0x8

    if-eq v6, v7, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_12

    .line 1108
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_12

    .line 1109
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v6

    if-eq v6, v10, :cond_12

    .line 1110
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v6

    const/16 v7, 0x11

    if-eq v6, v7, :cond_12

    .line 1111
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v6

    if-eqz v6, :cond_12

    .line 1112
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_12

    .line 1113
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v6

    if-ne v6, v9, :cond_11

    goto :goto_9

    .line 1117
    :cond_11
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v6

    and-int/lit8 v6, v6, -0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1118
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_a

    .line 1114
    :cond_12
    :goto_9
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v6

    or-int/2addr v6, v9

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1115
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/2addr v2, v9

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    :goto_a
    if-eqz v1, :cond_16

    .line 1123
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1124
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1125
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1126
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 1127
    :cond_13
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->hasVisitType()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1128
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->visitTypeToText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    :cond_14
    :goto_b
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->realm:Lio/realm/Realm;

    .line 1132
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v5

    .line 1131
    invoke-virtual {v3, v4, v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Person;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1133
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1135
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v18

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    .line 1136
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_15
    const/4 v6, 0x0

    .line 1138
    :goto_c
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v17

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1140
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_16
    move-object/from16 v2, v17

    move-object/from16 v7, v18

    .line 1142
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1143
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getComment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 1146
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1148
    :cond_17
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    :goto_d
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$VisitInfoWindowAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->getVisitType(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I

    move-result v1

    move-object/from16 v9, v16

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_18
    return-void
.end method
