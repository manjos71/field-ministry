.class public Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;,
        Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$TotalHoursAndGoals;,
        Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime;
    }
.end annotation


# instance fields
.field private goalHours:Landroid/widget/TextView;

.field private goalHoursLeft:Landroid/widget/TextView;

.field private goalHoursPerDay:Landroid/widget/TextView;

.field private isCompactFragment:Z

.field isRTLLayout:Z

.field private labelGoalHours:Landroid/widget/TextView;

.field private labelGoalHoursLeft:Landroid/widget/TextView;

.field private labelGoalHoursPerDay:Landroid/widget/TextView;

.field private listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;

.field private final mAutomaticStudies:Ljava/util/List;

.field private mCalculatedStudyMonth:Ljava/util/Date;

.field private mCurrentMonth:Ljava/util/Date;

.field private mLabelRBCHours:Landroid/widget/TextView;

.field private mLastTapTime:J

.field private mLayoutMileageMonth:Landroid/view/View;

.field private mReportSent:Landroid/widget/ImageView;

.field mView:Landroid/view/View;

.field mbCustom1IsTime:Z

.field mbCustom2IsTime:Z

.field mbCustom3IsTime:Z

.field private mbDidFling:Z

.field private mbIsHhmm:Z

.field private mbIsKilometers:Z

.field mbShowCustom1:Z

.field mbShowCustom2:Z

.field mbShowCustom3:Z

.field private meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

.field private meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

.field private miEditSession:J

.field private mlblCustom1:Landroid/widget/TextView;

.field private mlblCustom1Time:Landroid/widget/TextView;

.field private mlblCustom2:Landroid/widget/TextView;

.field private mlblCustom2Time:Landroid/widget/TextView;

.field private mlblCustom3:Landroid/widget/TextView;

.field private mlblCustom3Time:Landroid/widget/TextView;

.field private mlblHoursMonth:Landroid/widget/TextView;

.field private mlblMileageMonth:Landroid/widget/TextView;

.field private mlblStudiesMonth:Landroid/widget/TextView;

.field private mlblTotalHoursMonth:Landroid/widget/TextView;

.field private mllNewPublications:Landroid/view/View;

.field private mtxtBooksMonth:Landroid/widget/TextView;

.field private mtxtBrochuresMonth:Landroid/widget/TextView;

.field private mtxtCurMonth:Landroid/widget/TextView;

.field private mtxtCurrentProfile:Landroid/widget/TextView;

.field private mtxtCustom1:Landroid/widget/TextView;

.field private mtxtCustom1Time:Landroid/widget/TextView;

.field private mtxtCustom2:Landroid/widget/TextView;

.field private mtxtCustom2Time:Landroid/widget/TextView;

.field private mtxtCustom3:Landroid/widget/TextView;

.field private mtxtCustom3Time:Landroid/widget/TextView;

.field private mtxtHoursMonth:Landroid/widget/TextView;

.field private mtxtMagazinesMonth:Landroid/widget/TextView;

.field private mtxtManuallyAddedStudies:Landroid/widget/TextView;

.field private mtxtMileageMonth:Landroid/widget/TextView;

.field private mtxtNextMonth:Landroid/widget/TextView;

.field private mtxtPrevMonth:Landroid/widget/TextView;

.field private mtxtPublicationsMonth:Landroid/widget/TextView;

.field private mtxtRBCHoursMonth:Landroid/widget/TextView;

.field private mtxtReturnVisitsMonth:Landroid/widget/TextView;

.field private mtxtSchools:Landroid/widget/TextView;

.field private mtxtSchoolsTime:Landroid/widget/TextView;

.field private mtxtStudiesMonth:Landroid/widget/TextView;

.field private mtxtTotalHoursMonth:Landroid/widget/TextView;

.field private mtxtTractsMonth:Landroid/widget/TextView;

.field private mtxtVideoShowingsMonth:Landroid/widget/TextView;

.field private mtxtVideosMonth:Landroid/widget/TextView;

.field realm:Lio/realm/Realm;

.field reportDensity:I


# direct methods
.method public static synthetic $r8$lambda$1tWpYzOpHvlI4jOUtkwdCmIZkfc(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;Landroid/view/View;)V
    .locals 0

    .line 226
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbDidFling:Z

    if-nez p1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->showMonthDetailList()V

    :cond_0
    const/4 p1, 0x0

    .line 228
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbDidFling:Z

    return-void
.end method

.method public static synthetic $r8$lambda$3vuAVDRGw0OqjQe6GdYzY4E5mrI(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 347
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 348
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 349
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->setMonth(Ljava/util/Date;)V

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLastTapTime:J

    return-void
.end method

.method public static synthetic $r8$lambda$CPuP5wUwramZOIyv0y6CrHj7-Fc(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;Landroid/view/View;)V
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;

    .line 316
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;->onSetProfile()V

    return-void
.end method

.method public static synthetic $r8$lambda$JA_vEbDc-qyZ5MQ9Sfy0jRG--oA(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 331
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 332
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 333
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->setMonth(Ljava/util/Date;)V

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLastTapTime:J

    return-void
.end method

.method public static synthetic $r8$lambda$R1k8jY3RYjdYRhilPRVr73qmp1I(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;Landroid/view/View;)V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;

    .line 313
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;->onSetGoal()V

    return-void
.end method

.method public static synthetic $r8$lambda$cr2JgD6mFFPVfMYICVY-6CXU8Vs(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 321
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 322
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 324
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->setMonth(Ljava/util/Date;)V

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLastTapTime:J

    return-void
.end method

.method public static synthetic $r8$lambda$ws3vDT0kgS67Az74sXOsm2B6Tuc(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 339
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 340
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 341
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->setMonth(Ljava/util/Date;)V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLastTapTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmiEditSession(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->miEditSession:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 150
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mAutomaticStudies:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 147
    iput-wide v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLastTapTime:J

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->isCompactFragment:Z

    .line 151
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbDidFling:Z

    return-void
.end method

.method private countAutomaticStudies()V
    .locals 15

    .line 571
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCalculatedStudyMonth:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCalculatedStudyMonth:Ljava/util/Date;

    .line 573
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    .line 574
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 575
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 576
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    .line 577
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 580
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 581
    const-string v7, "checkCountVisitedStudies"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 582
    const-string v8, "checkAutoCountStudies"

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 584
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mAutomaticStudies:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    if-eqz v6, :cond_a

    .line 586
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v6

    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v6, v8}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v6

    invoke-virtual {v6}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    if-ne v3, v2, :cond_2

    .line 587
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isInterested()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 588
    :cond_2
    const-string v9, ")"

    const v10, 0x7f120542

    const-string v11, "("

    if-eqz v7, :cond_7

    .line 589
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    .line 590
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->isCountStudy()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 591
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 592
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v13, v5, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v13, v3, :cond_6

    .line 593
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 594
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mAutomaticStudies:Ljava/util/List;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 595
    :cond_4
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 596
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mAutomaticStudies:Ljava/util/List;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 598
    :cond_5
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mAutomaticStudies:Ljava/util/List;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 600
    :cond_6
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-lt v13, v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ne v13, v5, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-ge v13, v3, :cond_3

    goto/16 :goto_0

    .line 605
    :cond_7
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 606
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    .line 607
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mAutomaticStudies:Ljava/util/List;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 608
    :cond_8
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    .line 609
    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mAutomaticStudies:Ljava/util/List;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 611
    :cond_9
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mAutomaticStudies:Ljava/util/List;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private getHourStat(Lcom/lostpixels/fieldservice/internal/report/Time;Lcom/lostpixels/fieldservice/internal/report/Time;)Landroid/text/Spanned;
    .locals 13

    .line 1207
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v0

    if-lez v0, :cond_6

    iget v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->reportDensity:I

    if-eqz v0, :cond_6

    .line 1208
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1209
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1210
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x5

    .line 1211
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 1213
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v5, :cond_0

    if-eq v4, v3, :cond_2

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    const/16 v6, 0x9

    if-eq v4, v6, :cond_2

    const/16 v6, 0xb

    if-eq v4, v6, :cond_2

    const/4 v6, 0x6

    if-eq v4, v6, :cond_2

    const/4 v6, 0x7

    if-eq v4, v6, :cond_2

    const/16 v4, 0x1e

    goto :goto_0

    .line 1224
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Lcom/lostpixels/fieldservice/utils/DateUtils;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1d

    goto :goto_0

    :cond_1
    const/16 v4, 0x1c

    goto :goto_0

    :cond_2
    const/16 v4, 0x1f

    .line 1232
    :goto_0
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v6

    int-to-double v8, v4

    div-double/2addr v6, v8

    .line 1235
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v8

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1236
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v10

    sub-double/2addr v8, v10

    sub-int/2addr v4, v2

    add-int/2addr v4, v5

    int-to-double v10, v4

    div-double/2addr v8, v10

    goto :goto_1

    :cond_3
    const-wide/16 v8, 0x0

    .line 1237
    :goto_1
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const v10, 0x7f120409

    const-string v11, "h, "

    const-string v12, " ("

    if-ne v4, v5, :cond_5

    .line 1238
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_5

    int-to-double v0, v2

    mul-double v6, v6, v0

    .line 1239
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v0

    cmpg-double v2, v6, v0

    if-gtz v2, :cond_4

    const-string v0, "<font color=#088A08>"

    goto :goto_2

    :cond_4
    const-string v0, "<font color=#FF0000>"

    .line 1240
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    invoke-static {p1, v2, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    .line 1241
    invoke-static {p2, p1, p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {p1, v8, v9}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    .line 1242
    invoke-static {p1, p2, p2}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1240
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1

    .line 1245
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    invoke-static {p1, v1, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    .line 1246
    invoke-static {p2, p1, p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {p1, v6, v7}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    .line 1247
    invoke-static {p1, p2, p2}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1245
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1

    .line 1250
    :cond_6
    iget-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    invoke-static {p1, p2, p2}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method private getHourStatTotal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Landroid/text/Spanned;
    .locals 0

    .line 1146
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->getHoursTotal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$TotalHoursAndGoals;

    move-result-object p1

    .line 1148
    iget-object p2, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$TotalHoursAndGoals;->hours:Lcom/lostpixels/fieldservice/internal/report/Time;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$TotalHoursAndGoals;->goal:Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {p0, p2, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->getHourStat(Lcom/lostpixels/fieldservice/internal/report/Time;Lcom/lostpixels/fieldservice/internal/report/Time;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method private getHoursTotal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$TotalHoursAndGoals;
    .locals 3

    .line 1125
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    .line 1126
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1127
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    .line 1128
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1129
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom1:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom1IsTime:Z

    if-eqz v2, :cond_1

    .line 1130
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1131
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1133
    :cond_1
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom2:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v2

    if-lez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom2IsTime:Z

    if-eqz v2, :cond_3

    .line 1134
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1135
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1137
    :cond_3
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom3:Z

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v2

    if-lez v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom3IsTime:Z

    if-eqz v2, :cond_5

    .line 1138
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1139
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1142
    :cond_5
    new-instance p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$TotalHoursAndGoals;

    invoke-direct {p1, v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$TotalHoursAndGoals;-><init>(Lcom/lostpixels/fieldservice/internal/report/Time;Lcom/lostpixels/fieldservice/internal/report/Time;)V

    return-object p1
.end method

.method private getTimePerDay(Lcom/lostpixels/fieldservice/internal/report/Time;Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime;
    .locals 10

    .line 1170
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1171
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1172
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x5

    .line 1173
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 1175
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v5, :cond_0

    if-eq v4, v3, :cond_2

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    const/16 v6, 0x9

    if-eq v4, v6, :cond_2

    const/16 v6, 0xb

    if-eq v4, v6, :cond_2

    const/4 v6, 0x6

    if-eq v4, v6, :cond_2

    const/4 v6, 0x7

    if-eq v4, v6, :cond_2

    const/16 v4, 0x1e

    goto :goto_0

    .line 1186
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Lcom/lostpixels/fieldservice/utils/DateUtils;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1d

    goto :goto_0

    :cond_1
    const/16 v4, 0x1c

    goto :goto_0

    :cond_2
    const/16 v4, 0x1f

    .line 1194
    :goto_0
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v6

    int-to-double v8, v4

    div-double/2addr v6, v8

    .line 1196
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v8

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1197
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide p1

    sub-double/2addr v8, p1

    sub-int/2addr v4, v2

    add-int/2addr v4, v5

    int-to-double p1, v4

    div-double/2addr v8, p1

    goto :goto_1

    :cond_3
    const-wide/16 v8, 0x0

    .line 1198
    :goto_1
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p1, p2, :cond_5

    .line 1199
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p1, p2, :cond_5

    .line 1200
    new-instance p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime;

    cmpg-double p2, v8, v6

    if-gez p2, :cond_4

    sget-object p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->AHEAD:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    goto :goto_2

    :cond_4
    sget-object p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->BEHIND:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    :goto_2
    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v0, v8, v9}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    invoke-direct {p1, p2, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;Lcom/lostpixels/fieldservice/internal/report/Time;)V

    return-object p1

    .line 1202
    :cond_5
    new-instance p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime;

    sget-object p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;->ONTIME:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    new-instance v0, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v0, v6, v7}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(D)V

    invoke-direct {p1, p2, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;Lcom/lostpixels/fieldservice/internal/report/Time;)V

    return-object p1
.end method

.method private onlyMinistryHours(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)Z
    .locals 2

    .line 1152
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    .line 1153
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1154
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom1:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom1IsTime:Z

    if-eqz v1, :cond_1

    .line 1155
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1157
    :cond_1
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom2:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v1

    if-lez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom2IsTime:Z

    if-eqz v1, :cond_3

    .line 1158
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1160
    :cond_3
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom3:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v1

    if-lez v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom3IsTime:Z

    if-eqz v1, :cond_5

    .line 1161
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->add(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    .line 1164
    :cond_5
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result p1

    if-ne v0, p1, :cond_9

    if-nez p2, :cond_9

    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom1:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom1IsTime:Z

    if-nez p1, :cond_9

    :cond_6
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom2:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom2IsTime:Z

    if-nez p1, :cond_9

    :cond_7
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom3:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom3IsTime:Z

    if-nez p1, :cond_9

    :cond_8
    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method private relaunchFragment()V
    .locals 2

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 189
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 190
    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 191
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 192
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private setMonth()V
    .locals 24

    move-object/from16 v0, p0

    .line 661
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    if-nez v1, :cond_0

    goto/16 :goto_1f

    .line 663
    :cond_0
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    .line 664
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 665
    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 667
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    .line 668
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v4

    .line 669
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v4, v7}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(I)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v7

    .line 670
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v8

    .line 671
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthGoal()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v9

    .line 673
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v3, v10, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->hasBeenSent()Z

    move-result v1

    .line 675
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mReportSent:Landroid/widget/ImageView;

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-eqz v10, :cond_2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 676
    :goto_0
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 681
    :cond_2
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtTotalHoursMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 682
    invoke-direct {v0, v8, v9}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->getHourStatTotal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    :cond_3
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtHoursMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 686
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v10

    iget-boolean v13, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    invoke-static {v10, v13, v13}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    :cond_4
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtRBCHoursMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLabelRBCHours:Landroid/widget/TextView;

    if-eqz v10, :cond_b

    .line 692
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v10

    iget-boolean v13, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    invoke-static {v10, v13, v13}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 694
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLabelRBCHours:Landroid/widget/TextView;

    const v10, 0x7f1201df

    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 696
    :cond_5
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLabelRBCHours:Landroid/widget/TextView;

    const v10, 0x7f1204a3

    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    :goto_1
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    .line 699
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v10

    invoke-static {v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v10

    .line 700
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcMinutes()I

    move-result v13

    if-lez v13, :cond_6

    .line 701
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLabelRBCHours:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 702
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtRBCHoursMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const/4 v1, 0x1

    goto :goto_4

    .line 705
    :cond_6
    iget-object v13, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    sget-object v14, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v13, v14, :cond_7

    .line 706
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLabelRBCHours:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtRBCHoursMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 709
    :cond_7
    sget-object v14, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eWhenPioneer:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v13, v14, :cond_8

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_8
    if-gt v10, v1, :cond_a

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    sget-object v10, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v1, v10, :cond_9

    goto :goto_3

    .line 713
    :cond_9
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLabelRBCHours:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtRBCHoursMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 710
    :cond_a
    :goto_3
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLabelRBCHours:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 711
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtRBCHoursMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    const/4 v1, 0x0

    .line 721
    :goto_4
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblTotalHoursMonth:Landroid/widget/TextView;

    const-string v13, "-"

    if-eqz v10, :cond_10

    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblHoursMonth:Landroid/widget/TextView;

    if-eqz v10, :cond_10

    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtHoursMonth:Landroid/widget/TextView;

    if-eqz v10, :cond_10

    .line 722
    invoke-direct {v0, v8, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->onlyMinistryHours(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 723
    iget v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->reportDensity:I

    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-static {v1, v4, v7, v3, v10}, Lcom/lostpixels/fieldservice/utils/ReportUtils;->showOnlyBeenOutInMinistryMonth(ILcom/lostpixels/fieldservice/internal/report/YearReport;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 724
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblTotalHoursMonth:Landroid/widget/TextView;

    const v10, 0x7f120103

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 725
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, v13

    goto :goto_5

    :cond_c
    const-string v1, "\u2a09"

    .line 726
    :goto_5
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtTotalHoursMonth:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->hasDoneMinistry()Z

    move-result v14

    if-eqz v14, :cond_d

    const-string v1, "\u2713"

    :cond_d
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 728
    :cond_e
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblTotalHoursMonth:Landroid/widget/TextView;

    const v10, 0x7f120413

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 730
    :goto_6
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblHoursMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 731
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtHoursMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 733
    :cond_f
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblTotalHoursMonth:Landroid/widget/TextView;

    const v10, 0x7f12058d

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(I)V

    .line 734
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblHoursMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 735
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtHoursMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 740
    :cond_10
    :goto_7
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtPublicationsMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 743
    iget-object v10, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtPublicationsMonth:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    :cond_11
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtVideoShowingsMonth:Landroid/widget/TextView;

    const-string v10, ")"

    const-string v14, " ("

    if-eqz v1, :cond_13

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 749
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v15

    if-lez v15, :cond_12

    .line 751
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    :cond_12
    iget-object v15, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtVideoShowingsMonth:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    :cond_13
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtMagazinesMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_15

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v15

    if-lez v15, :cond_14

    .line 763
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :cond_14
    iget-object v15, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtMagazinesMonth:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    :cond_15
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtBrochuresMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_17

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 772
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v15

    .line 773
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v15

    if-lez v15, :cond_16

    .line 775
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :cond_16
    iget-object v15, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtBrochuresMonth:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    :cond_17
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtBooksMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_19

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v15

    if-lez v15, :cond_18

    .line 786
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_18
    iget-object v15, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtBooksMonth:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    :cond_19
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtTractsMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v15

    if-lez v15, :cond_1a

    .line 798
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    :cond_1a
    iget-object v15, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtTractsMonth:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    :cond_1b
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtVideosMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_1d

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v15

    if-lez v15, :cond_1c

    .line 810
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    :cond_1c
    iget-object v15, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtVideosMonth:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    :cond_1d
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtMileageMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_24

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    iget-boolean v15, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsKilometers:Z

    invoke-virtual {v8, v15}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMileage(Z)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v15, v11, v12

    const-string v15, "%.1f"

    invoke-static {v15, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {v9, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMileage(Z)F

    move-result v11

    const/16 v16, 0x0

    cmpl-float v11, v11, v16

    if-lez v11, :cond_1e

    .line 821
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    iget-boolean v11, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsKilometers:Z

    invoke-virtual {v9, v11}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMileage(Z)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/16 v16, 0x0

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v11, v12, v16

    invoke-static {v15, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1e
    const/16 v16, 0x0

    .line 825
    :goto_8
    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtMileageMonth:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblMileageMonth:Landroid/widget/TextView;

    iget-boolean v11, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsKilometers:Z

    if-eqz v11, :cond_1f

    const v11, 0x7f120426

    :goto_9
    invoke-virtual {v0, v11}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_a

    :cond_1f
    const v11, 0x7f120445

    goto :goto_9

    :goto_a
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    .line 829
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v11

    invoke-static {v11}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v11

    .line 830
    iget-object v12, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    sget-object v15, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v12, v15, :cond_20

    .line 831
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLayoutMileageMonth:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 832
    :cond_20
    sget-object v15, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eWhenPioneer:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v12, v15, :cond_21

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneerOrMissionary()Z

    move-result v12

    if-eqz v12, :cond_23

    :cond_21
    if-gt v11, v1, :cond_23

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    sget-object v11, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v1, v11, :cond_22

    goto :goto_b

    .line 835
    :cond_22
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLayoutMileageMonth:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 833
    :cond_23
    :goto_b
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLayoutMileageMonth:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 839
    :cond_24
    :goto_c
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtReturnVisitsMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_26

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v11

    if-lez v11, :cond_25

    .line 843
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 845
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    :cond_25
    iget-object v11, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtReturnVisitsMonth:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    :cond_26
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtStudiesMonth:Landroid/widget/TextView;

    const-string v11, "\n"

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblStudiesMonth:Landroid/widget/TextView;

    if-eqz v1, :cond_2e

    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 852
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v12

    .line 853
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v15

    .line 854
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v12, :cond_28

    if-lez v15, :cond_28

    .line 856
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mAutomaticStudies:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    check-cast v3, Ljava/lang/String;

    .line 857
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    goto :goto_d

    :cond_27
    move-object/from16 v19, v3

    .line 860
    const-string v3, "+"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f120559

    .line 861
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v18, v7, v5

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtManuallyAddedStudies:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtManuallyAddedStudies:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_28
    move-object/from16 v19, v3

    move-object/from16 v20, v7

    if-lez v15, :cond_2c

    .line 865
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mAutomaticStudies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 866
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_29

    .line 867
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :cond_29
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 870
    :cond_2a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 871
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtManuallyAddedStudies:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 873
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtManuallyAddedStudies:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const/16 v5, 0x8

    goto :goto_f

    .line 875
    :cond_2b
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtManuallyAddedStudies:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    :cond_2c
    const/16 v5, 0x8

    .line 877
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtManuallyAddedStudies:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_f
    add-int/2addr v12, v15

    .line 879
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v3

    if-lez v3, :cond_2d

    .line 881
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    :cond_2d
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtStudiesMonth:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblStudiesMonth:Landroid/widget/TextView;

    const v3, 0x7f120423

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_2e
    move-object/from16 v19, v3

    move-object/from16 v20, v7

    .line 889
    :goto_10
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtSchools:Landroid/widget/TextView;

    if-eqz v1, :cond_38

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtSchoolsTime:Landroid/widget/TextView;

    if-eqz v1, :cond_38

    .line 890
    invoke-virtual/range {v20 .. v20}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getSchoolInfoItem()Lio/realm/RealmList;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 891
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_37

    .line 892
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtSchools:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 893
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtSchoolsTime:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 894
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 895
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 898
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 899
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    .line 901
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v18, v1

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_12
    if-ge v1, v12, :cond_30

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    add-int/lit8 v1, v1, 0x1

    move/from16 v22, v1

    move-object/from16 v1, v21

    check-cast v1, Ljava/util/ArrayList;

    move/from16 v21, v12

    const/4 v12, 0x0

    .line 902
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual/range {v16 .. v16}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v23, v15

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2f

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {v15}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v12

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v15

    if-ne v12, v15, :cond_2f

    .line 904
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    goto :goto_13

    :cond_2f
    move/from16 v15, v23

    :goto_13
    move/from16 v12, v21

    move/from16 v1, v22

    goto :goto_12

    :cond_30
    move/from16 v23, v15

    if-nez v23, :cond_31

    .line 909
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 910
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    move-object/from16 v1, v18

    goto :goto_11

    .line 914
    :cond_32
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v1, :cond_36

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v7, v7, 0x1

    check-cast v12, Ljava/util/ArrayList;

    .line 915
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_33

    .line 916
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    :cond_33
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_34

    .line 918
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    const/4 v15, 0x0

    .line 919
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual/range {v18 .. v18}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 v18, v1

    const/4 v1, 0x1

    if-le v15, v1, :cond_35

    .line 921
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 922
    const-string v1, "x"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    const/4 v15, 0x0

    .line 924
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    goto :goto_14

    .line 927
    :cond_36
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtSchools:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtSchoolsTime:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 930
    :cond_37
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtSchools:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 931
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtSchoolsTime:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 936
    :cond_38
    :goto_15
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom1:Landroid/widget/TextView;

    if-eqz v1, :cond_3a

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom1:Landroid/widget/TextView;

    if-eqz v1, :cond_3a

    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 938
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v3

    if-lez v3, :cond_39

    .line 940
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    :cond_39
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom1:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom1:Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    :cond_3a
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom2:Landroid/widget/TextView;

    if-eqz v1, :cond_3c

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom2:Landroid/widget/TextView;

    if-eqz v1, :cond_3c

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 951
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 952
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v3

    if-lez v3, :cond_3b

    .line 953
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    :cond_3b
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom2:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom2:Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    :cond_3c
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom3:Landroid/widget/TextView;

    if-eqz v1, :cond_3e

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom3:Landroid/widget/TextView;

    if-eqz v1, :cond_3e

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 964
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v3

    if-lez v3, :cond_3d

    .line 966
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    :cond_3d
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom3:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom3:Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    :cond_3e
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom1Time:Landroid/widget/TextView;

    if-eqz v1, :cond_3f

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom1Time:Landroid/widget/TextView;

    if-eqz v3, :cond_3f

    .line 976
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    iget-boolean v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    invoke-static {v3, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom1Time:Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    :cond_3f
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom2Time:Landroid/widget/TextView;

    if-eqz v1, :cond_40

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom2Time:Landroid/widget/TextView;

    if-eqz v3, :cond_40

    .line 982
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    iget-boolean v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    invoke-static {v3, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom2Time:Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    :cond_40
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom3Time:Landroid/widget/TextView;

    if-eqz v1, :cond_41

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom3Time:Landroid/widget/TextView;

    if-eqz v3, :cond_41

    .line 988
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    iget-boolean v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    invoke-static {v3, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom3Time:Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 992
    :cond_41
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_45

    .line 993
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom1:Z

    const v3, 0x7f090372

    const v5, 0x7f09000b

    const v6, 0x7f09001f

    if-nez v1, :cond_43

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v1

    if-lez v1, :cond_42

    goto :goto_16

    .line 1001
    :cond_42
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1002
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17

    .line 994
    :cond_43
    :goto_16
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom1IsTime:Z

    if-eqz v1, :cond_44

    .line 995
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 996
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17

    :cond_44
    const/4 v15, 0x0

    .line 998
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1007
    :cond_45
    :goto_17
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_49

    .line 1008
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom2:Z

    const v3, 0x7f090374

    const v5, 0x7f09000d

    const v6, 0x7f090020

    if-nez v1, :cond_47

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v1

    if-lez v1, :cond_46

    goto :goto_18

    .line 1016
    :cond_46
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1017
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    .line 1009
    :cond_47
    :goto_18
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom2IsTime:Z

    if-eqz v1, :cond_48

    .line 1010
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19

    :cond_48
    const/4 v15, 0x0

    .line 1013
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    :cond_49
    :goto_19
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_4d

    .line 1024
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom3:Z

    const v3, 0x7f090376

    const v5, 0x7f09000f

    const v6, 0x7f090021

    if-nez v1, :cond_4b

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v1

    if-lez v1, :cond_4a

    goto :goto_1a

    .line 1032
    :cond_4a
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1b

    .line 1025
    :cond_4b
    :goto_1a
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom3IsTime:Z

    if-eqz v1, :cond_4c

    .line 1026
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1b

    :cond_4c
    const/4 v15, 0x0

    .line 1029
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1039
    :cond_4d
    :goto_1b
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHours:Landroid/widget/TextView;

    if-eqz v1, :cond_55

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursPerDay:Landroid/widget/TextView;

    if-eqz v1, :cond_55

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursLeft:Landroid/widget/TextView;

    if-eqz v1, :cond_55

    .line 1040
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v1

    if-lez v1, :cond_54

    .line 1041
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHours:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursPerDay:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->labelGoalHours:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->labelGoalHoursLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1046
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->labelGoalHoursPerDay:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHours:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    iget-boolean v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    invoke-static {v3, v5, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    invoke-direct {v0, v8, v9}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->getHoursTotal(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$TotalHoursAndGoals;

    move-result-object v1

    .line 1049
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    iget-object v5, v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$TotalHoursAndGoals;->hours:Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-virtual {v3, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->substract(Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v3

    .line 1050
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursLeft:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v6

    const-string v7, "0"

    if-lez v6, :cond_4e

    iget-boolean v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    invoke-static {v3, v6, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v6

    goto :goto_1c

    :cond_4e
    move-object v6, v7

    :goto_1c
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1053
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 1054
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/utils/DateUtils;->isBeforeCurrentMonth(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_53

    .line 1055
    iget-object v5, v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$TotalHoursAndGoals;->hours:Lcom/lostpixels/fieldservice/internal/report/Time;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$TotalHoursAndGoals;->goal:Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v0, v5, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->getTimePerDay(Lcom/lostpixels/fieldservice/internal/report/Time;Lcom/lostpixels/fieldservice/internal/report/Time;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime;

    move-result-object v1

    .line 1056
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursPerDay:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v3

    if-lez v3, :cond_4f

    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime;->timePerDay:Lcom/lostpixels/fieldservice/internal/report/Time;

    iget-boolean v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    invoke-static {v3, v6, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v7

    :cond_4f
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    sget-object v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$3;->$SwitchMap$com$lostpixels$fieldservice$activities$servicereport$ServiceReportMonthFragment$GoalTime$GoalStatus:[I

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime;->status:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$GoalTime$GoalStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_52

    const/4 v5, 0x2

    if-eq v1, v5, :cond_51

    const/4 v3, 0x3

    if-eq v1, v3, :cond_50

    goto :goto_1d

    .line 1065
    :cond_50
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursPerDay:Landroid/widget/TextView;

    const/high16 v3, -0x10000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1d

    .line 1062
    :cond_51
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursPerDay:Landroid/widget/TextView;

    const-string v3, "#088A08"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1d

    .line 1059
    :cond_52
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursPerDay:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursLeft:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1d

    .line 1069
    :cond_53
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursPerDay:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursLeft:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1070
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursPerDay:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 1073
    :cond_54
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHours:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursPerDay:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1076
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->labelGoalHours:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->labelGoalHoursLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1078
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->labelGoalHoursPerDay:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    :cond_55
    :goto_1d
    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v5, 0x2

    .line 1085
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v17, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    .line 1086
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v2

    .line 1088
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1089
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v4, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isAuxiliary(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_56

    const v1, 0x7f12036e

    .line 1090
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1e

    .line 1091
    :cond_56
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v3

    if-eqz v3, :cond_57

    if-gt v2, v1, :cond_57

    const v1, 0x7f1204a8

    .line 1092
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1093
    invoke-virtual/range {v20 .. v20}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120325

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 1097
    :cond_57
    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v4, v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isBethelite(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_58

    const v1, 0x7f12037b

    .line 1098
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 1099
    :cond_58
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneer()Z

    move-result v3

    if-eqz v3, :cond_59

    if-gt v2, v1, :cond_59

    const v1, 0x7f1204f3

    .line 1100
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 1101
    :cond_59
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isMissionary()Z

    move-result v3

    if-eqz v3, :cond_5a

    if-gt v2, v1, :cond_5a

    const v1, 0x7f120446

    .line 1102
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    .line 1103
    :cond_5a
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isCircuitOversser()Z

    move-result v3

    if-eqz v3, :cond_5b

    if-gt v2, v1, :cond_5b

    const v1, 0x7f12039a

    .line 1104
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_5b
    const v1, 0x7f12049e

    .line 1106
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1108
    :cond_5c
    :goto_1e
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCurrentProfile:Landroid/widget/TextView;

    if-eqz v2, :cond_5d

    .line 1109
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5d
    :goto_1f
    return-void
.end method

.method private shouldShowCompact()Z
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYearInt(Ljava/util/Date;)I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceMonth(Ljava/util/Date;)I

    move-result v1

    const/16 v2, 0x7e8

    if-gt v0, v2, :cond_0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x2

    if-lt v1, v0, :cond_1

    .line 158
    :cond_0
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->reportDensity:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private showMonthDetailList()V
    .locals 14

    .line 396
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getDailyItems()Ljava/util/List;

    move-result-object v4

    .line 398
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getThreeLastMonthStartDate()Ljava/util/Calendar;

    move-result-object v0

    .line 400
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 401
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 402
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 403
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x5

    const/4 v5, 0x1

    .line 404
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    .line 405
    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->add(II)V

    const/16 v6, 0xb

    const/4 v7, 0x0

    .line 406
    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 407
    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    .line 408
    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->set(II)V

    if-eqz v4, :cond_0

    .line 409
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    .line 410
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v0, v2, v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getMonthReport()Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    goto :goto_0

    :goto_2
    if-eqz v4, :cond_4

    .line 414
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 415
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12015e

    .line 417
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 419
    new-instance v1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v8, 0x1

    iget-boolean v6, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    const/4 v9, 0x0

    iget-boolean v7, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsKilometers:Z

    const/4 v10, 0x1

    iget-boolean v8, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom1:Z

    const/4 v11, 0x0

    iget-boolean v9, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom2:Z

    const/4 v12, 0x1

    iget-boolean v10, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom3:Z

    iget v13, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->reportDensity:I

    if-eq v13, v3, :cond_3

    const/4 v11, 0x1

    :cond_3
    const v3, 0x7f0c0131

    invoke-direct/range {v1 .. v11}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;ZZZZZZZ)V

    const v2, 0x7f12004b

    .line 422
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$1;

    invoke-direct {v3, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;)V

    .line 421
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 430
    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$2;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 481
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 482
    const-string v2, "Session"

    const-class v4, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    if-eqz v0, :cond_8

    .line 483
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->miEditSession:J

    .line 484
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 486
    new-instance v4, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v4, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 489
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 490
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 491
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_5

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v7, v3, :cond_6

    .line 492
    :cond_5
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 494
    :cond_6
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result v0

    const-string v1, "IsUpdate"

    if-eqz v0, :cond_7

    .line 495
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v4, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 496
    invoke-virtual {v6, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 498
    :cond_7
    invoke-virtual {v6, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 499
    :goto_3
    invoke-virtual {v6, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 501
    const-string v0, "OnlyMonths"

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x4da

    .line 502
    invoke-virtual {p0, v6, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 504
    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 505
    new-instance v1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    .line 506
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v1, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    .line 507
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x4db

    .line 508
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private switchFragment()Z
    .locals 4

    .line 166
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->shouldShowCompact()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 169
    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->isCompactFragment:Z

    if-nez v3, :cond_0

    .line 170
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->isCompactFragment:Z

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->relaunchFragment()V

    return v1

    :cond_0
    if-nez v0, :cond_1

    .line 175
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->isCompactFragment:Z

    if-eqz v0, :cond_1

    .line 176
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->isCompactFragment:Z

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->relaunchFragment()V

    return v1

    :cond_1
    return v2
.end method

.method private updateLayout()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isBeforeJan2016(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mllNewPublications:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 388
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mllNewPublications:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 391
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public canDoubleTap()Z
    .locals 5

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLastTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public didFling()V
    .locals 1

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbDidFling:Z

    return-void
.end method

.method public getMonth()Ljava/util/Date;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/16 v0, 0x4da

    .line 514
    const-string v1, "Session"

    const/4 v2, -0x1

    if-ne p1, v0, :cond_7

    if-ne p2, v2, :cond_7

    .line 516
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/MinistryAssistant;->hasPermissionToTrack(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 517
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 518
    const-string p2, "item_id"

    const-string v0, "EditReport_month_click"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string p2, "item_name"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string p2, "content_type"

    const-string v0, "action"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->getTracker()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p2

    const-string v0, "select_content"

    invoke-virtual {p2, v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 524
    :cond_0
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 527
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {p2, p3, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {p2, p3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->getDailyItems()Ljava/util/List;

    move-result-object p2

    .line 528
    invoke-static {}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getThreeLastMonthStartDate()Ljava/util/Calendar;

    move-result-object p3

    .line 529
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 530
    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->miEditSession:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 531
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->miEditSession:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 532
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 533
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x5

    const/4 v4, 0x1

    .line 534
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    .line 535
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    const/16 v5, 0xb

    const/4 v6, 0x0

    .line 536
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    .line 537
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    .line 538
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 540
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 549
    :cond_1
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p2, p3, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonthSession(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    goto :goto_1

    .line 541
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p2, p3, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p2

    .line 542
    new-instance p3, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {p3, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 544
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 545
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 546
    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq p2, v1, :cond_4

    .line 547
    :cond_3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDate(Ljava/util/Date;)V

    :cond_4
    move-object p2, p3

    :goto_1
    if-eqz p2, :cond_6

    .line 552
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->removeServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 554
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->hasComment()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 555
    :cond_5
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 559
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    return-void

    :cond_7
    const/16 v0, 0x4db

    if-ne p1, v0, :cond_a

    if-ne p2, v2, :cond_a

    .line 561
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 562
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isSessionEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->hasComment()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    return-void

    .line 563
    :cond_9
    :goto_2
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    return-void

    .line 567
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 361
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 362
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    .line 364
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;

    if-eqz v0, :cond_0

    .line 365
    check-cast p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;

    return-void

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet OnUpdateMonthListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 198
    const-string v1, "ReportDensity"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->reportDensity:I

    .line 199
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->shouldShowCompact()Z

    move-result v1

    if-eqz v1, :cond_0

    const v3, 0x7f0c012b

    goto :goto_0

    :cond_0
    const v3, 0x7f0c012a

    .line 201
    :goto_0
    invoke-virtual {p1, v3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 202
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mView:Landroid/view/View;

    const-wide/16 v3, -0x1

    .line 203
    iput-wide v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->miEditSession:J

    if-eqz p3, :cond_1

    .line 205
    const-string p2, "EditSession"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->miEditSession:J

    .line 208
    :cond_1
    const-string p2, "inputMode"

    const-string v3, "hhmm"

    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsHhmm:Z

    .line 209
    const-string p2, "mileageKM"

    const/4 v3, 0x1

    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbIsKilometers:Z

    .line 210
    const-string p2, "showVideo"

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 211
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom1()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom1:Z

    .line 213
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom1IsTime:Z

    .line 214
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom2()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom2:Z

    .line 215
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom2IsTime:Z

    .line 216
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom3()Z

    move-result v3

    iput-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbShowCustom3:Z

    .line 217
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mbCustom3IsTime:Z

    const v0, 0x7f090378

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 220
    iget v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->reportDensity:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/16 v3, 0x8

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v3, "MyPrefsSettings"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const v3, 0x7f0902f9

    .line 224
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 225
    new-instance v4, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$$ExternalSyntheticLambda0;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090384

    .line 231
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mllNewPublications:Landroid/view/View;

    .line 233
    const-string v3, "whenShowRBC"

    const-string v4, "pioneer"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    sget-object v5, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eWhenPioneer:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v5, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    .line 235
    const-string v6, "never"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "always"

    if-eqz v7, :cond_4

    .line 236
    sget-object v3, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    goto :goto_2

    .line 237
    :cond_4
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 238
    sget-object v3, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    .line 240
    :cond_5
    :goto_2
    const-string v3, "whenShowMilage"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    iput-object v5, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    .line 242
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 243
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    goto :goto_3

    .line 244
    :cond_6
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 245
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    :cond_7
    :goto_3
    if-eqz p3, :cond_8

    .line 248
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    const-string v3, "Month"

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 251
    :cond_8
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/StringUtils;->isRtlLayout()Z

    move-result p3

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->isRTLLayout:Z

    const p3, 0x7f09005b

    .line 253
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtTotalHoursMonth:Landroid/widget/TextView;

    const p3, 0x7f090029

    .line 254
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblTotalHoursMonth:Landroid/widget/TextView;

    const p3, 0x7f090052

    .line 255
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtHoursMonth:Landroid/widget/TextView;

    const p3, 0x7f090026

    .line 256
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblHoursMonth:Landroid/widget/TextView;

    const p3, 0x7f090034

    .line 257
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtRBCHoursMonth:Landroid/widget/TextView;

    const p3, 0x7f09002e

    .line 258
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtMagazinesMonth:Landroid/widget/TextView;

    const p3, 0x7f090033

    .line 259
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtPublicationsMonth:Landroid/widget/TextView;

    .line 260
    iget p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->reportDensity:I

    if-eqz p3, :cond_9

    const p3, 0x7f09005f

    .line 261
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtVideoShowingsMonth:Landroid/widget/TextView;

    const p3, 0x7f090007

    .line 262
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtBrochuresMonth:Landroid/widget/TextView;

    const p3, 0x7f090006

    .line 263
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtBooksMonth:Landroid/widget/TextView;

    const p3, 0x7f09005c

    .line 264
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtTractsMonth:Landroid/widget/TextView;

    const p3, 0x7f09005e

    .line 265
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtVideosMonth:Landroid/widget/TextView;

    :cond_9
    const p3, 0x7f09002f

    .line 267
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtMileageMonth:Landroid/widget/TextView;

    const p3, 0x7f090330

    .line 268
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblMileageMonth:Landroid/widget/TextView;

    const p3, 0x7f090196

    .line 269
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom1:Landroid/widget/TextView;

    const p3, 0x7f090317

    .line 270
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom1:Landroid/widget/TextView;

    const p3, 0x7f090199

    .line 271
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom2:Landroid/widget/TextView;

    const p3, 0x7f090318

    .line 272
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom2:Landroid/widget/TextView;

    const p3, 0x7f09019c

    .line 273
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom3:Landroid/widget/TextView;

    const p3, 0x7f090319

    .line 274
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom3:Landroid/widget/TextView;

    const p3, 0x7f09000b

    .line 276
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom1Time:Landroid/widget/TextView;

    const p3, 0x7f09001f

    .line 277
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom1Time:Landroid/widget/TextView;

    const p3, 0x7f09000d

    .line 278
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom2Time:Landroid/widget/TextView;

    const p3, 0x7f090020

    .line 279
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom2Time:Landroid/widget/TextView;

    const p3, 0x7f09000f

    .line 280
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCustom3Time:Landroid/widget/TextView;

    const p3, 0x7f090021

    .line 281
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblCustom3Time:Landroid/widget/TextView;

    const p3, 0x7f090035

    .line 283
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtReturnVisitsMonth:Landroid/widget/TextView;

    const p3, 0x7f090055

    .line 284
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtStudiesMonth:Landroid/widget/TextView;

    const p3, 0x7f090027

    .line 285
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mlblStudiesMonth:Landroid/widget/TextView;

    const p3, 0x7f09028d

    .line 286
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mReportSent:Landroid/widget/ImageView;

    const p3, 0x7f09052b

    .line 287
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtPrevMonth:Landroid/widget/TextView;

    const p3, 0x7f09051d

    .line 288
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCurMonth:Landroid/widget/TextView;

    const p3, 0x7f090528

    .line 289
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtNextMonth:Landroid/widget/TextView;

    const p3, 0x7f090024

    .line 290
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLabelRBCHours:Landroid/widget/TextView;

    const p3, 0x7f090381

    .line 291
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mLayoutMileageMonth:Landroid/view/View;

    const p3, 0x7f090632

    .line 292
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtSchools:Landroid/widget/TextView;

    const p3, 0x7f090631

    .line 293
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtSchoolsTime:Landroid/widget/TextView;

    const p3, 0x7f0905f0

    .line 294
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCurrentProfile:Landroid/widget/TextView;

    const p3, 0x7f09032d

    .line 295
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtManuallyAddedStudies:Landroid/widget/TextView;

    .line 296
    iget p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->reportDensity:I

    if-nez p3, :cond_a

    const p3, 0x7f09064e

    .line 297
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHours:Landroid/widget/TextView;

    const p3, 0x7f09064f

    .line 298
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursLeft:Landroid/widget/TextView;

    const p3, 0x7f090650

    .line 299
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->goalHoursPerDay:Landroid/widget/TextView;

    const p3, 0x7f0902d4

    .line 300
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->labelGoalHours:Landroid/widget/TextView;

    const p3, 0x7f0902d5

    .line 301
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->labelGoalHoursLeft:Landroid/widget/TextView;

    const p3, 0x7f0902d6

    .line 302
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->labelGoalHoursPerDay:Landroid/widget/TextView;

    :cond_a
    const p3, 0x7f090280

    .line 304
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f09027f

    .line 305
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f090391

    .line 306
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p2, :cond_b

    if-nez v1, :cond_b

    .line 308
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    const p2, 0x7f090279

    .line 309
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v1, 0x7f09027a

    .line 310
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz p2, :cond_c

    .line 313
    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$$ExternalSyntheticLambda1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    if-eqz v1, :cond_d

    .line 316
    new-instance p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$$ExternalSyntheticLambda2;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    :cond_d
    new-instance p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$$ExternalSyntheticLambda3;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtNextMonth:Landroid/widget/TextView;

    new-instance p3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$$ExternalSyntheticLambda4;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    new-instance p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$$ExternalSyntheticLambda5;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtPrevMonth:Landroid/widget/TextView;

    new-instance p3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$$ExternalSyntheticLambda6;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->updateMonthReport()V

    .line 354
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->updateLayout()V

    .line 355
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;

    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-interface {p2, p3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;->onMonthChanged(Ljava/util/Date;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 373
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;

    .line 374
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 375
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-string v2, "Month"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 381
    const-string v0, "EditSession"

    iget-wide v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->miEditSession:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 382
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setMonth(Ljava/util/Date;)V
    .locals 1

    .line 624
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    .line 625
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->switchFragment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->updateMonthReport()V

    .line 627
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->updateLayout()V

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->listener:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;

    invoke-interface {v0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$OnUpdateMonthListener;->onMonthChanged(Ljava/util/Date;)V

    return-void
.end method

.method public updateMonthReport()V
    .locals 6

    .line 639
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->countAutomaticStudies()V

    .line 640
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 641
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mCurrentMonth:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, -0x1

    const/4 v2, 0x2

    .line 642
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 643
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "LLLL"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 645
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtPrevMonth:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 646
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v3, 0x1

    .line 647
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 648
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtCurMonth:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 649
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    :cond_1
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 651
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->mtxtNextMonth:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 652
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :cond_2
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->switchFragment()Z

    move-result v0

    if-nez v0, :cond_3

    .line 655
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->setMonth()V

    :cond_3
    return-void
.end method
