.class public Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$OnListFragmentListener;
.implements Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnAddPersonListener;
.implements Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment$OnMapFragmentListener;
.implements Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$OnTagsSetListener;
.implements Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog$OnTagsSortListener;
.implements Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog$OnTagsColorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;,
        Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;
    }
.end annotation


# instance fields
.field private buttonSort:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

.field private buttonTags:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

.field private mCamPos:Lcom/google/android/gms/maps/model/CameraPosition;

.field private final mListAllTags:Ljava/util/List;

.field private final mListCitiesTags:Ljava/util/List;

.field private mListFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

.field private final mListNeighborhoodTags:Ljava/util/List;

.field private final mListSelectedCitiesTags:Ljava/util/HashMap;

.field private final mListSelectedNeighborhoodTags:Ljava/util/HashMap;

.field private final mListSelectedTags:Ljava/util/HashMap;

.field private mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

.field private mMapOuterFragment:Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchView:Landroidx/appcompat/widget/SearchView;

.field private mbMapPositionSet:Z

.field private mbMapVisible:Z

.field private personToSetPositionFor:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field private showOnMapPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field private tagButtonHeight:I


# direct methods
.method public static synthetic $r8$lambda$FY0Lq7FdMllE1zjV_d71UZhd7oM(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1311
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$htg4oeX4S-IrYkKUDe52dOUEpj8(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V
    .locals 9

    const v0, 0x7f0901a0

    .line 435
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 435
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 436
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 437
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    .line 438
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 439
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 440
    check-cast v0, Landroid/view/ViewGroup;

    .line 441
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 442
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f12057f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f120253

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "RVAdd"

    const v8, 0x7f08018a

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/lostpixels/fieldservice/ui/OverlayHelper;->showTapTargetPrompt(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$uDbrCjItgQsm9bwhLilsId0lDwM(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V
    .locals 12

    const/4 v0, 0x2

    .line 449
    new-array v1, v0, [I

    .line 450
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonTags:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    .line 450
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    .line 451
    aget v3, v1, v2

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonTags:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v0, 0x0

    .line 452
    aget v3, v1, v0

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {p0, v4}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->pxFromDp(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    add-int v6, v3, v4

    aput v6, v1, v0

    .line 453
    aget v7, v1, v2

    const v0, 0x7f12057d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v0, 0x7f120424

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "RVHelp"

    const v11, 0x7f080174

    move-object v5, p0

    invoke-static/range {v5 .. v11}, Lcom/lostpixels/fieldservice/ui/OverlayHelper;->showTapTargetPrompt(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMapOuterFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapOuterFragment:Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchView(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mSearchView:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettagButtonHeight(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->tagButtonHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmMapFragment(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpersonToSetPositionFor(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->personToSetPositionFor:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputshowOnMapPerson(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->showOnMapPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtagButtonHeight(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->tagButtonHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mduplicateReturnVisit(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->duplicateReturnVisit(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTagUpdated(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->onTagUpdated()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpersonExistInTerritory(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lcom/lostpixels/fieldservice/internal/ministry/Person;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->personExistInTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Person;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateTagList(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->updateTagList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0c0111

    .line 171
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListNeighborhoodTags:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListCitiesTags:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedNeighborhoodTags:Ljava/util/HashMap;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedCitiesTags:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mbMapPositionSet:Z

    const/4 v1, 0x0

    .line 149
    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->showOnMapPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 151
    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mCamPos:Lcom/google/android/gms/maps/model/CameraPosition;

    .line 166
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mbMapVisible:Z

    .line 167
    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->personToSetPositionFor:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$700(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$800(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$900(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)Lio/realm/Realm;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method private addNewReturnVisit()V
    .locals 4

    .line 676
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 677
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;-><init>()V

    const/4 v2, 0x1

    .line 678
    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 680
    const-string v3, "Person"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 681
    const-string v1, "CreatedFromTerritory"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    const-string v1, "CreateNew"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 684
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private duplicateReturnVisit(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 4

    .line 688
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 689
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;-><init>()V

    const/4 v2, 0x1

    .line 690
    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 691
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 692
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setAddress(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setCity(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setSuburb(Ljava/lang/String;)V

    .line 696
    const-string p1, "Person"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 697
    const-string p1, "CreatedFromTerritory"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 698
    const-string p1, "CreateNew"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 700
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static findChildrenByClass(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->gatherChildrenByClass(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static gatherChildrenByClass(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3

    const/4 v0, 0x0

    .line 182
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 183
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 188
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->gatherChildrenByClass(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/Collection;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method private getTagButtonLabel()Ljava/lang/String;
    .locals 6

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->isShowArchived()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120367

    .line 526
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    .line 528
    :goto_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, ", "

    if-ge v1, v2, :cond_3

    .line 529
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->tag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget-object v4, v4, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->tag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 532
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_1
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_3
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedNeighborhoodTags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const v4, 0x7f120480

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 540
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 542
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 544
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 546
    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 551
    :cond_7
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedCitiesTags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 552
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 554
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 556
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 558
    :cond_a
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 561
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onSortGroupUpdated()V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->notifyData()V

    return-void
.end method

.method private onTagUpdated()V
    .locals 6

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 567
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 568
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 572
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedNeighborhoodTags:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 573
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 574
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 577
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 578
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedCitiesTags:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 579
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 580
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 583
    :cond_5
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->setTags(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 584
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    if-eqz v0, :cond_6

    .line 585
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->notifyData()V

    .line 586
    :cond_6
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->isMapView()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    if-eqz v0, :cond_7

    .line 587
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->updateMap()V

    :cond_7
    return-void
.end method

.method private personExistInTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Person;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;
    .locals 3

    .line 1192
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v0

    .line 1193
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const-class v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, v2}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    const-string v2, "houseHolder"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    return-object p1
.end method

.method private saveCities()V
    .locals 6

    .line 1396
    const-string v0, "Tags"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1397
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1398
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1399
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedCitiesTags:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1400
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1401
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1404
    :cond_1
    const-string v3, "CitySize"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1406
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1411
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveNeighborhoods()V
    .locals 6

    .line 1433
    const-string v0, "Tags"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1434
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1435
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedNeighborhoodTags:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1437
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1438
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1441
    :cond_1
    const-string v3, "NHSize"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1443
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "N_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1448
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveTags()V
    .locals 6

    .line 1329
    const-string v0, "Tags"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1330
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1332
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1333
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1334
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1337
    :cond_1
    const-string v3, "TagSize"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1339
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1345
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setNameOfSortButton()V
    .locals 5

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->isMapView()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 473
    sget-object v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$17;->$SwitchMap$com$lostpixels$fieldservice$helpfunctions$PublicConstants$EColorBy:[I

    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getColorBy()Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const v1, 0x7f1203a0

    .line 478
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_1
    const v1, 0x7f12039f

    .line 475
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 482
    :cond_2
    sget-object v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$17;->$SwitchMap$com$lostpixels$fieldservice$helpfunctions$PublicConstants$ESort:[I

    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getSortBy()Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    const v4, 0x7f1204ef

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const v1, 0x7f120457

    .line 490
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 487
    :cond_4
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const v1, 0x7f12035c

    .line 484
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :goto_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    sget-object v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$17;->$SwitchMap$com$lostpixels$fieldservice$helpfunctions$PublicConstants$EGroupBy:[I

    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getGroupBy()Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v1, 0x7f120466

    .line 514
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f120394

    .line 511
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f120393

    .line 508
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const v1, 0x7f120392

    .line 505
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const v1, 0x7f12038c

    .line 502
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const v1, 0x7f12038a

    .line 499
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 496
    :pswitch_6
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :goto_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonSort:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->setCaption(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTagList()V
    .locals 12

    .line 206
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeReturnVisit:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1204b5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080301

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeBibleStudy:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120503

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080342

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeBookmark:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1203e6

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080171

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeMagazineRoute:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120438

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0801f8

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypePriority:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120496

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802f2

    const/4 v6, 0x3

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeVisitTime:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12054e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0803c5

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypePinned:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12048c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0801a9

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeNoAtHome:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1202c8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080182

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypePhone:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120104

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802de

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeCellPhone:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120398

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800ef

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeMan:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1202bb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0801fd

    const/4 v6, 0x2

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeWoman:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120309

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080172

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeCouple:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1203b2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08013c

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    const v1, 0x7f120480

    .line 230
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    new-instance v2, Ljava/util/TreeSet;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$2;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 237
    new-instance v3, Ljava/util/TreeSet;

    new-instance v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$3;

    invoke-direct {v4, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 243
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v4

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v4, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 244
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v8

    .line 246
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v1

    goto :goto_0

    :cond_1
    move-object v9, v8

    .line 249
    :goto_0
    new-instance v10, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    const v11, 0x7f080209

    invoke-direct {v10, v8, v9, v5, v11}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v2, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v8

    .line 254
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v1

    goto :goto_1

    :cond_2
    move-object v9, v8

    .line 257
    :goto_1
    new-instance v10, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    invoke-direct {v10, v8, v9, v5, v11}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v3, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCustomTagsSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 261
    new-instance v9, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;

    const v10, 0x7f080345

    invoke-direct {v9, v8, v8, v7, v10}, Lcom/lostpixels/fieldservice/activities/visits/TagFilterDialog$TagItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v9}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 264
    :cond_3
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListNeighborhoodTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 267
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-le v0, v7, :cond_4

    .line 268
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListNeighborhoodTags:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListNeighborhoodTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$4;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$4;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedNeighborhoodTags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 278
    :goto_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListCitiesTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 279
    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-le v0, v7, :cond_5

    .line 280
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListCitiesTags:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 281
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListCitiesTags:Ljava/util/List;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$5;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$5;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    .line 288
    :cond_5
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedCitiesTags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method protected createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 707
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 711
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 713
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 715
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 716
    :cond_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 717
    :cond_2
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v4, 0x7f120397

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0802de

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v4, 0x7f1201b6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08025b

    const/16 v6, 0xb

    invoke-direct {v3, v4, v5, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    const-string v3, "com.whatsapp"

    invoke-static {v3, p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 721
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v4, 0x7f08038d

    const/16 v5, 0xc

    const-string v6, "WhatsApp"

    invoke-direct {v3, v6, v4, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_3
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v4, 0x7f1201bc

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080314

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v3

    const/4 v4, 0x4

    const v5, 0x7f08016f

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-nez v3, :cond_4

    .line 728
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v9, v0, v8

    invoke-direct {v3, v9, v5, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 730
    :cond_4
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v9, v0, v4

    invoke-direct {v3, v9, v5, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    :goto_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v3, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritories(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 735
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v5, 0x7f12036b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v9, 0x7f0800a4

    const/16 v10, 0x8

    invoke-direct {v3, v5, v9, v10}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_5
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    const v5, 0x7f080208

    if-eqz v3, :cond_7

    .line 738
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->isMapView()Z

    move-result v3

    if-nez v3, :cond_6

    .line 739
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v9, 0x7f1204e9

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f080319

    const/4 v11, 0x5

    invoke-direct {v3, v9, v10, v11}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_6
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v9, 0x7f12045a

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f080290

    invoke-direct {v3, v9, v10, v4}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v4, 0x7f1204a9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 745
    :cond_7
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v4, 0x7f120520

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    :goto_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isPinnedToFront()Z

    move-result v3

    const/4 v4, 0x7

    const v5, 0x7f080252

    if-eqz v3, :cond_8

    .line 749
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v8, 0x7f120541

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v5, v4}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 751
    :cond_8
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v8, 0x7f12048b

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v5, v4}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    :goto_2
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v4, 0x7f1203d3

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080242

    const/16 v8, 0x9

    invoke-direct {v3, v4, v5, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isHidden()Z

    move-result v3

    const/4 v4, 0x6

    if-nez v3, :cond_9

    .line 757
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v5, 0x7f12040a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v8, 0x7f080258

    invoke-direct {v3, v5, v8, v4}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 759
    :cond_9
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v5, 0x7f1204ea

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v8, 0x7f080244

    invoke-direct {v3, v5, v8, v4}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    :goto_3
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    const v5, 0x7f080146

    invoke-direct {v3, v0, v5, v4}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12058b

    .line 765
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 766
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    if-eqz v3, :cond_a

    .line 767
    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_4

    .line 769
    :cond_a
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 771
    :goto_4
    new-instance v3, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;

    invoke-direct {v3, p0, v2}, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 772
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 773
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 774
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;

    invoke-direct {v2, p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$10;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Landroidx/appcompat/app/AlertDialog;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 948
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 949
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 950
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x41000000    # 8.0f

    .line 951
    invoke-static {p0, v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->pxFromDp(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v6, v0, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method public getAllCitiesTags()Ljava/util/List;
    .locals 1

    .line 1523
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListCitiesTags:Ljava/util/List;

    return-object v0
.end method

.method public getAllNeighborhoodTags()Ljava/util/List;
    .locals 1

    .line 1518
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListNeighborhoodTags:Ljava/util/List;

    return-object v0
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1

    .line 1513
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListAllTags:Ljava/util/List;

    return-object v0
.end method

.method public getNumResults()I
    .locals 1

    .line 1569
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getPersonList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedCitiesTags()Ljava/util/Set;
    .locals 4

    .line 1553
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1554
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedCitiesTags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1555
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1556
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSelectedNeighborhoodTags()Ljava/util/Set;
    .locals 4

    .line 1541
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1542
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedNeighborhoodTags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1543
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1544
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSelectedTags()Ljava/util/Set;
    .locals 4

    .line 1529
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1530
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1531
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1532
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getShowArchived()Z
    .locals 1

    .line 1564
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->isShowArchived()Z

    move-result v0

    return v0
.end method

.method protected isMapView()Z
    .locals 1

    .line 1097
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mbMapVisible:Z

    return v0
.end method

.method public loadCities()V
    .locals 7

    .line 1415
    const-string v0, "Tags"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1416
    const-string v2, "CitySize"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1417
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedCitiesTags:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1420
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 1421
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1422
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1426
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1427
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1428
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedCitiesTags:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public loadColorBy()V
    .locals 3

    .line 1499
    const-string v0, "Tags"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1500
    sget-object v1, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->eColorByType:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->token(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->type(Ljava/lang/String;)Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    move-result-object v0

    .line 1501
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->setColorBy(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;)V

    .line 1502
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->setNameOfSortButton()V

    return-void
.end method

.method public loadNeighborhoods()V
    .locals 7

    .line 1452
    const-string v0, "Tags"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1453
    const-string v2, "NHSize"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1454
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedNeighborhoodTags:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1457
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 1458
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1459
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "N_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1464
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1465
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedNeighborhoodTags:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public loadShowArchived()V
    .locals 4

    .line 1356
    const-string v0, "Tags"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1357
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v2

    const-string v3, "archived"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->showArchived(Z)V

    return-void
.end method

.method public loadSortGroup()V
    .locals 5

    .line 1486
    const-string v0, "Tags"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1487
    sget-object v2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;->eSortByDate:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;->token(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sort"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;->type(Ljava/lang/String;)Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    move-result-object v2

    .line 1488
    sget-object v3, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->eByNeighborhood:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->token(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "group"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->type(Ljava/lang/String;)Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    move-result-object v3

    .line 1490
    const-string v4, "dec"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1492
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->setSortIncreasing(Z)V

    .line 1493
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->setSortBy(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;)V

    .line 1494
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->setGroupBy(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;)V

    .line 1495
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->setNameOfSortButton()V

    return-void
.end method

.method public loadTags()V
    .locals 7

    .line 1361
    const-string v0, "Tags"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1362
    const-string v2, "TagSize"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1363
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1366
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 1368
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeReturnVisit:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1369
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeBibleStudy:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1370
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeBookmark:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1371
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeMagazineRoute:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1372
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypePriority:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1373
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeVisitTime:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1374
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypePinned:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1375
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeNoAtHome:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1376
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypePhone:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1377
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeCellPhone:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1378
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeMan:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1379
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeWoman:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1380
    sget-object v4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeCouple:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1382
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v4

    invoke-virtual {v4}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1383
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCustomTagsSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "T_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1388
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1389
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ne p1, v0, :cond_3

    if-eq p2, v1, :cond_0

    if-ne p2, v2, :cond_6

    .line 1156
    :cond_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->updateTagList()V

    .line 1157
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->update()V

    if-ne p2, v2, :cond_2

    .line 1159
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->notifyData()V

    .line 1160
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->isMapView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    if-eqz v0, :cond_1

    .line 1161
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->updateMap()V

    .line 1163
    :cond_1
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->onTagUpdated()V

    goto :goto_0

    .line 1165
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->notifyData()V

    .line 1166
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->notifyData()V

    .line 1169
    :goto_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->isMapView()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    if-eqz v0, :cond_6

    .line 1170
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->updateInfoWindow()V

    goto :goto_1

    :cond_3
    if-ne p1, v2, :cond_5

    if-eq p2, v1, :cond_4

    if-ne p2, v2, :cond_6

    .line 1174
    :cond_4
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->update()V

    .line 1175
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->notifyData()V

    .line 1176
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    if-eqz v0, :cond_6

    .line 1177
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->updateMap()V

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    if-ne p2, v1, :cond_6

    .line 1181
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->notifyData()V

    .line 1182
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    if-eqz v0, :cond_6

    .line 1183
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->updateMap()V

    .line 1187
    :cond_6
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAddPerson(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3

    .line 1241
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1242
    new-instance v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;-><init>()V

    .line 1243
    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    const/4 p1, 0x1

    .line 1245
    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setReturnVisit(Z)V

    .line 1247
    const-string v2, "Person"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1248
    const-string v1, "CreatedFromTerritory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1249
    const-string v1, "CreateNew"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 1251
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onAddReturnVisit()V
    .locals 0

    .line 1266
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->addNewReturnVisit()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1102
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 1105
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->isMapView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->showList()V

    .line 1108
    :cond_1
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onBackPressed()V

    return-void
.end method

.method public onBookmarkChanged(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 7

    .line 1272
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1274
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1277
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1278
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 1279
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    .line 1284
    :goto_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const-class v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {v2, v3}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    const-string v3, "houseHolder"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-nez v0, :cond_2

    .line 1294
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200dc

    .line 1295
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1203a8

    .line 1296
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$16;

    invoke-direct {v3, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$16;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f12004b

    .line 1311
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1312
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1313
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 1289
    :cond_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->setFavorite(Z)V

    .line 1290
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->notifyData()V

    .line 1291
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->updatePerson(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void
.end method

.method public onClearAllTags()V
    .locals 3

    .line 1574
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1575
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedNeighborhoodTags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1576
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedCitiesTags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1578
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->getTagButtonLabel()Ljava/lang/String;

    move-result-object v0

    .line 1579
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonTags:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1204e2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120529

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->setCaption(Ljava/lang/String;)V

    goto :goto_0

    .line 1582
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonTags:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->setCaption(Ljava/lang/String;)V

    .line 1584
    :goto_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->onTagUpdated()V

    .line 1586
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->saveTags()V

    .line 1587
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->saveNeighborhoods()V

    .line 1588
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->saveCities()V

    return-void
.end method

.method public onColoringChanged(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;)V
    .locals 1

    .line 1658
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->setColorBy(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;)V

    .line 1659
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->isMapView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    if-eqz v0, :cond_0

    .line 1660
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->updateMap()V

    .line 1662
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->saveColorBy(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 299
    const-string v0, "IsMapView"

    const-string v1, "PersonListFragment"

    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v2

    const-string v3, "Start ReturnVisitsTab"

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :catch_0
    :try_start_1
    const-string v2, "ReturnVisitTag"

    const-string v3, "Activity State: onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 307
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbRestart:Z

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    if-eqz p1, :cond_3

    .line 311
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 314
    const-string v2, "tags"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    .line 315
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_1
    move-exception p1

    goto/16 :goto_6

    .line 318
    :cond_1
    const-string v2, "neighborhoods"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    .line 319
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedNeighborhoodTags:Ljava/util/HashMap;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 323
    :cond_2
    const-string v2, "cities"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v4, v3, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 324
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedCitiesTags:Ljava/util/HashMap;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 327
    :cond_3
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->loadTags()V

    .line 328
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->loadCities()V

    .line 329
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->loadNeighborhoods()V

    .line 330
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->loadShowArchived()V

    .line 332
    :cond_4
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->updateTagList()V

    .line 334
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    if-nez v2, :cond_5

    .line 336
    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-direct {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;-><init>()V

    iput-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    const v4, 0x7f090231

    .line 338
    invoke-virtual {v2, v4, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 341
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "PersonMapFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapOuterFragment:Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;

    if-nez v1, :cond_6

    .line 344
    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;-><init>()V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapOuterFragment:Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;

    goto :goto_3

    .line 346
    :cond_6
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->getFragment()Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    :goto_3
    const v1, 0x7f09010f

    .line 349
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonTags:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    const v1, 0x7f09010e

    .line 350
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonSort:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    const v1, 0x7f09010b

    .line 352
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 354
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->getTagButtonLabel()Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 357
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonTags:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1204e2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f120529

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->setCaption(Ljava/lang/String;)V

    goto :goto_4

    .line 359
    :cond_7
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonTags:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    invoke-virtual {v3, v2}, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->setCaption(Ljava/lang/String;)V

    .line 361
    :goto_4
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonTags:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$6;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$6;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->setNameOfSortButton()V

    .line 376
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonSort:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$7;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$7;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 404
    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$8;

    invoke-direct {v3, p0, v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$8;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    if-eqz p1, :cond_8

    .line 422
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 423
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mbMapVisible:Z

    .line 426
    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 427
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const v0, 0x7f120171

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->loadSortGroup()V

    .line 432
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->loadColorBy()V

    .line 433
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    const-wide/16 v0, 0x3e8

    if-eqz p1, :cond_9

    .line 434
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$$ExternalSyntheticLambda0;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 448
    :cond_9
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$$ExternalSyntheticLambda1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 458
    :goto_5
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    const-string v0, "End ReturnVisitsTab "

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 463
    :goto_6
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_7
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 598
    const-string v0, "Create search"

    new-instance v1, Landroidx/appcompat/widget/SearchView;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x1

    .line 600
    :try_start_0
    const-string v2, "search"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 601
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 602
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SearchView;->setQueryRefinementEnabled(Z)V

    .line 603
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const v3, 0x7f120333

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mSearchView:Landroidx/appcompat/widget/SearchView;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$9;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$9;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 619
    invoke-static {v2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :goto_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    :try_start_1
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const-class v3, Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->findChildrenByClass(Landroid/view/ViewGroup;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, -0x1

    .line 625
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v4, -0x7f000001

    .line 626
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 629
    invoke-static {v2}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f120330

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 632
    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mSearchMenuItem:Landroid/view/MenuItem;

    const v4, 0x7f080078

    .line 633
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {v0, v4}, Landroidx/core/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 634
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mSearchMenuItem:Landroid/view/MenuItem;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 636
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->isMapView()Z

    move-result v0

    const v4, 0x7f1204e9

    if-eqz v0, :cond_1

    .line 637
    invoke-interface {p1, v2, v2, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v4, 0x7f0801ed

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    goto :goto_2

    .line 640
    :cond_1
    invoke-interface {p1, v2, v2, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v4, 0x7f080204

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    :goto_2
    const v0, 0x7f12012f

    .line 643
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v1, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f08018a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 646
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 0

    .line 1508
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 651
    invoke-static {v0}, Landroidx/core/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    const/4 p1, 0x1

    return p1

    .line 654
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onListInitDone()V
    .locals 0

    .line 1215
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->onTagUpdated()V

    return-void
.end method

.method public onMapInitDone()V
    .locals 2

    .line 1220
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapOuterFragment:Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;

    if-eqz v0, :cond_2

    .line 1221
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;->getFragment()Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    .line 1222
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->tagButtonHeight:I

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->setOffsetY(I)V

    .line 1223
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->updateMap()V

    .line 1224
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mbMapPositionSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1225
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mbMapPositionSet:Z

    .line 1226
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->setDefaultLocation()V

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->showOnMapPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-eqz v0, :cond_1

    .line 1230
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->showOnMap(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    const/4 v0, 0x0

    .line 1231
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->showOnMapPerson:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    return-void

    .line 1232
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mCamPos:Lcom/google/android/gms/maps/model/CameraPosition;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->getInternalMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1233
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mCamPos:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 1234
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->getInternalMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 659
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 661
    :cond_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->addNewReturnVisit()V

    goto :goto_1

    .line 664
    :cond_1
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->isMapView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->showList()V

    goto :goto_0

    .line 667
    :cond_2
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->showMap()V

    .line 669
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 672
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPersonClicked(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 4

    .line 1198
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1199
    const-string v1, "PersonID"

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1200
    const-string p1, "CreatedFromTerritory"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1201
    const-string p1, "CreateNew"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 1203
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onPersonLongClicked(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 1209
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1052
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1054
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTabPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;I[I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1114
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfImported(Landroid/app/Activity;)Z

    .line 1115
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1120
    const-string v0, "IsMapView"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->isMapView()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1121
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->saveInstanceState(Landroid/os/Bundle;)V

    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1126
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1127
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1130
    :cond_1
    const-string v1, "tags"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1134
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedNeighborhoodTags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1135
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1136
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1139
    :cond_3
    const-string v1, "neighborhoods"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1143
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedCitiesTags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1144
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1145
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1148
    :cond_5
    const-string v1, "cities"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1149
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onShowArchiveChanged(Z)V
    .locals 2

    .line 1643
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->showArchived(Z)V

    .line 1645
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->getTagButtonLabel()Ljava/lang/String;

    move-result-object p1

    .line 1646
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1647
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonTags:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1204e2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120529

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->setCaption(Ljava/lang/String;)V

    goto :goto_0

    .line 1649
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonTags:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->setCaption(Ljava/lang/String;)V

    .line 1651
    :goto_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->onTagUpdated()V

    .line 1653
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->saveShowArchived()V

    return-void
.end method

.method public onSortChanged(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;Z)V
    .locals 2

    .line 1319
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    xor-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->setSortIncreasing(Z)V

    .line 1320
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->setSortBy(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;)V

    .line 1321
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->setGroupBy(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;)V

    .line 1322
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->onSortGroupUpdated()V

    .line 1323
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->setNameOfSortButton()V

    .line 1325
    invoke-virtual {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->saveSortGroup(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;Z)V

    return-void
.end method

.method public onTagChanged(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 5

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eqz p4, :cond_2

    if-eq p4, v0, :cond_1

    if-eq p4, p1, :cond_0

    goto/16 :goto_1

    .line 1615
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedCitiesTags:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1612
    :cond_1
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedNeighborhoodTags:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_5

    .line 1597
    sget-object v1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeMan:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1598
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeWoman:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeCouple:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1600
    :cond_3
    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeWoman:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1601
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    sget-object v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeCouple:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1603
    :cond_4
    sget-object v3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->eTypeCouple:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1604
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;->token(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray$EReturnVisitTags;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListSelectedTags:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    :goto_1
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->getTagButtonLabel()Ljava/lang/String;

    move-result-object p2

    .line 1621
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1622
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonTags:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1204e2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120529

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->setCaption(Ljava/lang/String;)V

    goto :goto_2

    .line 1624
    :cond_6
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonTags:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    invoke-virtual {p3, p2}, Lcom/lostpixels/fieldservice/ui/TwoLinesButton;->setCaption(Ljava/lang/String;)V

    .line 1626
    :goto_2
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->onTagUpdated()V

    if-eqz p4, :cond_9

    if-eq p4, v0, :cond_8

    if-eq p4, p1, :cond_7

    return-void

    .line 1636
    :cond_7
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->saveCities()V

    return-void

    .line 1633
    :cond_8
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->saveNeighborhoods()V

    return-void

    .line 1630
    :cond_9
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->saveTags()V

    return-void
.end method

.method public onTagPerson(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .line 1256
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1258
    const-string v1, "Position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1259
    const-string p1, "Type"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x3

    .line 1261
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method openCallVisitDialog(Lcom/lostpixels/fieldservice/internal/ministry/Person;Z)V
    .locals 4

    .line 955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 957
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 958
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    :cond_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 961
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 968
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 970
    :cond_2
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 971
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 975
    :cond_3
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 977
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090012

    invoke-direct {v1, p0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 978
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    const v0, 0x7f120059

    .line 980
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$11;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$11;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 987
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$12;

    invoke-direct {v0, p0, v1, p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$12;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Landroid/widget/ArrayAdapter;Z)V

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1002
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public saveColorBy(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;)V
    .locals 2

    .line 1479
    const-string v0, "Tags"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1480
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1481
    const-string v1, "color"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->token(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1482
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveShowArchived()V
    .locals 3

    .line 1349
    const-string v0, "Tags"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1350
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1351
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->isShowArchived()Z

    move-result v1

    const-string v2, "archived"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveSortGroup(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;Z)V
    .locals 2

    .line 1470
    const-string v0, "Tags"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1471
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1472
    const-string v1, "sort"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;->token(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1473
    const-string p1, "group"

    invoke-static {p2}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->token(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1474
    const-string p1, "dec"

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1475
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method setPersonPosition()V
    .locals 3

    .line 1008
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->personToSetPositionFor:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 1009
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$13;

    invoke-direct {v2, p0, v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$13;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V

    invoke-static {v1, v0, p0, v2}, Lcom/lostpixels/fieldservice/utils/map/PositionUpdater;->showUpdatePositionDialog(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;Landroid/app/Activity;Lcom/lostpixels/fieldservice/utils/map/PositionUpdater$PositionFoundListener;)V

    return-void
.end method

.method showDeniedForPosition()V
    .locals 2

    .line 1045
    const-string v0, "Permission denied"

    const-string v1, "ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f120279

    .line 1046
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected showList()V
    .locals 6

    const/4 v0, 0x0

    .line 1078
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mbMapVisible:Z

    .line 1080
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->getInternalMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->getInternalMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mCamPos:Lcom/google/android/gms/maps/model/CameraPosition;

    .line 1084
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 1085
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 1087
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mListFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Landroidx/fragment/app/Fragment;

    const-string v4, "PersonListFragment"

    const v5, 0x7f090231

    invoke-virtual {v2, v5, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1088
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    const/4 v1, 0x0

    .line 1089
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1090
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 1092
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->setNameOfSortButton()V

    .line 1093
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonSort:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    const v2, 0x7f08033d

    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method protected showMap()V
    .locals 5

    const/4 v0, 0x1

    .line 1058
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mbMapVisible:Z

    .line 1059
    new-instance v0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;

    const v1, 0x7f12025c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DontShowMap"

    invoke-direct {v0, p0, v1, v2}, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->show()V

    .line 1060
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1062
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 1064
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapOuterFragment:Lcom/lostpixels/fieldservice/activities/visits/MapOuterReturnVisitFragment;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/Fragment;

    const-string v3, "PersonMapFragment"

    const v4, 0x7f090231

    invoke-virtual {v1, v4, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1065
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    const/4 v0, 0x0

    .line 1066
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 1067
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 1069
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->mMapFragment:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;

    if-eqz v0, :cond_0

    .line 1070
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsMapFragment;->updateMap()V

    .line 1073
    :cond_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->setNameOfSortButton()V

    .line 1074
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->buttonSort:Lcom/lostpixels/fieldservice/ui/TwoLinesButton;

    const v1, 0x7f080122

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 4

    .line 1024
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12027c

    .line 1026
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1027
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$15;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$15;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lpermissions/dispatcher/PermissionRequest;)V

    .line 1028
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$14;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$14;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 1033
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1038
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1039
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
