.class public Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$OnSchoolAddedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;,
        Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolViewHolder;
    }
.end annotation


# instance fields
.field final mComperator:Ljava/util/Comparator;

.field private final mMonthFormat:Ljava/text/SimpleDateFormat;

.field marrSchoolInfo:Ljava/util/ArrayList;

.field private mlstAdapter:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;

.field private mlwSchools:Landroid/widget/ListView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMonthFormat(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->mMonthFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmlstAdapter(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->mlstAdapter:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mopenAddSchoolDlg(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->openAddSchoolDlg()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;-><init>()V

    .line 43
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->mComperator:Ljava/util/Comparator;

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->mMonthFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)Lio/realm/Realm;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)Lio/realm/Realm;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)Lio/realm/Realm;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)Lio/realm/Realm;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method private openAddSchoolDlg()V
    .locals 3

    .line 91
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;-><init>()V

    .line 92
    invoke-virtual {v0, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg;->setListener(Lcom/lostpixels/fieldservice/activities/servicereport/AddSchoolDlg$OnSchoolAddedListener;)V

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 94
    const-string v2, "fragment_deduct_time"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private setupSchoolList()V
    .locals 12

    .line 98
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->marrSchoolInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->marrSchoolInfo:Ljava/util/ArrayList;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->marrSchoolInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v2

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 106
    :goto_0
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v4, v5, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isYearEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    if-le v0, v2, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->marrSchoolInfo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->mComperator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;

    const v1, 0x7f0c0119

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->marrSchoolInfo:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;Landroid/app/Activity;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->mlstAdapter:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;

    .line 126
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->mlwSchools:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 107
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v4

    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v4, v5, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v4

    const/16 v5, 0xc

    :goto_2
    if-lez v5, :cond_4

    const/4 v6, 0x5

    .line 109
    invoke-virtual {v3, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 110
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v6

    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceYear2Year(II)I

    move-result v6

    invoke-virtual {v3, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 111
    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v6

    sub-int/2addr v6, v1

    const/4 v7, 0x2

    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 112
    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v6

    .line 113
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getSchoolInfoItem()Lio/realm/RealmList;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 114
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getSchoolInfoItem()Lio/realm/RealmList;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 115
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->marrSchoolInfo:Ljava/util/ArrayList;

    new-instance v9, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v7

    invoke-direct {v9, p0, v10, v11, v7}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;Ljava/lang/String;Ljava/util/Date;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c006b

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0900f5

    .line 60
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090363

    .line 61
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->mlwSchools:Landroid/widget/ListView;

    const v0, 0x7f09010a

    .line 62
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090568

    .line 64
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->mlwSchools:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 67
    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$2;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$2;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance p1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$3;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$3;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance p1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$4;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$4;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->setupSchoolList()V

    return-void
.end method

.method public onSchoolAdded(Ljava/lang/String;Ljava/util/Date;I)V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->marrSchoolInfo:Ljava/util/ArrayList;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;Ljava/lang/String;Ljava/util/Date;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v1, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-direct {v1, p1, p3}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->addSchoolItem(Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;)V

    .line 134
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->marrSchoolInfo:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->mComperator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->mlstAdapter:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 139
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-virtual {p1, v0, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneerOrMissionary()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-virtual {p1, v0, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 142
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 143
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 144
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v3, p1, :cond_1

    .line 145
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120326

    .line 146
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;

    invoke-direct {v1, p0, p2, p3}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;Ljava/util/Date;I)V

    const p2, 0x7f12055b

    .line 147
    invoke-virtual {v0, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$5;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$5;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)V

    const v0, 0x7f12045b

    .line 161
    invoke-virtual {p2, v0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public removeSchool(I)V
    .locals 4

    .line 172
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120151

    .line 174
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 175
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->marrSchoolInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;->sName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120158

    .line 176
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;

    invoke-direct {v3, p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;I)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120152

    .line 186
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$7;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$7;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
