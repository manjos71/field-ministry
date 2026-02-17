.class public Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;
.implements Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnInitListener;
.implements Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnAddVisitListener;
.implements Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnListItemClickListener;
.implements Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnAddVisitListener;
.implements Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment$OnMapInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$PhoneAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$StreetListAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$StreetNameAdapter;
    }
.end annotation


# instance fields
.field private editActionMode:Landroidx/appcompat/view/ActionMode;

.field private filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

.field private mCamPos:Lcom/google/android/gms/maps/model/CameraPosition;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mFilterDate:Ljava/util/Calendar;

.field private final mFilterDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

.field private mInitialDate:Ljava/util/Date;

.field private mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

.field private mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

.field private mMapOuterFragment:Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;

.field private mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

.field private mTemporaryTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field private mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field private mToolBarNavigationListenerIsRegistered:Z

.field mbHasLocation:Z

.field private mbMapPositionSet:Z

.field private mbMapVisible:Z

.field meFilterOptions:I

.field private miVisitID:J

.field private parentLayout:Landroid/view/View;

.field private showOnMapVisit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;


# direct methods
.method public static synthetic $r8$lambda$dlmXScyQkUECJkV4o2eMw3w-sXs(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V
    .locals 8

    const v0, 0x7f0901a0

    .line 605
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 605
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 606
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    .line 607
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 608
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 609
    check-cast v0, Landroid/view/ViewGroup;

    .line 610
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 611
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f120580

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f120581

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "EditTerritoryButton"

    const v7, 0x7f08015c

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/lostpixels/fieldservice/ui/OverlayHelper;->showTapTargetPrompt(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgeteditActionMode(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Landroidx/appcompat/view/ActionMode;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->editActionMode:Landroidx/appcompat/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfilterStreet(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterDate(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Ljava/util/Calendar;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFilterDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterDateSetListener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFilterDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMapFragment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSortFilter(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/ui/SortFilter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemporaryTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTemporaryTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputeditActionMode(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroidx/appcompat/view/ActionMode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->editActionMode:Landroidx/appcompat/view/ActionMode;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfilterStreet(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFilterDate(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Ljava/util/Calendar;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFilterDate:Ljava/util/Calendar;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTemporaryTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTemporaryTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputshowOnMapVisit(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showOnMapVisit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddAddress(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddComment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->addComment(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddEdit(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->addEdit(Landroid/widget/EditText;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddNewApartment(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->addNewApartment(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateShareStreet(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Street;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->createShareStreet(Lcom/lostpixels/fieldservice/internal/ministry/Street;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mopenBuildingDialog(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Ljava/lang/String;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openBuildingDialog(Ljava/lang/String;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenPhoneTerritoryDialog(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openPhoneTerritoryDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenRuralDialog(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openRuralDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenStreetDialog(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openStreetDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUndo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showUndo(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msubtractEdit(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->subtractEdit(Landroid/widget/EditText;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFilterInfo(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updateFilterInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePosition(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updatePosition(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePositionsFromAddress(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updatePositionsFromAddress(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePositionsFromAddress(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updatePositionsFromAddress(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStatistics(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updateStatistics()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0c0150

    .line 323
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    const/4 v0, 0x0

    .line 272
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    .line 274
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbHasLocation:Z

    const/4 v1, 0x0

    .line 278
    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTemporaryTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 280
    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFadeIn:Landroid/view/animation/Animation;

    .line 282
    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFadeOut:Landroid/view/animation/Animation;

    .line 287
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbMapVisible:Z

    .line 288
    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showOnMapVisit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 290
    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mCamPos:Lcom/google/android/gms/maps/model/CameraPosition;

    .line 296
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbMapPositionSet:Z

    .line 305
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFilterDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    .line 320
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mToolBarNavigationListenerIsRegistered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$700(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$800(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$900(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)Lio/realm/Realm;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method private addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 3555
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 3559
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->isRuralArea()Z

    move-result v3

    .line 3561
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    if-nez v6, :cond_2

    .line 3562
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x1

    :cond_2
    if-nez v5, :cond_3

    .line 3565
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isStreet()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v5, 0x1

    :cond_3
    if-nez v3, :cond_4

    .line 3568
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isRuralAddress()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-nez v4, :cond_1

    .line 3571
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isPhoneNumber()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_6
    if-eqz v3, :cond_7

    if-nez v4, :cond_7

    if-nez v5, :cond_7

    if-nez v6, :cond_7

    .line 3577
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openRuralDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void

    :cond_7
    if-nez v3, :cond_8

    if-eqz v4, :cond_8

    if-nez v5, :cond_8

    if-nez v6, :cond_8

    .line 3579
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openPhoneTerritoryDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void

    :cond_8
    if-nez v3, :cond_9

    if-nez v4, :cond_9

    if-eqz v5, :cond_9

    if-nez v6, :cond_9

    .line 3581
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openStreetDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void

    :cond_9
    if-nez v3, :cond_a

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    if-eqz v6, :cond_a

    .line 3583
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openBuildingDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void

    .line 3586
    :cond_a
    new-instance p1, Landroid/widget/ListView;

    invoke-direct {p1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 3588
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3589
    new-instance v4, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v5, 0x7f1204fe

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080184

    const/4 v7, 0x2

    invoke-direct {v4, v5, v6, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3590
    new-instance v4, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v5, 0x7f120388

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0800b1

    const/4 v7, 0x3

    invoke-direct {v4, v5, v6, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3591
    new-instance v4, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v5, 0x7f12013f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080200

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3592
    new-instance v4, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v5, 0x7f120197

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0802df

    const/16 v7, 0x8

    invoke-direct {v4, v5, v6, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3594
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f1201da

    .line 3595
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3596
    iget-boolean v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    if-eqz v5, :cond_b

    .line 3597
    invoke-virtual {v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_2

    .line 3599
    :cond_b
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 3601
    :goto_2
    new-instance v1, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;

    invoke-direct {v1, p0, v3}, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 3602
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3603
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 3604
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;

    invoke-direct {v2, p0, v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$29;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Ljava/lang/String;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3628
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 3629
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 3630
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->setHeaderMargin(Landroid/widget/ListView;)V

    return-void
.end method

.method private addComment(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2854
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0091

    .line 2855
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f1204e0

    .line 2856
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902a4

    .line 2858
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    const v0, 0x7f1203a2

    .line 2859
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 2860
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2861
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 2862
    :cond_1
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const p3, 0x7f0900f5

    .line 2863
    invoke-virtual {v4, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 2864
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$20;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Landroid/widget/EditText;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2884
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private addEdit(Landroid/widget/EditText;)V
    .locals 1

    .line 2102
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2105
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2106
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2108
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2110
    :cond_0
    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2112
    :catch_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private addNewApartment(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 7

    .line 2117
    new-instance v5, Landroid/app/Dialog;

    invoke-direct {v5, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c002e

    .line 2119
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f120353

    .line 2120
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902a3

    .line 2122
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    const v0, 0x7f0901df

    .line 2123
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    const/4 v0, 0x2

    .line 2124
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setInputType(I)V

    const v0, 0x7f090229

    .line 2125
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$16;

    invoke-direct {v1, p0, v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$16;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09022a

    .line 2131
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$17;

    invoke-direct {v1, p0, v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$17;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2138
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900f5

    .line 2141
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    .line 2142
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$18;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2193
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createShareStreet(Lcom/lostpixels/fieldservice/internal/ministry/Street;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 8

    .line 1667
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->cloneEmpty()Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    .line 1669
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->cloneEmpty()Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v1

    .line 1670
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 1672
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 1673
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    iget v6, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFilterDate:Ljava/util/Calendar;

    invoke-static {v5, v4, v6, v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->shouldAddVisit(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Visit;ILjava/util/Calendar;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_2

    .line 1675
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->cloneEmpty()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v3

    .line 1677
    :cond_2
    invoke-virtual {v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->addVisit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_0

    .line 1681
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1682
    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    goto :goto_0

    .line 1685
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    return-object v0
.end method

.method private openBuildingDialog(Ljava/lang/String;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 5

    .line 3708
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3710
    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3713
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3714
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3715
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3716
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 3717
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 3720
    :cond_1
    const-string v1, "PrefStreet"

    if-eqz p1, :cond_2

    .line 3721
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 3723
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->getStreet()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    if-eqz p2, :cond_4

    .line 3726
    const-string p1, "PrefAddress"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-eqz p3, :cond_5

    .line 3728
    const-string p1, "VisitID"

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3730
    :cond_5
    const-string p1, "TerritoryID"

    invoke-virtual {p4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3731
    const-string p1, "Streets"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x3

    .line 3733
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private openPhoneTerritoryDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 5

    .line 3642
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3644
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3647
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3648
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3649
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3650
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 3651
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 3654
    :cond_1
    const-string v1, "PrefStreet"

    if-eqz p1, :cond_2

    .line 3655
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 3657
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->getStreet()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3658
    :goto_2
    const-string p1, "TerritoryID"

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3659
    const-string p1, "Streets"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p1, 0x8

    .line 3661
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private openRuralDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 5

    .line 3672
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3674
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3677
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3678
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3679
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3680
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 3681
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 3684
    :cond_1
    const-string v1, "PrefStreet"

    if-eqz p1, :cond_2

    .line 3685
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 3687
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->getStreet()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3689
    :goto_2
    const-string p1, "TerritoryID"

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3690
    const-string p1, "Streets"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3691
    const-string p1, "HideAdd"

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 3693
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private openStreetDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 5

    .line 3741
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3743
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3746
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3747
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3748
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3749
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 3750
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 3754
    :cond_1
    const-string v1, "PrefStreet"

    if-eqz p1, :cond_2

    .line 3755
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 3757
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->getStreet()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3759
    :goto_2
    const-string p1, "TerritoryID"

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3760
    const-string p1, "Streets"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 3762
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private setHeaderMargin(Landroid/widget/ListView;)V
    .locals 2

    .line 1346
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x41000000    # 8.0f

    .line 1347
    invoke-static {p0, v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->pxFromDp(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method public static shouldAddVisit(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Visit;ILjava/util/Calendar;)Z
    .locals 16

    move-object/from16 v0, p3

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/16 v4, 0xa

    const/16 v5, 0xe

    const/16 v6, 0x10

    const/16 v7, 0xc

    const/16 v8, 0x11

    const-wide/16 v9, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x1

    packed-switch p2, :pswitch_data_0

    return v12

    .line 371
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-ne v0, v8, :cond_0

    return v13

    :cond_0
    return v12

    .line 375
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-ne v0, v7, :cond_1

    return v13

    :cond_1
    return v12

    .line 369
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-ne v0, v6, :cond_2

    return v13

    :cond_2
    return v12

    .line 367
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    return v13

    :cond_3
    return v12

    .line 365
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-ne v0, v5, :cond_4

    return v13

    :cond_4
    return v12

    .line 377
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    .line 379
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 380
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 381
    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v1, v3, :cond_5

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_5

    return v13

    :cond_5
    return v12

    .line 373
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    return v13

    :cond_6
    return v12

    .line 363
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    return v13

    :cond_7
    return v12

    .line 361
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_8

    return v13

    :cond_8
    return v12

    .line 359
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-ne v0, v4, :cond_9

    return v13

    :cond_9
    return v12

    .line 357
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-ne v0, v3, :cond_a

    return v13

    :cond_a
    return v12

    .line 354
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-ne v0, v2, :cond_b

    return v13

    :cond_b
    return v12

    .line 352
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-nez v0, :cond_c

    return v13

    :cond_c
    return v12

    .line 350
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-ne v0, v13, :cond_d

    return v13

    :cond_d
    return v12

    .line 348
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->isInterested()Z

    move-result v0

    xor-int/2addr v0, v13

    return v0

    .line 346
    :pswitch_f
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-ne v0, v1, :cond_e

    return v13

    :cond_e
    return v12

    .line 340
    :pswitch_10
    invoke-static/range {p0 .. p0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v1

    move-object/from16 v3, p0

    invoke-virtual {v0, v3, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    if-nez v0, :cond_f

    return v12

    .line 343
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v1

    cmp-long v3, v1, v9

    if-eqz v3, :cond_10

    .line 344
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v0

    if-eqz v0, :cond_10

    return v13

    :cond_10
    return v12

    .line 331
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v0

    cmp-long v2, v0, v9

    if-eqz v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->isInterested()Z

    move-result v0

    if-eqz v0, :cond_11

    return v13

    :cond_11
    return v12

    .line 333
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v14

    cmp-long v0, v14, v9

    if-nez v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eq v0, v1, :cond_12

    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eq v0, v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eq v0, v8, :cond_12

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eq v0, v3, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eq v0, v7, :cond_12

    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eq v0, v5, :cond_12

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eq v0, v6, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eq v0, v4, :cond_12

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eq v0, v11, :cond_12

    return v13

    :cond_12
    return v12

    :pswitch_13
    return v13

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showUndo(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Ljava/lang/String;ZZ)V
    .locals 4

    .line 3767
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFadeIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    const v0, 0x7f01001f

    .line 3768
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFadeIn:Landroid/view/animation/Animation;

    .line 3769
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFadeOut:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    const v0, 0x7f010020

    .line 3770
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFadeOut:Landroid/view/animation/Animation;

    .line 3772
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3773
    const-string v1, "ID"

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 3774
    const-string v1, "previousVisitType"

    iget v2, p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousVisitType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3775
    const-string v1, "previousInterested"

    iget-boolean v2, p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousInterested:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3776
    iget-object v1, p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousComment:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3777
    const-string v2, "previousComment"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3778
    :cond_2
    iget-object p1, p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->previousDate:Ljava/util/Date;

    if-eqz p1, :cond_3

    .line 3779
    const-string v1, "previousDate"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 3781
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->parentLayout:Landroid/view/View;

    const/4 v1, 0x0

    .line 3782
    invoke-static {p1, p2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    new-instance p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;

    invoke-direct {p2, p0, v0, p4, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$30;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/os/Bundle;ZZ)V

    const p3, 0x7f1205ec

    .line 3783
    invoke-virtual {p1, p3, p2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 3821
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 3822
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3824
    iget p3, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, p3, p4, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3825
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static showUpdatePositionDialogWithCheck(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 2

    .line 391
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showUpdatePositionDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    return-void

    .line 396
    :cond_0
    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 400
    invoke-static {p0, v0, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private startEditActionMode()V
    .locals 2

    .line 4027
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->editActionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_1

    .line 4028
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTemporaryTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_0

    .line 4029
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->cloneTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTemporaryTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 4030
    :cond_0
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$EditActionMode;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/activities/territory/TerritoryList-IA;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->editActionMode:Landroidx/appcompat/view/ActionMode;

    .line 4031
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 4032
    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 4033
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->setEditMode(Z)V

    :cond_1
    return-void
.end method

.method private subtractEdit(Landroid/widget/EditText;)V
    .locals 1

    .line 2087
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2089
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2090
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2092
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2094
    :cond_0
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2096
    :catch_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private testOldTerritory()V
    .locals 4

    .line 3516
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->canDisplayOldTerritory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->isReturned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3518
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x6

    .line 3519
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 3520
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getDateCreated()Ljava/util/Date;

    move-result-object v1

    .line 3522
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3524
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c007c

    .line 3525
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const v1, 0x7f120192

    .line 3526
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f09015d

    .line 3528
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v2, 0x7f1203d1

    .line 3529
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090602

    .line 3530
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f12025e

    .line 3531
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0900f5

    .line 3533
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 3534
    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$28;

    invoke-direct {v3, p0, v1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$28;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/widget/CheckBox;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3544
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method private updateFilterInfo()V
    .locals 2

    .line 883
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_1
    const v0, 0x7f120485

    .line 936
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    const v0, 0x7f1204a7

    .line 939
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    const v0, 0x7f120363

    .line 933
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    const v0, 0x7f12045d

    .line 930
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    const v0, 0x7f12053b

    .line 927
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    const v0, 0x7f1203ef

    .line 924
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const v0, 0x7f1203f1

    .line 921
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const v0, 0x7f1203ed

    .line 918
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    const v0, 0x7f1203f6

    .line 915
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    const v0, 0x7f1203f4

    .line 911
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    const v0, 0x7f1203ee

    .line 908
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    const v0, 0x7f1203f5

    .line 905
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    const v0, 0x7f1203f3

    .line 902
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 898
    :pswitch_e
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 899
    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_f
    const v0, 0x7f1203eb

    .line 892
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    const v0, 0x7f1203f7

    .line 885
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    const v0, 0x7f1203f2

    .line 889
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_12
    const v0, 0x7f1203ea

    .line 895
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 944
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 947
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_11
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updatePosition(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 4

    const/4 v0, 0x0

    .line 1557
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbHasLocation:Z

    .line 1558
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v1

    .line 1560
    const-string p1, "location"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    .line 1562
    const-string v3, "gps"

    invoke-virtual {p1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1563
    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/map/PositionUtils;->buildAlertMessageNoGps(Landroid/app/Activity;)V

    return-void

    .line 1566
    :cond_0
    new-instance p1, Lcom/lostpixels/fieldservice/utils/map/MyLocation;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;-><init>()V

    .line 1568
    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$13;

    invoke-direct {v3, p0, v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$13;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;J)V

    const/16 v1, 0x32

    .line 1591
    :try_start_0
    invoke-virtual {p1, p0, v3, v1}, Lcom/lostpixels/fieldservice/utils/map/MyLocation;->getLocation(Landroid/content/Context;Lcom/lostpixels/fieldservice/utils/map/MyLocation$LocationResult;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1655
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;

    invoke-direct {v1, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$1GetPositionTask;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/utils/map/MyLocation;)V

    new-array p1, v0, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    return-void

    :goto_0
    const v0, 0x7f1203f9

    .line 1658
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->ALERT:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    .line 1660
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private updatePositionsFromAddress(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 4

    .line 3275
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3276
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3277
    :goto_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getId()J

    move-result-wide v1

    .line 3280
    new-instance p1, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    invoke-direct {v3, p0, v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;J)V

    invoke-direct {p1, v3, p0, v0}, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;-><init>(Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask$CurrentCityListener;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 3444
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updatePositionsFromAddress(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 7

    .line 3123
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3124
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3125
    :goto_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 3126
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3128
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 3132
    :cond_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v5

    .line 3133
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v3

    .line 3135
    new-instance p1, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;JJ)V

    invoke-direct {p1, v1, p0, v0}, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;-><init>(Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask$CurrentCityListener;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 3270
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateStatistics()V
    .locals 2

    .line 1015
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->calcStats(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 8

    .line 1693
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1694
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1695
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1696
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v4, 0x7f120130

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08008b

    const/16 v6, 0x19

    invoke-direct {v3, v4, v5, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v4, 0x7f1201bc

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080314

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v4, 0x7f120524

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0802e1

    const/16 v6, 0x1a

    invoke-direct {v3, v4, v5, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1702
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 1703
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isPhoneNumber()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 1709
    :goto_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->isRuralArea()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_4

    .line 1710
    :cond_2
    new-instance v4, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    if-eqz v3, :cond_3

    const v1, 0x7f120369

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/16 v3, 0xd

    aget-object v1, v1, v3

    :goto_1
    const v3, 0x7f0802fc

    const/16 v7, 0xb

    invoke-direct {v4, v1, v3, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    :cond_4
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->isRuralArea()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1713
    new-instance v1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f120346

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0801b0

    const/16 v7, 0x2b

    invoke-direct {v1, v3, v4, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    :cond_5
    new-instance v1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1204aa

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08015f

    const/16 v7, 0x1b

    invoke-direct {v1, v3, v4, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    new-instance v1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1204ad

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802ff

    const/16 v7, 0x1c

    invoke-direct {v1, v3, v4, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1717
    new-instance v1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1203c9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080146

    const/4 v7, 0x4

    invoke-direct {v1, v3, v4, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getShowAddress()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1720
    new-instance v1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1203ea

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080090

    const/16 v7, 0x26

    invoke-direct {v1, v3, v4, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    :cond_6
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getShowAddress()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    .line 1722
    new-instance v1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1204e5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08016a

    const/16 v7, 0x27

    invoke-direct {v1, v3, v4, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    :cond_7
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getShowAddress()I

    move-result v1

    if-eq v1, v6, :cond_8

    .line 1724
    new-instance v1, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1204e8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802d1

    const/16 v7, 0x28

    invoke-direct {v1, v3, v4, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1726
    :cond_8
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12014a

    .line 1727
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1728
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    if-eqz v3, :cond_9

    .line 1729
    invoke-virtual {v1, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_2

    .line 1731
    :cond_9
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 1733
    :goto_2
    new-instance v3, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;

    invoke-direct {v3, p0, v2}, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 1734
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1735
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 1736
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;

    invoke-direct {v2, p0, v1, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$14;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroidx/appcompat/app/AlertDialog;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1971
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1972
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1973
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->setHeaderMargin(Landroid/widget/ListView;)V

    return-void
.end method

.method protected createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 6

    .line 1979
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1981
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1982
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f120353

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08008b

    const/16 v5, 0x19

    invoke-direct {v2, v3, v4, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1983
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f120368

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802fc

    const/16 v5, 0x22

    invoke-direct {v2, v3, v4, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1984
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f12015e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080183

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1986
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12012e

    .line 1987
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1988
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 1989
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1991
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 1993
    :goto_0
    new-instance v3, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;

    invoke-direct {v3, p0, v1}, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 1994
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1995
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 1996
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;

    invoke-direct {v2, p0, p1, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$15;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2080
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 2081
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2082
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->setHeaderMargin(Landroid/widget/ListView;)V

    return-void
.end method

.method protected createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 20

    move-object/from16 v1, p0

    .line 2197
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 2200
    new-instance v6, Landroid/widget/ListView;

    invoke-direct {v6, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2204
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    if-eqz v10, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 2207
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    iget-object v10, v1, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v11

    invoke-virtual {v3, v10, v11, v12}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/16 v10, 0xd

    const v11, 0x7f080182

    const/16 v14, 0x10

    const/4 v15, 0x5

    move-wide/from16 v16, v8

    if-eqz v2, :cond_5

    .line 2209
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;

    const v9, 0x7f120102

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2210
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2211
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 2212
    :cond_3
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v9, 0x7f120397

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v18, 0x12

    const v13, 0x7f0802de

    const/16 v19, 0x11

    const/16 v12, 0x16

    invoke-direct {v8, v9, v13, v12}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2213
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v9, 0x7f1201b6

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v12, 0x7f08025b

    const/16 v13, 0x2a

    invoke-direct {v8, v9, v12, v13}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/16 v18, 0x12

    const/16 v19, 0x11

    .line 2216
    :goto_2
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v9, v4, v5

    const v12, 0x7f0802ae

    invoke-direct {v8, v9, v12, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2217
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v9, v4, v7

    const v12, 0x7f0800d1

    invoke-direct {v8, v9, v12, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2218
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v9, v4, v15

    const v12, 0x7f0801e8

    invoke-direct {v8, v9, v12, v15}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2219
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v9, 0x7f12053b

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v12, 0x7f08036f

    const/16 v13, 0x23

    invoke-direct {v8, v9, v12, v13}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2220
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/4 v9, 0x3

    aget-object v12, v4, v9

    const v13, 0x7f08016d

    invoke-direct {v8, v12, v13, v9}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2221
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v9, v4, v14

    const v12, 0x7f0802d7

    const/16 v13, 0xe

    invoke-direct {v8, v9, v12, v13}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2222
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v9, v4, v18

    const v12, 0x7f08016b

    const/16 v13, 0xf

    invoke-direct {v8, v9, v12, v13}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2223
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v9, 0x7f12045d

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v12, 0x7f080298

    const/16 v13, 0x24

    invoke-direct {v8, v9, v12, v13}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2224
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v9, 0x7f120485

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v12, 0x7f0802db

    const/16 v13, 0x2c

    invoke-direct {v8, v9, v12, v13}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2226
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;

    const v9, 0x7f120100

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2227
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v9, 0x7f12046e

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v12, 0x7f0802b3

    const/16 v13, 0x14

    invoke-direct {v8, v9, v12, v13}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2228
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v9, v4, v19

    invoke-direct {v8, v9, v11, v10}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2229
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v9, 0x7f120434

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v12, 0x7f0801ee

    const/16 v13, 0x18

    invoke-direct {v8, v9, v12, v13}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2230
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v9, 0x7f120363

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v12, 0x7f0801e1

    const/16 v13, 0x29

    invoke-direct {v8, v9, v12, v13}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const/16 v18, 0x12

    const/16 v19, 0x11

    .line 2234
    :goto_3
    new-instance v8, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;

    const v9, 0x7f1200fd

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 2238
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v2

    const v8, 0x7f08016f

    const/16 v9, 0x9

    if-eqz v2, :cond_6

    .line 2239
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/16 v12, 0xa

    aget-object v12, v4, v12

    invoke-direct {v2, v12, v8, v9}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2241
    :cond_6
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v12, v4, v9

    invoke-direct {v2, v12, v8, v9}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2243
    :goto_4
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2244
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/4 v8, 0x2

    aget-object v9, v4, v8

    const v12, 0x7f080301

    invoke-direct {v2, v9, v12, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2248
    :cond_7
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v8, 0x7f1204a7

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0802fb

    const/16 v12, 0x15

    invoke-direct {v2, v8, v9, v12}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_9

    .line 2250
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isPinnedToFront()Z

    move-result v2

    const/16 v3, 0x1e

    const v8, 0x7f080252

    if-eqz v2, :cond_8

    .line 2251
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v9, 0x7f120541

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9, v8, v3}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2253
    :cond_8
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v9, 0x7f12048b

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9, v8, v3}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2256
    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v2

    if-ne v2, v15, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->isRuralArea()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2257
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v2

    cmp-long v8, v2, v16

    if-eqz v8, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2258
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2259
    :cond_c
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;

    const v3, 0x7f120101

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2261
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v2

    cmp-long v8, v2, v16

    if-nez v8, :cond_e

    .line 2262
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1204e0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v8, 0x7f080311

    const/16 v9, 0x13

    invoke-direct {v2, v3, v8, v9}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2264
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x17

    const v8, 0x7f08015d

    const v9, 0x7f1203d6

    if-eqz v2, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2265
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 2266
    :cond_10
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9, v8, v3}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2268
    :cond_11
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9, v8, v3}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2272
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08015e

    const/4 v8, 0x6

    if-eqz v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_7

    .line 2275
    :cond_12
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v9, v4, v8

    invoke-direct {v2, v9, v3, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2273
    :cond_13
    :goto_7
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v9, 0x7f120353

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9, v3, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2278
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v2

    if-eq v2, v15, :cond_14

    .line 2280
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/16 v3, 0x8

    aget-object v8, v4, v3

    const v9, 0x7f080143

    invoke-direct {v2, v8, v9, v3}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2283
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v2

    if-ne v2, v15, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCallHistory()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCallHistory()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 2284
    :cond_15
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f12054d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v8, 0x7f0800ee

    const/16 v9, 0x25

    invoke-direct {v2, v3, v8, v9}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2287
    :cond_16
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;

    const v3, 0x7f1200ff

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2288
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    if-nez v2, :cond_17

    .line 2289
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f120520

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v8, 0x7f080208

    invoke-direct {v2, v3, v8, v14}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2291
    :cond_17
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1204a9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v8, 0x7f080207

    invoke-direct {v2, v3, v8, v14}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2293
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result v2

    if-nez v2, :cond_18

    .line 2294
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1204e9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v8, 0x7f080319

    const/16 v9, 0x11

    invoke-direct {v2, v3, v8, v9}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2297
    :cond_18
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f12045a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v8, 0x7f080290

    const/16 v9, 0x12

    invoke-direct {v2, v3, v8, v9}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2300
    :goto_9
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;

    const v3, 0x7f1200fe

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2301
    invoke-virtual/range {p2 .. p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->isRuralArea()Z

    move-result v2

    const v3, 0x7f0802fc

    if-eqz v2, :cond_19

    .line 2302
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v8, v4, v10

    const/16 v9, 0xb

    invoke-direct {v2, v8, v3, v9}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 2303
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2304
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v8, 0x7f120368

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x22

    invoke-direct {v2, v8, v3, v9}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2307
    :cond_1a
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2308
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f12015f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v8, 0x7f080183

    const/16 v9, 0x21

    invoke-direct {v2, v3, v8, v9}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2311
    :cond_1b
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1203d3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v8, 0x7f080242

    const/16 v9, 0x1d

    invoke-direct {v2, v3, v8, v9}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2313
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2314
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f120098

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v8, 0x7f08013b

    const/16 v9, 0x20

    invoke-direct {v2, v3, v8, v9}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2317
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v2

    if-eq v2, v15, :cond_1d

    .line 2318
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/4 v3, 0x7

    aget-object v3, v4, v3

    const/4 v8, 0x7

    invoke-direct {v2, v3, v11, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2320
    :cond_1d
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/4 v3, 0x4

    aget-object v3, v4, v3

    const v8, 0x7f080146

    const/4 v9, 0x4

    invoke-direct {v2, v3, v8, v9}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2322
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f120000

    .line 2323
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2324
    iget-boolean v3, v1, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    if-eqz v3, :cond_1e

    .line 2325
    invoke-virtual {v2, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_b

    .line 2327
    :cond_1e
    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 2329
    :goto_b
    new-instance v3, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;

    invoke-direct {v3, v1, v0}, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 2330
    invoke-virtual {v6, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2331
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 2332
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$19;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroidx/appcompat/app/AlertDialog;Lcom/lostpixels/fieldservice/internal/ministry/Visit;[Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    invoke-virtual {v6, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2848
    invoke-virtual {v2, v6}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 2849
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2850
    invoke-direct {v1, v6}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->setHeaderMargin(Landroid/widget/ListView;)V

    return-void
.end method

.method protected createOnClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1019
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v2

    const/4 v0, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-eqz v7, :cond_0

    .line 1021
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1023
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    iget-object v5, v1, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v3

    .line 1024
    const-string v5, "Person"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1025
    const-string v3, "CreateNew"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1026
    const-string v3, "CreatedFromTerritory"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1027
    invoke-virtual {v1, v2, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    move-wide v2, v5

    .line 1030
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1031
    const-string v5, "checkCommentWhenNI"

    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1033
    new-instance v8, Landroid/widget/ListView;

    invoke-direct {v8, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1035
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f030014

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1036
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    new-instance v10, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;

    const v11, 0x7f120102

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1041
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1042
    :cond_2
    new-instance v10, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v11, 0x7f120397

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f0802de

    const/16 v13, 0x16

    invoke-direct {v10, v11, v12, v13}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    new-instance v10, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v11, 0x7f1201b6

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f08025b

    const/16 v13, 0x2a

    invoke-direct {v10, v11, v12, v13}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v10

    const/16 v12, 0xa

    const v13, 0x7f08008f

    const/16 v14, 0xc

    cmp-long v15, v10, v2

    if-eqz v15, :cond_4

    .line 1047
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v3, v7, v14

    invoke-direct {v2, v3, v13, v12}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1049
    :cond_4
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/16 v3, 0xb

    aget-object v3, v7, v3

    invoke-direct {v2, v3, v13, v12}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    :goto_0
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v3, v7, v4

    const v10, 0x7f0802ae

    invoke-direct {v2, v3, v10, v4}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v3, v7, v0

    const v10, 0x7f0800d1

    invoke-direct {v2, v3, v10, v0}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/16 v3, 0x11

    aget-object v3, v7, v3

    const v10, 0x7f080182

    const/16 v11, 0xd

    invoke-direct {v2, v3, v10, v11}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/4 v3, 0x3

    aget-object v10, v7, v3

    const v11, 0x7f08016d

    invoke-direct {v2, v10, v11, v3}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/4 v3, 0x5

    aget-object v10, v7, v3

    const v11, 0x7f0801e8

    invoke-direct {v2, v10, v11, v3}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f12053b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v10, 0x7f08036f

    const/16 v11, 0x23

    invoke-direct {v2, v3, v10, v11}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/16 v3, 0x10

    aget-object v3, v7, v3

    const v10, 0x7f0802d7

    const/16 v11, 0xe

    invoke-direct {v2, v3, v10, v11}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f12045d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v10, 0x7f080298

    const/16 v12, 0x24

    invoke-direct {v2, v3, v10, v12}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f120485

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v10, 0x7f0802db

    const/16 v12, 0x2c

    invoke-direct {v2, v3, v10, v12}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;

    const v3, 0x7f120100

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lostpixels/fieldservice/ui/CommandListSectionItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    aget-object v3, v7, v11

    const v10, 0x7f080164

    invoke-direct {v2, v3, v10, v14}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/16 v3, 0x12

    aget-object v3, v7, v3

    const v10, 0x7f08016b

    const/16 v11, 0xf

    invoke-direct {v2, v3, v10, v11}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f12046e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v10, 0x7f0802b3

    const/16 v11, 0x14

    invoke-direct {v2, v3, v10, v11}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f120434

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v10, 0x7f0801ee

    const/16 v11, 0x18

    invoke-direct {v2, v3, v10, v11}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1066
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f120363

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v10, 0x7f0801e1

    const/16 v11, 0x29

    invoke-direct {v2, v3, v10, v11}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f120000

    .line 1069
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1070
    iget-boolean v3, v1, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    if-eqz v3, :cond_5

    .line 1071
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 1073
    :cond_5
    invoke-virtual {v8, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 1075
    :goto_1
    new-instance v0, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;

    const v3, 0x7f0c005e

    invoke-direct {v0, v1, v9, v3}, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;I)V

    .line 1076
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1077
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    .line 1078
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;

    move-object/from16 v2, p1

    move v4, v5

    move-object v5, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$9;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Landroidx/appcompat/app/AlertDialog;Z[Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    invoke-virtual {v8, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1339
    invoke-virtual {v3, v8}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1340
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1341
    invoke-direct {v1, v8}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->setHeaderMargin(Landroid/widget/ListView;)V

    return-void
.end method

.method protected displayFilterDialog()V
    .locals 9

    .line 745
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 749
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 751
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 752
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/4 v4, 0x0

    aget-object v5, v0, v4

    const v6, 0x7f0802ae

    invoke-direct {v3, v5, v6, v4}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/4 v5, 0x1

    aget-object v6, v0, v5

    const v7, 0x7f0800d1

    invoke-direct {v3, v6, v7, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/4 v6, 0x5

    aget-object v7, v0, v6

    const v8, 0x7f0801e8

    invoke-direct {v3, v7, v8, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v6, 0x7f12053b

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08036f

    const/16 v8, 0x23

    invoke-direct {v3, v6, v7, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/4 v6, 0x3

    aget-object v7, v0, v6

    const v8, 0x7f08016d

    invoke-direct {v3, v7, v8, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/16 v6, 0x10

    aget-object v6, v0, v6

    const v7, 0x7f0802d7

    const/16 v8, 0xe

    invoke-direct {v3, v6, v7, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/16 v6, 0x12

    aget-object v6, v0, v6

    const v7, 0x7f08016b

    const/16 v8, 0xf

    invoke-direct {v3, v6, v7, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v6, 0x7f1203e6

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08016f

    const/16 v8, 0x9

    invoke-direct {v3, v6, v7, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v6, 0x7f12046e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0802b3

    const/16 v8, 0x14

    invoke-direct {v3, v6, v7, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v6, 0x7f12045d

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080298

    const/16 v8, 0x24

    invoke-direct {v3, v6, v7, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v6, 0x7f120434

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0801ee

    const/16 v8, 0x18

    invoke-direct {v3, v6, v7, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v6, 0x7f120363

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0801e1

    const/16 v8, 0x29

    invoke-direct {v3, v6, v7, v8}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v3, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const/16 v6, 0x11

    aget-object v0, v0, v6

    const v6, 0x7f080182

    const/16 v7, 0xd

    invoke-direct {v3, v0, v6, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    new-instance v0, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1203f6

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080164

    const/16 v7, 0xc

    invoke-direct {v0, v3, v6, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    new-instance v0, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1204a7

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0802fb

    const/16 v7, 0x15

    invoke-direct {v0, v3, v6, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    new-instance v0, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f120485

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0802db

    const/16 v7, 0x2c

    invoke-direct {v0, v3, v6, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    new-instance v0, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f12038d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f080173

    const/16 v7, 0x1f

    invoke-direct {v0, v3, v6, v7}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1203ec

    .line 771
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 772
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    if-eqz v3, :cond_0

    .line 773
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 777
    :goto_0
    new-instance v3, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;

    invoke-direct {v3, p0, v2}, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 778
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 779
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 780
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;

    invoke-direct {v2, p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$6;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 860
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 861
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 862
    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$7;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$7;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 877
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 878
    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->setHeaderMargin(Landroid/widget/ListView;)V

    return-void
.end method

.method public enableBackButton()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 406
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 407
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mToolBarNavigationListenerIsRegistered:Z

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$2;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;->setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mToolBarNavigationListenerIsRegistered:Z

    :cond_0
    return-void
.end method

.method public getBottomHeightOffset()I
    .locals 1

    .line 3918
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getParentLayout()Landroid/view/View;
    .locals 1

    .line 3922
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->parentLayout:Landroid/view/View;

    return-object v0
.end method

.method public isEditMode()Z
    .locals 1

    .line 4039
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->editActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isMapView()Z
    .locals 1

    .line 2908
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbMapVisible:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 1403
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v4, v0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_1e

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_12

    if-eq v2, v8, :cond_0

    if-ne v2, v6, :cond_11

    .line 1408
    :cond_0
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 1409
    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 1410
    invoke-virtual {v12}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 1411
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v14

    move/from16 v16, v10

    iget-wide v9, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->miVisitID:J

    cmp-long v17, v14, v9

    if-nez v17, :cond_1

    move-object v8, v13

    const/4 v10, 0x1

    goto :goto_3

    :cond_1
    move/from16 v10, v16

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    move/from16 v16, v10

    :goto_3
    if-eqz v10, :cond_3

    goto :goto_4

    :cond_3
    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    move/from16 v16, v10

    :goto_4
    if-eqz v10, :cond_5

    goto :goto_5

    :cond_5
    const/4 v9, 0x1

    goto :goto_0

    .line 1424
    :cond_6
    :goto_5
    const-string v6, "PersonID"

    const-wide/16 v9, -0x1

    invoke-virtual {v3, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-eqz v6, :cond_10

    .line 1428
    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v6

    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v6, v11, v9, v10}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 1434
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setHouseHolder(J)V

    .line 1435
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1436
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_7

    .line 1437
    invoke-virtual {v8, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setType(I)V

    .line 1440
    :cond_7
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1441
    :cond_8
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1442
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1445
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    goto :goto_6

    .line 1446
    :cond_9
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isPhoneNumber()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1450
    :cond_a
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 1451
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    goto :goto_6

    .line 1453
    :cond_b
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setName(Ljava/lang/String;)V

    .line 1456
    :cond_c
    :goto_6
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1457
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getCellPhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setCellNumber(Ljava/lang/String;)V

    .line 1458
    :cond_d
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1459
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getHomePhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setPhoneNumber(Ljava/lang/String;)V

    .line 1461
    :cond_e
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v5}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setDate(Ljava/util/Date;)V

    .line 1462
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v5

    if-ne v5, v4, :cond_f

    .line 1463
    invoke-virtual {v8, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setVisitInterested(Z)V

    .line 1464
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setDate(Ljava/util/Date;)V

    goto :goto_7

    :cond_f
    const/4 v4, 0x1

    .line 1466
    invoke-virtual {v8, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setVisitInterested(Z)V

    .line 1467
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setDate(Ljava/util/Date;)V

    .line 1472
    :cond_10
    :goto_7
    new-instance v4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$12;

    invoke-direct {v4, v0, v8}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$12;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    invoke-static {v4}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    .line 1478
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setLastUpdated()V

    .line 1479
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 1481
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    if-eqz v4, :cond_11

    .line 1482
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->updateInfoWindow()V

    .line 1487
    :cond_11
    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updateStatistics()V

    goto/16 :goto_9

    :cond_12
    if-ne v1, v6, :cond_14

    if-ne v2, v8, :cond_1e

    .line 1490
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 1491
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1492
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    if-eqz v4, :cond_13

    .line 1493
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 1495
    :cond_13
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 1496
    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updateStatistics()V

    goto/16 :goto_9

    :cond_14
    if-ne v1, v4, :cond_16

    if-ne v2, v8, :cond_1e

    .line 1500
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 1501
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1502
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    if-eqz v4, :cond_15

    .line 1503
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 1505
    :cond_15
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 1506
    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updateStatistics()V

    goto/16 :goto_9

    :cond_16
    if-ne v1, v5, :cond_18

    if-ne v2, v8, :cond_1e

    .line 1510
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 1511
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1512
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    if-eqz v4, :cond_17

    .line 1513
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 1515
    :cond_17
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 1516
    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updateStatistics()V

    goto/16 :goto_9

    :cond_18
    const/16 v4, 0x8

    if-ne v1, v4, :cond_1a

    if-ne v2, v8, :cond_1e

    .line 1520
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 1521
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1522
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    if-eqz v4, :cond_19

    .line 1523
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 1525
    :cond_19
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 1526
    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updateStatistics()V

    goto :goto_9

    :cond_1a
    const/4 v4, 0x5

    if-ne v1, v4, :cond_1d

    if-ne v2, v8, :cond_1e

    .line 1530
    const-string v4, "Street"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1531
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 1532
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->updateStreet(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    goto :goto_8

    .line 1533
    :cond_1b
    const-string v4, "Address"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1534
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v4

    .line 1535
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v4}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->updateAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 1537
    :cond_1c
    :goto_8
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 1538
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    goto :goto_9

    :cond_1d
    const/4 v4, 0x7

    if-ne v1, v4, :cond_1e

    if-ne v2, v8, :cond_1e

    .line 1542
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->saveFile()V

    .line 1543
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 1544
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1545
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    if-eqz v4, :cond_1e

    .line 1546
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 1552
    :cond_1e
    :goto_9
    invoke-super/range {p0 .. p3}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAddNewStreet()V
    .locals 1

    const/4 v0, 0x0

    .line 3898
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 424
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 426
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbRestart:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->enableBackButton()V

    .line 432
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 435
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 436
    const-string v1, "IsEditMode"

    const/4 v2, 0x0

    const-string v3, "TerritoryID"

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v4, :cond_2

    .line 437
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 438
    const-string v0, "TempTerritory"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTemporaryTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 441
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 442
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->startEditActionMode()V

    goto :goto_1

    .line 445
    :cond_2
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v4, :cond_3

    .line 446
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v4

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v3

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 447
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 448
    invoke-virtual {v4, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->setShowAddress(I)V

    goto :goto_0

    .line 451
    :cond_3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 452
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->startEditActionMode()V

    .line 456
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 457
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->startEditActionMode()V

    :cond_5
    const v0, 0x7f090434

    .line 459
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->parentLayout:Landroid/view/View;

    .line 462
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getLastUpdated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mInitialDate:Ljava/util/Date;

    const v0, 0x7f090053

    .line 463
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/ui/SortFilter;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    .line 464
    new-instance v3, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string v5, "Street"

    const v6, 0x7f080304

    const v7, 0x7f080305

    invoke-direct/range {v3 .. v9}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;-><init>(ILjava/lang/String;IIIZ)V

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/ui/SortFilter;->addTabMember(Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;)V

    .line 466
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    new-instance v3, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-string v5, "All"

    const v6, 0x7f080186

    const v7, 0x7f080187

    invoke-direct/range {v3 .. v9}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;-><init>(ILjava/lang/String;IIIZ)V

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/ui/SortFilter;->addTabMember(Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;)V

    .line 468
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    new-instance v3, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;

    const/4 v4, 0x2

    const-string v5, "Interested"

    const v6, 0x7f080351

    const v7, 0x7f080352

    invoke-direct/range {v3 .. v9}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;-><init>(ILjava/lang/String;IIIZ)V

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/ui/SortFilter;->addTabMember(Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;)V

    .line 470
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    new-instance v3, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;

    const/4 v4, 0x3

    const-string v5, "Not visited"

    const v6, 0x7f0802b1

    const v7, 0x7f0802b2

    invoke-direct/range {v3 .. v9}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;-><init>(ILjava/lang/String;IIIZ)V

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/ui/SortFilter;->addTabMember(Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;)V

    .line 472
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    new-instance v3, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;

    const/4 v4, 0x4

    const-string v5, ""

    const v6, 0x7f080140

    const v7, 0x7f080141

    invoke-direct/range {v3 .. v9}, Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;-><init>(ILjava/lang/String;IIIZ)V

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/ui/SortFilter;->addTabMember(Lcom/lostpixels/fieldservice/ui/SortFilter$TabMember;)V

    .line 474
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/SortFilter;->setSelected(I)V

    .line 476
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v3, "TerritoryListFragment"

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    if-nez v0, :cond_6

    .line 478
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    .line 479
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v4, 0x7f090231

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    .line 480
    invoke-virtual {v0, v4, v5, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 483
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v3, "TerritoryMapFragment"

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapOuterFragment:Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;

    if-nez v0, :cond_7

    .line 486
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapOuterFragment:Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;

    goto :goto_2

    .line 488
    :cond_7
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->getFragment()Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    .line 490
    :goto_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 491
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    if-eqz v0, :cond_8

    .line 492
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 494
    :cond_8
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFilterDate:Ljava/util/Calendar;

    if-nez v0, :cond_9

    .line 495
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFilterDate:Ljava/util/Calendar;

    .line 496
    :cond_9
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updateStatistics()V

    .line 497
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updateFilterInfo()V

    .line 499
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/ui/SortFilter;->setOnTabClickListener(Lcom/lostpixels/fieldservice/ui/SortFilter$OnTabClickListener;)V

    if-eqz p1, :cond_d

    .line 576
    const-string v0, "FilterOptions"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 578
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    if-nez v0, :cond_a

    .line 580
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/SortFilter;->setSelected(I)V

    goto :goto_3

    :cond_a
    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    .line 582
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/ui/SortFilter;->setSelected(I)V

    goto :goto_3

    :cond_b
    if-ne v0, v1, :cond_c

    .line 584
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/ui/SortFilter;->setSelected(I)V

    goto :goto_3

    .line 586
    :cond_c
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/lostpixels/fieldservice/ui/SortFilter;->setSelected(I)V

    :cond_d
    :goto_3
    if-eqz p1, :cond_e

    .line 588
    const-string v0, "FilterStreet"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 589
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    if-eqz v0, :cond_e

    .line 590
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 591
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mSortFilter:Lcom/lostpixels/fieldservice/ui/SortFilter;

    invoke-virtual {v0, v2, v1}, Lcom/lostpixels/fieldservice/ui/SortFilter;->setChecked(IZ)V

    :cond_e
    if-eqz p1, :cond_f

    .line 594
    const-string v0, "IsMapView"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 595
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbMapVisible:Z

    .line 598
    :cond_f
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    .line 599
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->testOldTerritory()V

    .line 601
    :cond_10
    const-string p1, "TerritoryList.onCreate"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_11

    .line 604
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$$ExternalSyntheticLambda0;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    :goto_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .line 622
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const v0, 0x7f1203d5

    .line 625
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f08015c

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 628
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result v0

    const v3, 0x7f1204e9

    const/4 v4, 0x1

    const/16 v5, 0xb

    if-eqz v0, :cond_1

    .line 629
    invoke-interface {p1, v1, v5, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0801ed

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 632
    :cond_1
    invoke-interface {p1, v1, v5, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f080204

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :goto_0
    const v0, 0x7f12044f

    .line 635
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x14

    invoke-interface {p1, v1, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f080076

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 636
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 2888
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isEditMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2890
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2891
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawerView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    return v1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 2895
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mInitialDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getLastUpdated()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_2

    const/4 v2, -0x1

    .line 2897
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    :cond_2
    if-ne p1, v0, :cond_3

    .line 2899
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->editActionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v0, :cond_3

    .line 2900
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 2904
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMapInitDone()V
    .locals 2

    .line 3831
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapOuterFragment:Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;

    if-eqz v0, :cond_2

    .line 3832
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->getFragment()Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    .line 3833
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 3834
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    .line 3835
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbMapPositionSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3836
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbMapPositionSet:Z

    .line 3837
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->setDefaultLocation()V

    .line 3840
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showOnMapVisit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz v0, :cond_1

    .line 3841
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->showOnMap(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    const/4 v0, 0x0

    .line 3842
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showOnMapVisit:Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    return-void

    .line 3843
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mCamPos:Lcom/google/android/gms/maps/model/CameraPosition;

    if-eqz v0, :cond_2

    .line 3844
    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 3845
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->getInternalMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 669
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v5, 0xe

    if-eq v0, v5, :cond_2

    const/16 v5, 0x10

    if-eq v0, v5, :cond_1

    const v5, 0x102002c

    if-eq v0, v5, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 732
    :pswitch_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->startEditActionMode()V

    goto/16 :goto_1

    .line 709
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.lostpixels.fieldservice"

    const-string v7, "com.lostpixels.fieldservice.ImportDialogAliasWeb"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 712
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 713
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 716
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 717
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/lostpixels/fieldservice/receivers/ImportProxyWebEnablerReceiver;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v5, 0x117d6

    const/high16 v6, 0xc000000

    .line 718
    invoke-static {p0, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 720
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 721
    invoke-virtual {v5, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 722
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    :pswitch_2
    const/16 v0, 0x14

    .line 735
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showPopup(I)V

    goto :goto_1

    .line 738
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 705
    :cond_1
    invoke-static {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListPermissionsDispatcher;->updateAllPositionsFromAddressWithPermissionCheck(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 695
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    goto :goto_1

    .line 699
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/TerritoryOverviewDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 700
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v1

    const-string v3, "TerritoryID"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 701
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 725
    :cond_4
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 726
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showList()V

    goto :goto_0

    .line 728
    :cond_5
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->showMap()V

    .line 729
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    goto :goto_1

    :cond_6
    const v0, 0x7f1201be

    .line 671
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1201bd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 673
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1201bc

    .line 674
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 675
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$5;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$5;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    invoke-virtual {v0, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 690
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 691
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 741
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 3116
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 3118
    invoke-static {p0, p1, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListPermissionsDispatcher;->onRequestPermissionsResult(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;I[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 964
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_7

    .line 967
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mInitialDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 968
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mInitialDate:Ljava/util/Date;

    .line 969
    :cond_0
    const-string v0, "StartDate"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 970
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mInitialDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 972
    :cond_1
    const-string v0, "FilterOptions"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    .line 973
    const-string v0, "FilterStreet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    .line 974
    const-string v0, "IsMapView"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbMapVisible:Z

    if-eqz v0, :cond_2

    .line 976
    const-string v0, "MapPosSet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbMapPositionSet:Z

    .line 979
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTemporaryTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "TempTerritory"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 980
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTemporaryTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 982
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-eqz v1, :cond_4

    .line 983
    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 984
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-eqz v1, :cond_5

    .line 985
    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 986
    :cond_5
    const-string v0, "VisitID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->miVisitID:J

    .line 988
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFilterDate:Ljava/util/Calendar;

    if-nez v0, :cond_6

    .line 989
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFilterDate:Ljava/util/Calendar;

    .line 990
    :cond_6
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFilterDate:Ljava/util/Calendar;

    const-string v1, "FilterTime"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_7
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 996
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mInitialDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 997
    const-string v1, "StartDate"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 998
    :cond_0
    const-string v0, "FilterOptions"

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 999
    const-string v0, "FilterStreet"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1000
    const-string v0, "IsMapView"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1001
    const-string v0, "VisitID"

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->miVisitID:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1002
    const-string v0, "MapPosSet"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbMapPositionSet:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1003
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v0

    const-string v2, "TerritoryID"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFilterDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-string v2, "FilterTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1007
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->editActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "IsEditMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1009
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTemporaryTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-eqz v0, :cond_3

    .line 1010
    const-string v1, "TempTerritory"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1011
    :cond_3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onShouldAddAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Z
    .locals 1

    .line 3914
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->shouldDisplayAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onShouldAddStreet(Lcom/lostpixels/fieldservice/internal/ministry/Street;)Z
    .locals 1

    .line 3909
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->shouldDisplayStreet(Lcom/lostpixels/fieldservice/internal/ministry/Street;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onShouldAddVisit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Z
    .locals 3

    .line 3903
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->miVisitID:J

    .line 3904
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->meFilterOptions:I

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mFilterDate:Ljava/util/Calendar;

    invoke-static {v0, p1, v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->shouldAddVisit(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Visit;ILjava/util/Calendar;)Z

    move-result p1

    return p1
.end method

.method public onShouldCreateVisit(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 4

    .line 3927
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/CreateAreaDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3928
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v1

    const-string v3, "TerritoryID"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3930
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3933
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3934
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3935
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3936
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 3937
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3940
    :cond_1
    const-string v1, "Position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3941
    const-string p1, "HideAdd"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3942
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->getStreet()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3943
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->getStreet()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PrefStreet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3944
    :cond_2
    const-string p1, "Streets"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 3945
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public onShouldTagVisit(Lcom/google/android/gms/maps/model/LatLng;)Z
    .locals 3

    .line 3951
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3952
    const-string v1, "Position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3953
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v1

    const-string p1, "Territory"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3954
    const-string p1, "Type"

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x7

    .line 3956
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public onStreetClicked(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 1

    .line 3890
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3891
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    return-void

    .line 3893
    :cond_0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    return-void
.end method

.method public onVisitClicked(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 2

    .line 3852
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->miVisitID:J

    .line 3853
    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->createOnClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    return-void
.end method

.method public onVisitLongClicked(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 2

    .line 3881
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->miVisitID:J

    .line 3882
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3883
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    return-void

    .line 3885
    :cond_0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->addNewApartment(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    return-void
.end method

.method public onVisitLongClicked(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 2

    .line 3858
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->miVisitID:J

    .line 3859
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3860
    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    return-void

    .line 3862
    :cond_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 3863
    :cond_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->removeVisit(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    goto :goto_0

    .line 3865
    :cond_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->removeAddress(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 3868
    :goto_0
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->removeEmptyAddresses()V

    .line 3870
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->update(Z)V

    .line 3871
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isMapView()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3872
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    if-eqz p1, :cond_4

    .line 3873
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    :cond_4
    return-void
.end method

.method public openBuildingDialog()V
    .locals 2

    .line 3697
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openBuildingDialog(Ljava/lang/String;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void
.end method

.method public openBuildingDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 1

    const/4 v0, 0x0

    .line 3701
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openBuildingDialog(Ljava/lang/String;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Visit;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void
.end method

.method openCallVisitDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Z)V
    .locals 5

    .line 1351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1354
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    :cond_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1357
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 1364
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 1366
    :cond_2
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1367
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 1371
    :cond_3
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1373
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$PhoneAdapter;

    const v2, 0x1090012

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$PhoneAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x7f120059

    .line 1375
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$10;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$10;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1382
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$11;

    invoke-direct {v0, p0, v1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$11;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Landroid/widget/ArrayAdapter;Z)V

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1397
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public openPhoneTerritoryDialog()V
    .locals 2

    .line 3635
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openPhoneTerritoryDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void
.end method

.method public openRuralDialog()V
    .locals 2

    .line 3665
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openRuralDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void
.end method

.method public openStreetDialog()V
    .locals 2

    .line 3737
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->openStreetDialog(Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void
.end method

.method protected saveFile()V
    .locals 1

    .line 951
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$8;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$8;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method

.method showDeniedForPosition()V
    .locals 2

    .line 3109
    const-string v0, "Permission denied"

    const-string v1, "ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f120279

    .line 3110
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected showList()V
    .locals 5

    const/4 v0, 0x0

    .line 3501
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbMapVisible:Z

    .line 3502
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    if-eqz v0, :cond_0

    .line 3503
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->getInternalMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mCamPos:Lcom/google/android/gms/maps/model/CameraPosition;

    .line 3505
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3506
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 3508
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mListFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/Fragment;

    const-string v3, "TerritoryListFragment"

    const v4, 0x7f090231

    invoke-virtual {v1, v4, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 3509
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    const/4 v0, 0x0

    .line 3510
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 3511
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected showMap()V
    .locals 9

    const/4 v0, 0x1

    .line 3469
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mbMapVisible:Z

    .line 3470
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3471
    new-instance v0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;

    const v1, 0x7f12025c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DontShowMap"

    invoke-direct {v0, p0, v1, v2}, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->show()V

    move-object v2, p0

    goto :goto_0

    .line 3473
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3476
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 3477
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3478
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 3479
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 3481
    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v4, v1, 0x2

    const v0, 0x7f12052b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f12052c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TapOnMap"

    const v8, 0x7f080353

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/lostpixels/fieldservice/ui/OverlayHelper;->showTapTargetPrompt(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3483
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3484
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 3485
    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapOuterFragment:Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Landroidx/fragment/app/Fragment;

    const-string v4, "TerritoryMapFragment"

    const v5, 0x7f090231

    invoke-virtual {v1, v5, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 3486
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    const/4 v0, 0x0

    .line 3487
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 3488
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 3490
    iget-object v0, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    if-eqz v0, :cond_1

    .line 3491
    iget-object v1, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    .line 3492
    iget-object v0, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->update()V

    :cond_1
    return-void
.end method

.method public showPopup(I)V
    .locals 7

    .line 641
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 642
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 643
    new-instance p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$4;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 650
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result p1

    .line 651
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0xa

    const v3, 0x7f1201bc

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_0

    const v2, 0x7f0801d5

    goto :goto_0

    :cond_0
    const v2, 0x7f0801d6

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 652
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0xd

    const v3, 0x7f1201c0

    const/4 v5, 0x1

    invoke-interface {v1, v4, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_1

    const v2, 0x7f080240

    goto :goto_1

    :cond_1
    const v2, 0x7f080241

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 653
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x2

    const v3, 0x7f120130

    const/16 v6, 0xe

    invoke-interface {v1, v4, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_2

    const v2, 0x7f080237

    goto :goto_2

    :cond_2
    const v2, 0x7f080238

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 654
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x3

    const v3, 0x7f120521

    const/16 v6, 0x10

    invoke-interface {v1, v4, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_3

    const v2, 0x7f080259

    goto :goto_3

    :cond_3
    const v2, 0x7f08025a

    :goto_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 656
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 657
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x4

    const v3, 0x7f12047f

    const/16 v6, 0x15

    invoke-interface {v1, v4, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_4

    const p1, 0x7f0800bb

    goto :goto_4

    :cond_4
    const p1, 0x7f0800bc

    :goto_4
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 659
    :cond_5
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    instance-of p1, p1, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_6

    .line 661
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 662
    invoke-virtual {p1, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setOptionalIconsVisible(Z)V

    .line 664
    :cond_6
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method

.method showRationaleForPosition(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 4

    .line 3088
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12027c

    .line 3090
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 3091
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$23;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$23;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lpermissions/dispatcher/PermissionRequest;)V

    .line 3092
    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$22;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$22;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lpermissions/dispatcher/PermissionRequest;)V

    const p1, 0x7f12004b

    .line 3097
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3102
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 3103
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method showUpdatePositionDialog(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 4

    .line 3448
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120491

    .line 3449
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$27;

    invoke-direct {v2, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$27;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    .line 3450
    const-string v3, "GPS"

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12035c

    .line 3455
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$26;

    invoke-direct {v3, p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$26;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3462
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 3463
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method updateAllPositionsFromAddress()V
    .locals 3

    .line 2914
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2915
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getCity()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2918
    :goto_0
    new-instance v1, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$21;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;)V

    invoke-direct {v1, v2, p0, v0}, Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask;-><init>(Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask$CurrentCityListener;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 3083
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
