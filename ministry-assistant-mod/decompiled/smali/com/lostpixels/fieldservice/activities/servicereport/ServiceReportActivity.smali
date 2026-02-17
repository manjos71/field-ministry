.class public Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;
.implements Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$OnUpdateReportListener;
.implements Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;,
        Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;
    }
.end annotation


# instance fields
.field final ID_ADD_REPORT:I

.field final ID_DEDUCT_TIME:I

.field final ID_JUST_TRANSFER:I

.field final ID_OVERFLOW:I

.field final ID_OVERFLOW_SHARE:I

.field final ID_SEND_MAIL:I

.field final ID_SEND_SMS:I

.field final ID_SET_GOAL:I

.field final ID_SET_PROFILE:I

.field final ID_SHARE_HOURGLASS:I

.field final ID_SHARE_JWS_PUBLISHER:I

.field final ID_SHARE_REPORT:I

.field final ID_VIEW_AS_CALENDAR:I

.field final ID_VIEW_CHART:I

.field private gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field gestureListener:Landroid/view/View$OnTouchListener;

.field private mCalendarFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

.field private mDailyFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

.field private final mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

.field private mMonthFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

.field private mPager:Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;

.field private mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

.field private mYearFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

.field private mbCustom1:Z

.field private mbCustom2:Z

.field private mbCustom3:Z

.field private mbIsCalendarView:Z

.field private mbIsHhmm:Z

.field private mbIsKilometers:Z

.field private mbReportMileage:Z

.field private mbReportQuarters:Z

.field meReportType:I

.field private miCurrentProfile:I


# direct methods
.method static bridge synthetic -$$Nest$fgetgestureDetector(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Landroidx/core/view/GestureDetectorCompat;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCalendarFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mCalendarFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDailyFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mDailyFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMonthFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mMonthFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmYearFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mYearFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmbIsCalendarView(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsCalendarView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmbReportQuarters(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbReportQuarters:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCalendarFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mCalendarFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDailyFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mDailyFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmiCurrentProfile(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->miCurrentProfile:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCurrentMonth(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Ljava/util/Date;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentMonth()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCurrentYear(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Ljava/util/Date;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentYear()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetProfile(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;Ljava/util/Calendar;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->setProfile(Ljava/util/Calendar;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTitle(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateTitle()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c012c

    .line 155
    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;-><init>(I)V

    const/16 v0, 0xa

    .line 105
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->ID_SET_PROFILE:I

    const/16 v0, 0xb

    .line 106
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->ID_SET_GOAL:I

    const/16 v0, 0xc

    .line 107
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->ID_ADD_REPORT:I

    const/16 v0, 0xd

    .line 108
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->ID_SEND_SMS:I

    const/16 v0, 0xe

    .line 109
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->ID_SEND_MAIL:I

    const/16 v0, 0xf

    .line 110
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->ID_VIEW_CHART:I

    const/16 v0, 0x10

    .line 111
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->ID_SHARE_REPORT:I

    const/16 v0, 0x11

    .line 112
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->ID_DEDUCT_TIME:I

    const/16 v0, 0x12

    .line 113
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->ID_OVERFLOW_SHARE:I

    const/16 v0, 0x13

    .line 114
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->ID_OVERFLOW:I

    const/16 v0, 0x14

    .line 115
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->ID_JUST_TRANSFER:I

    const/16 v0, 0x15

    .line 116
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->ID_SHARE_HOURGLASS:I

    const/16 v0, 0x16

    .line 117
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->ID_VIEW_AS_CALENDAR:I

    const/16 v0, 0x17

    .line 118
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->ID_SHARE_JWS_PUBLISHER:I

    .line 138
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsCalendarView:Z

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lio/realm/Realm;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lio/realm/Realm;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lio/realm/Realm;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Lio/realm/Realm;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mDrawer:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object p0
.end method

.method private displayProfileList()V
    .locals 7

    .line 673
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 675
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 676
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f12049e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f12037b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    invoke-direct {v2, v3, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f12036c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    invoke-direct {v2, v3, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f12036d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1204a8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-direct {v2, v3, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1204f5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    invoke-direct {v2, v3, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f1204f4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    invoke-direct {v2, v3, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f12039a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x7

    invoke-direct {v2, v3, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f120448

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    invoke-direct {v2, v3, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    new-instance v2, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;

    const v3, 0x7f120447

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x9

    invoke-direct {v2, v3, v6}, Lcom/lostpixels/fieldservice/ui/CommandListActionItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1201ae

    .line 688
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 689
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->mbIsLightTheme:Z

    if-eqz v3, :cond_0

    .line 690
    invoke-virtual {v2, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 692
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 694
    :goto_0
    new-instance v3, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;

    const v4, 0x7f0c005d

    const v5, 0x7f0c005c

    invoke-direct {v3, p0, v1, v4, v5}, Lcom/lostpixels/fieldservice/adapters/CommandListAdaper;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;II)V

    .line 695
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 696
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 697
    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;

    invoke-direct {v2, p0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 749
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 750
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private getCurrentMonth()Ljava/util/Date;
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mMonthFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->getMonth()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 949
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method private getCurrentYear()Ljava/util/Date;
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mYearFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    if-eqz v0, :cond_0

    .line 954
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->getYear()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 956
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method private getMonthReport(Landroid/content/SharedPreferences;Ljava/text/SimpleDateFormat;)Ljava/lang/StringBuilder;
    .locals 19

    move-object/from16 v1, p0

    .line 570
    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getShareReportDate()Ljava/util/Date;

    move-result-object v0

    .line 572
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    const-string v2, "reportName"

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 575
    const-string v15, "\n"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const v5, 0x7f1204ab

    .line 576
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v2, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move-object/from16 v2, p2

    .line 580
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    iget-object v5, v1, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    .line 583
    invoke-virtual {v2, v5, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v2

    .line 584
    invoke-virtual {v2, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v0

    .line 585
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v5

    .line 586
    invoke-static {v2, v0}, Lcom/lostpixels/fieldservice/utils/ReportUtils;->sendOnlyBeenOutInMinistry(Lcom/lostpixels/fieldservice/internal/report/YearReport;Lcom/lostpixels/fieldservice/internal/report/MonthReport;)Z

    move-result v2

    xor-int/lit8 v13, v2, 0x1

    move-object v2, v0

    .line 587
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    iget-boolean v6, v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbReportQuarters:Z

    iget-boolean v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsKilometers:Z

    iget-boolean v8, v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbReportMileage:Z

    iget-boolean v9, v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbCustom1:Z

    iget-boolean v10, v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbCustom2:Z

    iget-boolean v11, v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbCustom3:Z

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v12

    const/16 v16, 0x1

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/4 v4, 0x0

    move-object/from16 v18, v2

    move-object v2, v5

    const/4 v5, 0x1

    move-object/from16 p1, v15

    const/4 v15, 0x0

    invoke-static/range {v0 .. v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getReportToSend(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual/range {v18 .. v18}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getSchoolInfoItem()Lio/realm/RealmList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 592
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 593
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 595
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_2
    :goto_1
    if-ge v6, v4, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/util/ArrayList;

    .line 596
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v8

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 598
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    if-nez v5, :cond_1

    .line 603
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 604
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 609
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v6, p1

    .line 611
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    .line 615
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    const-string v8, "x"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_5
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f120418

    .line 620
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p1, v6

    goto :goto_2

    .line 623
    :cond_6
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_7
    return-object v14
.end method

.method private getShareReportDate()Ljava/util/Date;
    .locals 5

    .line 630
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 631
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 632
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentMonth()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 633
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 634
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentMonth()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    const/4 v3, 0x1

    .line 637
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    const/4 v3, 0x2

    .line 638
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v4, v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v4, 0xf

    if-ge v1, v4, :cond_0

    const/4 v1, -0x1

    .line 639
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 640
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/util/Date;->setTime(J)V

    :cond_0
    return-object v2
.end method

.method private setProfile(Ljava/util/Calendar;)V
    .locals 3

    .line 159
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 161
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->miCurrentProfile:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/16 v2, 0xb

    invoke-static {v0, p1, v2, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/16 v2, 0xa

    invoke-static {v0, p1, v2, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v2, 0x7

    invoke-static {v0, p1, v2, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    goto :goto_0

    .line 166
    :pswitch_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v2, 0x6

    invoke-static {v0, p1, v2, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    goto :goto_0

    .line 172
    :pswitch_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    goto :goto_0

    .line 181
    :pswitch_5
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v2, 0x5

    invoke-static {v0, p1, v2, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    goto :goto_0

    .line 178
    :pswitch_6
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v2, 0x4

    invoke-static {v0, p1, v2, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    goto :goto_0

    .line 175
    :pswitch_7
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v2, 0x3

    invoke-static {v0, p1, v2, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    goto :goto_0

    .line 169
    :pswitch_8
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    const/4 v2, 0x2

    invoke-static {v0, p1, v2, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    goto :goto_0

    .line 163
    :pswitch_9
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0, p1, v1, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ProfileManager;->setProfile(Lio/realm/Realm;Ljava/util/Calendar;IZ)V

    .line 193
    :goto_0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateTitle()V

    .line 194
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateReport()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setReportAsSent()V
    .locals 5

    .line 852
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 853
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 854
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentMonth()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 855
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 856
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentMonth()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    const/4 v3, 0x1

    .line 860
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    const/4 v3, 0x2

    .line 861
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v4, v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v4, 0xf

    if-ge v1, v4, :cond_0

    const/4 v1, -0x1

    .line 862
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 863
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    .line 869
    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->setSent()V

    .line 870
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->update()V

    :cond_1
    return-void
.end method

.method private transferMinutes(Ljava/util/Date;)Z
    .locals 6

    .line 899
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v1, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    .line 901
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getMinutes()I

    move-result v0

    .line 902
    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/DateUtils;->getRemaindingMinutesFromQuarters(I)I

    move-result v1

    .line 903
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbReportQuarters:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-gtz v1, :cond_1

    :cond_0
    if-nez v2, :cond_2

    if-lez v0, :cond_2

    .line 904
    :cond_1
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1201cf

    .line 905
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1201dd

    .line 906
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$8;

    invoke-direct {v5, p0, v1, v0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$8;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;IILjava/util/Date;)V

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12018a

    .line 926
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$7;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$7;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 931
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 932
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v3
.end method

.method private updateMonthReport()V
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mMonthFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->updateMonthReport()V

    :cond_0
    return-void
.end method

.method private updateReport()V
    .locals 0

    .line 875
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateMonthReport()V

    .line 876
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateYearReport()V

    return-void
.end method

.method private updateSessionList()V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mDailyFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;->updateSessionList()V

    :cond_0
    return-void
.end method

.method private updateTitle()V
    .locals 5

    .line 767
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    if-nez v0, :cond_0

    .line 768
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentMonth()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 771
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 772
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentYear()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 773
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1204dc

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 776
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f12042b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 778
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method private updateYearReport()V
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mYearFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateYearReport()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 892
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 893
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public findFragmentByPosition(I)Landroidx/fragment/app/Fragment;
    .locals 5

    .line 334
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mPager:Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentPagerAdapter;

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android:switcher:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mPager:Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;

    .line 336
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 801
    const-string v0, "Session"

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/16 v2, 0xc

    if-eq p1, v2, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 803
    :cond_0
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->update()V

    goto/16 :goto_0

    :cond_1
    if-ne p2, v1, :cond_6

    .line 815
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 816
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->hasComment()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 817
    :cond_2
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    const v0, 0x7f12035a

    .line 818
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 819
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 824
    :cond_3
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 825
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 826
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentMonth()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 827
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 828
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentMonth()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 832
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v5, v2, :cond_4

    const/4 v2, 0x2

    .line 833
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v5, v3, :cond_4

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v5, 0xf

    if-ge v3, v5, :cond_4

    .line 834
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 835
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 839
    :cond_4
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 840
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->setReportAsSent()V

    .line 843
    invoke-direct {p0, v4}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->transferMinutes(Ljava/util/Date;)Z

    goto :goto_0

    :cond_5
    if-ne p2, v1, :cond_6

    .line 807
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetTimeBehind()V

    .line 808
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 809
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->setMonthGoal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 810
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateReport()V

    .line 848
    :cond_6
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->getRealmInstance(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    .line 212
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 213
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->mbRestart:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090665

    .line 217
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mPager:Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;

    .line 219
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mPager:Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;

    invoke-direct {v0, p0, v1, v2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$ViewPagerAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;Landroidx/fragment/app/FragmentManager;Landroidx/viewpager/widget/ViewPager;)V

    .line 220
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mPager:Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v0, 0x7f0904e4

    .line 224
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    const v1, 0x7f0c0145

    const v2, 0x1020014

    .line 225
    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setCustomTabView(II)V

    .line 226
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 227
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mPager:Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 228
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    invoke-static {p0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 229
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mSlidingTabLayout:Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;

    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$2;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$2;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)V

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/ui/slidingtabs/SlidingTabLayout;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 253
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mPager:Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;->disableViewPager()V

    .line 255
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 256
    const-string v2, "inputMode"

    const-string v3, "hhmm"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsHhmm:Z

    .line 257
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom1()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbCustom1:Z

    .line 258
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom2()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbCustom2:Z

    .line 259
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom3()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbCustom3:Z

    .line 260
    const-string v2, "mileageKM"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsKilometers:Z

    .line 261
    const-string v2, "mileageInReport"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbReportMileage:Z

    const/4 v2, 0x0

    .line 263
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbReportQuarters:Z

    .line 264
    const-string v3, "calendarView"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsCalendarView:Z

    .line 266
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 269
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$MyGestureDetector;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)V

    invoke-direct {v0, p0, v3}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 270
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$3;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$3;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->gestureListener:Landroid/view/View$OnTouchListener;

    .line 277
    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->findFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 279
    instance-of v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    if-eqz v3, :cond_1

    .line 280
    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mDailyFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    goto :goto_0

    .line 282
    :cond_1
    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mCalendarFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    goto :goto_0

    .line 284
    :cond_2
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsCalendarView:Z

    if-eqz v0, :cond_3

    .line 285
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mCalendarFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportCalendarFragment;

    goto :goto_0

    .line 287
    :cond_3
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mDailyFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;

    .line 291
    :goto_0
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->findFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 293
    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mMonthFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    goto :goto_1

    .line 295
    :cond_4
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mMonthFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    :goto_1
    const/4 v0, 0x2

    .line 297
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->findFragmentByPosition(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 299
    check-cast v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mYearFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    goto :goto_2

    .line 301
    :cond_5
    new-instance v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    invoke-direct {v3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;-><init>()V

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mYearFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    .line 303
    :goto_2
    iput v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    .line 304
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mPager:Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;

    invoke-virtual {v3, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    if-eqz p1, :cond_9

    .line 306
    const-string v3, "CurrentProfile"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->miCurrentProfile:I

    .line 307
    const-string v3, "CalendarView"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsCalendarView:Z

    .line 309
    const-string v3, "ReportTypeInt"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_6

    goto :goto_3

    .line 318
    :cond_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mPager:Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;

    invoke-virtual {p1, v2, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_3

    .line 315
    :cond_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mPager:Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;

    invoke-virtual {p1, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_3

    .line 312
    :cond_8
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mPager:Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;

    invoke-virtual {p1, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 322
    :cond_9
    :goto_3
    const-string p1, "End report page"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 341
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f12012e

    .line 342
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x12

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0801d5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const v0, 0x7f12054c

    .line 344
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xf

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f080240

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_3

    .line 347
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsCalendarView:Z

    const v3, 0x7f1205f7

    const/16 v4, 0x16

    if-nez v0, :cond_2

    .line 348
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0800ed

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    goto :goto_0

    .line 351
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x7f0801ed

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    :cond_3
    :goto_0
    const v0, 0x7f12012f

    .line 355
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x13

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f080076

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 357
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 327
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onDestroy()V

    .line 329
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method public onMonthChanged(Ljava/util/Date;)V
    .locals 0

    .line 962
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateReport()V

    .line 963
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateTitle()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11

    .line 424
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 425
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "LLLL yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const-string v3, ""

    const v4, 0x7f1201bc

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 511
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 512
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getShareReportDate()Ljava/util/Date;

    move-result-object v0

    .line 513
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 515
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    .line 516
    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    .line 517
    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    .line 518
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object p1

    .line 519
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    .line 521
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0, p1, v1}, Lcom/lostpixels/fieldservice/utils/ReportUtils;->shareToNwPublisher(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)Landroid/content/Intent;

    move-result-object p1

    .line 523
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 524
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->setReportAsSent()V

    return v7

    .line 533
    :pswitch_1
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsCalendarView:Z

    xor-int/2addr p1, v7

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsCalendarView:Z

    .line 534
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "calendarView"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsCalendarView:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 535
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mPager:Lcom/lostpixels/fieldservice/ui/IgnorableViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 536
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    return v7

    .line 500
    :pswitch_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 501
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getShareReportDate()Ljava/util/Date;

    move-result-object v0

    .line 502
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 504
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    .line 505
    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    .line 506
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsHhmm:Z

    invoke-static {p0, v0, p1, v1}, Lcom/lostpixels/fieldservice/utils/ReportUtils;->shareToHourglass(Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Ljava/util/Calendar;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 507
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->setReportAsSent()V

    return v7

    .line 466
    :pswitch_3
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 467
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 468
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentMonth()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 469
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 470
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentMonth()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 474
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 475
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v3, v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v3, 0xf

    if-ge v1, v3, :cond_0

    const/4 v1, -0x1

    .line 476
    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 477
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 481
    :cond_0
    invoke-direct {p0, v2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->transferMinutes(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f120469

    .line 482
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lde/keyboardsurfer/android/widget/crouton/Style;->INFO:Lde/keyboardsurfer/android/widget/crouton/Style;

    invoke-static {p0, v0, v1}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lde/keyboardsurfer/android/widget/crouton/Style;)Lde/keyboardsurfer/android/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lde/keyboardsurfer/android/widget/crouton/Crouton;->show()V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x13

    .line 431
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->showPopupOverflow(I)V

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x12

    .line 428
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->showPopupShare(I)V

    goto :goto_0

    .line 556
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x11

    .line 557
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 564
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 488
    :pswitch_7
    invoke-direct {p0, v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getMonthReport(Landroid/content/SharedPreferences;Ljava/text/SimpleDateFormat;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 489
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 490
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string p1, "text/plain"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 494
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->setReportAsSent()V

    return v7

    .line 529
    :pswitch_8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v7

    .line 441
    :pswitch_9
    invoke-direct {p0, v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getMonthReport(Landroid/content/SharedPreferences;Ljava/text/SimpleDateFormat;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    const-string v4, "reportName"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 446
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    const v8, 0x7f1204ab

    .line 447
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_2
    const-string v4, "reportPrefix"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 452
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 453
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :cond_3
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getShareReportDate()Ljava/util/Date;

    move-result-object v4

    .line 457
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v1, "reportAddr"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1, v0, v6}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendStringAsEMail(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 462
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->setReportAsSent()V

    return v7

    .line 434
    :pswitch_a
    invoke-direct {p0, v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getMonthReport(Landroid/content/SharedPreferences;Ljava/text/SimpleDateFormat;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 435
    const-string v1, "reportNumber"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0, v6}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendStringAsSMS(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 437
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->setReportAsSent()V

    return v7

    .line 543
    :pswitch_b
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/MinistryAssistant;->hasPermissionToTrack(Landroid/app/Application;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 544
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 545
    const-string v0, "item_id"

    const-string v1, "AddToReport_ReportPage"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v0, "item_name"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v0, "content_type"

    const-string v1, "action"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->getTracker()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const-string v1, "select_content"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 550
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0xc

    .line 551
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v7

    .line 560
    :pswitch_c
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->onSetGoal()V

    return v7

    .line 539
    :pswitch_d
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->onSetProfile()V

    return v7

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReportUpdated()V
    .locals 0

    .line 941
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateReport()V

    .line 942
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateTitle()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 647
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 661
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 664
    const-string v0, "CurrentProfile"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->miCurrentProfile:I

    .line 665
    const-string v0, "CalendarView"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsCalendarView:Z

    .line 666
    const-string v0, "ReportTypeInt"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 199
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->update()V

    .line 201
    :cond_0
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantActivity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 652
    const-string v0, "CurrentProfile"

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->miCurrentProfile:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 653
    const-string v0, "ReportTypeInt"

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 654
    const-string v0, "CalendarView"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mbIsCalendarView:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 656
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSetGoal()V
    .locals 5

    .line 968
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 969
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->realm:Lio/realm/Realm;

    .line 970
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentMonth()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v2

    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentMonth()Ljava/util/Date;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthGoal(Ljava/util/Date;Z)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 971
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentMonth()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 973
    const-string v2, "IsGoal"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 974
    const-string v2, "Session"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 975
    invoke-virtual {p0, v0, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onSetProfile()V
    .locals 0

    .line 980
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->displayProfileList()V

    .line 981
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetMinistryTips()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 206
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onYearUpdated(Ljava/util/Date;)V
    .locals 0

    .line 987
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateReport()V

    .line 988
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateTitle()V

    return-void
.end method

.method public showPopupOverflow(I)V
    .locals 7

    .line 395
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 397
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 398
    new-instance p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$5;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$5;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 405
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result p1

    .line 406
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0xc

    const v3, 0x7f12019f

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_0

    const v2, 0x7f080084

    goto :goto_0

    :cond_0
    const v2, 0x7f080085

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 407
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v2, 0xa

    const v3, 0x7f12019b

    const/4 v5, 0x1

    invoke-interface {v1, v4, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_1

    const v2, 0x7f080253

    goto :goto_1

    :cond_1
    const v2, 0x7f080254

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 408
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x2

    const v3, 0x7f120168

    const/16 v6, 0xb

    invoke-interface {v1, v4, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_2

    const v2, 0x7f080188

    goto :goto_2

    :cond_2
    const v2, 0x7f080189

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 409
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x3

    const v3, 0x7f1203c3

    const/16 v6, 0x11

    invoke-interface {v1, v4, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_3

    const v2, 0x7f0801b3

    goto :goto_3

    :cond_3
    const v2, 0x7f0801b4

    :goto_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 410
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x4

    const v3, 0x7f12043f

    const/16 v6, 0x14

    invoke-interface {v1, v4, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_4

    const p1, 0x7f080370

    goto :goto_4

    :cond_4
    const p1, 0x7f080371

    :goto_4
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 412
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    instance-of p1, p1, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_5

    .line 414
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 415
    invoke-virtual {p1, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setOptionalIconsVisible(Z)V

    .line 418
    :cond_5
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method

.method public showPopupShare(I)V
    .locals 7

    .line 362
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 363
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 364
    new-instance p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$4;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$4;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 371
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result p1

    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v3, 0xd

    const v4, 0x7f1201b4

    invoke-interface {v1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_0

    const v3, 0x7f08018d

    goto :goto_0

    :cond_0
    const v3, 0x7f08018e

    :goto_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 376
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/16 v3, 0xe

    const v4, 0x7f1201b3

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_2

    const v3, 0x7f08019b

    goto :goto_1

    :cond_2
    const v3, 0x7f08019c

    :goto_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 377
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v3, 0x2

    const v4, 0x7f1201bc

    const/16 v6, 0x10

    invoke-interface {v1, v2, v6, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_3

    const v3, 0x7f0801d5

    goto :goto_2

    :cond_3
    const v3, 0x7f0801d6

    :goto_2
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 379
    const-string v1, "com.hourglass_app.hourglasstime"

    invoke-static {v1, p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 380
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v3, 0x3

    const-string v4, "Hourglass"

    const/16 v6, 0x15

    invoke-interface {v1, v2, v6, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_4

    const v3, 0x7f0801c1

    goto :goto_3

    :cond_4
    const v3, 0x7f0801c2

    :goto_3
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 382
    :cond_5
    const-string v1, "com.jwscheduler.jws"

    invoke-static {v1, p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 383
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v3, 0x4

    const-string v4, "NW Publisher"

    const/16 v6, 0x17

    invoke-interface {v1, v2, v6, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    if-nez p1, :cond_6

    const p1, 0x7f0801c3

    goto :goto_4

    :cond_6
    const p1, 0x7f0801c4

    :goto_4
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 385
    :cond_7
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    instance-of p1, p1, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_8

    .line 387
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 388
    invoke-virtual {p1, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->setOptionalIconsVisible(Z)V

    .line 390
    :cond_8
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method

.method protected showTimeDialog()V
    .locals 9

    .line 754
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 755
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->getCurrentMonth()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 756
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZZ)Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    move-result-object v0

    .line 757
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 758
    const-string v3, "checkFirstDayOfWeek"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 759
    :goto_0
    invoke-virtual {v0, v1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setFirstDayOfWeek(I)V

    const/16 v1, 0x7c1

    const/16 v2, 0x7ec

    .line 761
    invoke-virtual {v0, v1, v2}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setYearRange(II)V

    .line 762
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "datepicker"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public update()V
    .locals 0

    .line 880
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateReport()V

    .line 881
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateSessionList()V

    .line 882
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->updateTitle()V

    return-void
.end method
