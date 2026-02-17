.class public Lcom/sleepbot/datetimepicker/time/TimePickerDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;,
        Lcom/sleepbot/datetimepicker/time/TimePickerDialog$KeyboardListener;,
        Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;
    }
.end annotation


# instance fields
.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private mAmPmHitspace:Landroid/view/View;

.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmText:Ljava/lang/String;

.field private mCallback:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

.field private mCloseOnSingleTapMinute:Z

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDoneButton:Landroid/widget/TextView;

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private mHourPickerDescription:Ljava/lang/String;

.field private mHourSpaceView:Landroid/widget/TextView;

.field private mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialHourOfDay:I

.field private mInitialMinute:I

.field private mIs24HourMode:Z

.field private mLegalTimesTree:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

.field private mMinutePickerDescription:Ljava/lang/String;

.field private mMinuteSpaceView:Landroid/widget/TextView;

.field private mMinuteView:Landroid/widget/TextView;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private mPmText:Ljava/lang/String;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

.field private mTypedTimes:Ljava/util/ArrayList;

.field private mUnfocusedWhite:I

.field private mWhite:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;IZZZ)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;)Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->onDoneButtonClick()V

    return-void
.end method

.method static synthetic access$400(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;I)Z
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->processKeyUp(I)Z

    move-result p0

    return p0
.end method

.method private addKeyIfLegal(I)Z
    .locals 5

    const/4 v0, 0x7

    .line 574
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 558
    iget-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_2

    .line 559
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v2

    .line 563
    :cond_2
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->isTypedTimeLegalSoFar()Z

    move-result v1

    if-nez v1, :cond_3

    .line 565
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->deleteLastTypedKey()I

    return v2

    .line 569
    :cond_3
    invoke-direct {p0, p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result p1

    .line 570
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-string p1, "%d"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 572
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 573
    iget-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_4

    .line 574
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 575
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 577
    :cond_4
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    return v3
.end method

.method private deleteLastTypedKey()I
    .locals 3

    .line 616
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 617
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return v0
.end method

.method private finishKbMode(Z)V
    .locals 6

    const/4 v0, 0x0

    .line 629
    iput-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 630
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 631
    invoke-direct {p0, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v1

    .line 632
    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    aget v4, v1, v0

    aget v5, v1, v2

    invoke-virtual {v3, v4, v5}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setTime(II)V

    .line 633
    iget-boolean v3, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v3, :cond_0

    .line 634
    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    const/4 v4, 0x2

    aget v1, v1, v4

    invoke-virtual {v3, v1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    if-eqz p1, :cond_2

    .line 639
    invoke-direct {p0, v0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .line 640
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p1, v2}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    :cond_2
    return-void
.end method

.method private generateLegalTimesTree()V
    .locals 16

    move-object/from16 v0, p0

    .line 809
    new-instance v1, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-direct {v1, v0, v3}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    iput-object v1, v0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    .line 810
    iget-boolean v1, v0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/16 v5, 0x8

    const/16 v6, 0x9

    const/16 v7, 0xa

    const/16 v9, 0xc

    const/16 v10, 0xd

    const/16 v11, 0xe

    const/16 v12, 0xf

    const/16 v13, 0x10

    if-eqz v1, :cond_0

    .line 812
    new-instance v1, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-direct {v1, v0, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 813
    new-instance v2, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    new-array v14, v7, [I

    fill-array-data v14, :array_1

    invoke-direct {v2, v0, v14}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 815
    invoke-virtual {v1, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 818
    new-instance v14, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v4, v5}, [I

    move-result-object v15

    invoke-direct {v14, v0, v15}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 819
    iget-object v15, v0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v15, v14}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 822
    new-instance v15, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    invoke-direct {v15, v0, v3}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 823
    invoke-virtual {v14, v15}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 825
    invoke-virtual {v15, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 828
    new-instance v3, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v10, v11, v12, v13}, [I

    move-result-object v8

    invoke-direct {v3, v0, v8}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 830
    invoke-virtual {v15, v3}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 833
    new-instance v3, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v10, v11, v12, v13}, [I

    move-result-object v8

    invoke-direct {v3, v0, v8}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 834
    invoke-virtual {v14, v3}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 836
    invoke-virtual {v3, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 839
    new-instance v3, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v6}, [I

    move-result-object v8

    invoke-direct {v3, v0, v8}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 840
    iget-object v8, v0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v8, v3}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 843
    new-instance v8, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v4, v5, v6, v7}, [I

    move-result-object v5

    invoke-direct {v8, v0, v5}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 844
    invoke-virtual {v3, v8}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 846
    invoke-virtual {v8, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 849
    new-instance v5, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    const/16 v6, 0xb

    filled-new-array {v6, v9}, [I

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 850
    invoke-virtual {v3, v5}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 852
    invoke-virtual {v5, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 855
    new-instance v2, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    new-array v3, v4, [I

    fill-array-data v3, :array_3

    invoke-direct {v2, v0, v3}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 856
    iget-object v3, v0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v3, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 858
    invoke-virtual {v2, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    return-void

    .line 862
    :cond_0
    new-instance v1, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    invoke-direct {v0, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v2

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v8

    filled-new-array {v2, v8}, [I

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 865
    new-instance v2, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v5}, [I

    move-result-object v8

    invoke-direct {v2, v0, v8}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 866
    iget-object v8, v0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v8, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 868
    invoke-virtual {v2, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 871
    new-instance v8, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v4, v5, v6}, [I

    move-result-object v4

    invoke-direct {v8, v0, v4}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 872
    invoke-virtual {v2, v8}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 874
    invoke-virtual {v8, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 877
    new-instance v4, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    new-array v6, v3, [I

    fill-array-data v6, :array_4

    invoke-direct {v4, v0, v6}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 878
    invoke-virtual {v8, v4}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 880
    invoke-virtual {v4, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 884
    new-instance v6, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    new-array v14, v7, [I

    fill-array-data v14, :array_5

    invoke-direct {v6, v0, v14}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 885
    invoke-virtual {v4, v6}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 887
    invoke-virtual {v6, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 890
    new-instance v4, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v10, v11, v12, v13}, [I

    move-result-object v6

    invoke-direct {v4, v0, v6}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 891
    invoke-virtual {v8, v4}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 893
    invoke-virtual {v4, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 896
    new-instance v4, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    const/16 v6, 0xb

    filled-new-array {v7, v6, v9}, [I

    move-result-object v6

    invoke-direct {v4, v0, v6}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 897
    invoke-virtual {v2, v4}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 900
    new-instance v2, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    new-array v6, v7, [I

    fill-array-data v6, :array_6

    invoke-direct {v2, v0, v6}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 901
    invoke-virtual {v4, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 903
    invoke-virtual {v2, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 906
    new-instance v2, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    new-array v4, v5, [I

    fill-array-data v4, :array_7

    invoke-direct {v2, v0, v4}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 907
    iget-object v4, v0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v4, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 909
    invoke-virtual {v2, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 912
    new-instance v4, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    new-array v3, v3, [I

    fill-array-data v3, :array_8

    invoke-direct {v4, v0, v3}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 913
    invoke-virtual {v2, v4}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 916
    new-instance v2, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    new-array v3, v7, [I

    fill-array-data v3, :array_9

    invoke-direct {v2, v0, v3}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;[I)V

    .line 917
    invoke-virtual {v4, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    .line 919
    invoke-virtual {v2, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;)V

    return-void

    :array_0
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_3
    .array-data 4
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_7
    .array-data 4
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_8
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_9
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private getAmOrPmKeyCode(I)I
    .locals 8

    .line 762
    iget v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    if-ne v0, v2, :cond_3

    .line 764
    :cond_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 767
    :goto_0
    iget-object v5, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 768
    iget-object v5, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 769
    iget-object v6, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    const/4 v4, 0x2

    .line 771
    new-array v7, v4, [C

    aput-char v5, v7, v3

    aput-char v6, v7, v1

    invoke-virtual {v0, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 773
    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 774
    aget-object v3, v0, v3

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    iput v3, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 775
    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    goto :goto_1

    .line 777
    :cond_1
    const-string v0, "TimePickerDialog"

    const-string v3, "Unable to find keycodes for AM and PM."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 784
    iget p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    return p1

    :cond_4
    if-ne p1, v1, :cond_5

    .line 786
    iget p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    return p1

    :cond_5
    return v2
.end method

.method private getEnteredTime([Ljava/lang/Boolean;)[I
    .locals 9

    .line 723
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 724
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 725
    invoke-direct {p0, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 727
    :cond_0
    invoke-direct {p0, v3}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    const/4 v4, 0x1

    :goto_1
    move v6, v4

    const/4 v5, -0x1

    .line 734
    :goto_2
    iget-object v7, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v6, v7, :cond_7

    .line 735
    iget-object v7, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v7

    if-ne v6, v4, :cond_3

    move v5, v7

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v4, 0x1

    if-ne v6, v8, :cond_4

    mul-int/lit8 v8, v7, 0xa

    add-int/2addr v5, v8

    if-eqz p1, :cond_6

    if-nez v7, :cond_6

    .line 741
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, p1, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v4, 0x2

    if-ne v6, v8, :cond_5

    move v2, v7

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v4, 0x3

    if-ne v6, v8, :cond_6

    mul-int/lit8 v8, v7, 0xa

    add-int/2addr v2, v8

    if-eqz p1, :cond_6

    if-nez v7, :cond_6

    .line 748
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, p1, v1

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 753
    :cond_7
    filled-new-array {v2, v5, v0}, [I

    move-result-object p1

    return-object p1
.end method

.method private getValFromKeyCode(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    :pswitch_0
    const/16 p1, 0x9

    return p1

    :pswitch_1
    const/16 p1, 0x8

    return p1

    :pswitch_2
    const/4 p1, 0x7

    return p1

    :pswitch_3
    const/4 p1, 0x6

    return p1

    :pswitch_4
    const/4 p1, 0x5

    return p1

    :pswitch_5
    const/4 p1, 0x4

    return p1

    :pswitch_6
    const/4 p1, 0x3

    return p1

    :pswitch_7
    const/4 p1, 0x2

    return p1

    :pswitch_8
    const/4 p1, 0x1

    return p1

    :pswitch_9
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
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

.method private isTypedTimeFullyLegal()Z
    .locals 4

    .line 602
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 605
    invoke-direct {p0, v0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 606
    aget v3, v0, v2

    if-ltz v3, :cond_0

    aget v0, v0, v1

    if-ltz v0, :cond_0

    const/16 v3, 0x3c

    if-ge v0, v3, :cond_0

    return v1

    :cond_0
    return v2

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    .line 611
    invoke-direct {p0, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method private isTypedTimeLegalSoFar()Z
    .locals 6

    .line 588
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    .line 589
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 590
    invoke-virtual {v0, v5}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;->canReach(I)Lcom/sleepbot/datetimepicker/time/TimePickerDialog$Node;

    move-result-object v0

    if-nez v0, :cond_0

    return v3

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static newInstance(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/sleepbot/datetimepicker/time/TimePickerDialog;
    .locals 1

    .line 132
    new-instance v0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    invoke-direct {v0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;-><init>()V

    .line 133
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->initialize(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0
.end method

.method private onDoneButtonClick()V
    .locals 4

    .line 330
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 331
    invoke-direct {p0, v0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->tryVibrate()V

    .line 335
    :goto_0
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_1

    .line 336
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    .line 337
    invoke-virtual {v1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    .line 336
    invoke-interface {v0, v1, v2, v3}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;II)V

    .line 339
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private processKeyUp(I)Z
    .locals 5

    const/16 v0, 0x6f

    const/4 v1, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0x3d

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 476
    iget-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz p1, :cond_a

    .line 477
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 478
    invoke-direct {p0, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    :cond_1
    return v1

    :cond_2
    const/16 v0, 0x42

    if-ne p1, v0, :cond_6

    .line 483
    iget-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz p1, :cond_4

    .line 484
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 487
    :cond_3
    invoke-direct {p0, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    .line 489
    :cond_4
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    if-eqz p1, :cond_5

    .line 490
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    .line 491
    invoke-virtual {v0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    .line 490
    invoke-interface {p1, v0, v2, v3}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;II)V

    .line 493
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return v1

    :cond_6
    const/16 v0, 0x43

    if-ne p1, v0, :cond_9

    .line 496
    iget-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz p1, :cond_a

    .line 497
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 498
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->deleteLastTypedKey()I

    move-result p1

    .line 500
    invoke-direct {p0, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 501
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    goto :goto_0

    .line 502
    :cond_7
    invoke-direct {p0, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 503
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    goto :goto_0

    .line 505
    :cond_8
    invoke-direct {p0, p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 507
    :goto_0
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 508
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-static {v0, p1}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 509
    invoke-direct {p0, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    goto :goto_1

    :cond_9
    const/4 v0, 0x7

    if-eq p1, v0, :cond_b

    const/16 v0, 0x8

    if-eq p1, v0, :cond_b

    const/16 v0, 0x9

    if-eq p1, v0, :cond_b

    const/16 v0, 0xa

    if-eq p1, v0, :cond_b

    const/16 v0, 0xb

    if-eq p1, v0, :cond_b

    const/16 v0, 0xc

    if-eq p1, v0, :cond_b

    const/16 v0, 0xd

    if-eq p1, v0, :cond_b

    const/16 v0, 0xe

    if-eq p1, v0, :cond_b

    const/16 v0, 0xf

    if-eq p1, v0, :cond_b

    const/16 v0, 0x10

    if-eq p1, v0, :cond_b

    .line 512
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v0, :cond_a

    .line 518
    invoke-direct {p0, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v0

    if-eq p1, v0, :cond_b

    invoke-direct {p0, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v0

    if-ne p1, v0, :cond_a

    goto :goto_2

    :cond_a
    :goto_1
    return v2

    .line 519
    :cond_b
    :goto_2
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-nez v0, :cond_d

    .line 520
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    if-nez v0, :cond_c

    .line 522
    const-string p1, "TimePickerDialog"

    const-string v0, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 525
    :cond_c
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 526
    invoke-direct {p0, p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->tryStartingKbMode(I)V

    return v1

    .line 530
    :cond_d
    invoke-direct {p0, p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->addKeyIfLegal(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 531
    invoke-direct {p0, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    :cond_e
    return v1

    .line 473
    :cond_f
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return v1
.end method

.method private setAutocloseIfNeeded()V
    .locals 2

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 169
    invoke-virtual {p0, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->setCloseOnSingleTapMinute(Z)V

    :cond_0
    return-void
.end method

.method private setCurrentItemShowing(IZZZ)V
    .locals 4

    .line 431
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, p1, p2}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setCurrentItemShowing(IZ)V

    .line 434
    const-string p2, ": "

    if-nez p1, :cond_2

    .line 435
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v0

    .line 436
    iget-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_0

    .line 437
    rem-int/lit8 v0, v0, 0xc

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_1

    .line 441
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    iget-object p4, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    invoke-static {p2, p4}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 443
    :cond_1
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    goto :goto_0

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v0

    .line 446
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_3

    .line 448
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    iget-object p4, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-static {p2, p4}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 450
    :cond_3
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    :goto_0
    if-nez p1, :cond_4

    .line 453
    iget p4, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mWhite:I

    goto :goto_1

    :cond_4
    iget p4, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mUnfocusedWhite:I

    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 454
    iget p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mWhite:I

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mUnfocusedWhite:I

    .line 455
    :goto_2
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    iget-object p4, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x3f59999a    # 0.85f

    const p4, 0x3f8ccccd    # 1.1f

    .line 458
    invoke-static {p2, p1, p4}, Lcom/fourmob/datetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p3, :cond_6

    const-wide/16 p2, 0x12c

    .line 460
    invoke-virtual {p1, p2, p3}, Lcom/nineoldandroids/animation/ValueAnimator;->setStartDelay(J)V

    .line 462
    :cond_6
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private setHour(IZ)V
    .locals 3

    .line 400
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    .line 401
    const-string v0, "%02d"

    goto :goto_0

    .line 404
    :cond_0
    rem-int/lit8 p1, p1, 0xc

    .line 405
    const-string v0, "%d"

    if-nez p1, :cond_1

    const/16 p1, 0xc

    .line 410
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 411
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    .line 414
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-static {p2, p1}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private setMinute(I)V
    .locals 3

    const/16 v0, 0x3c

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 422
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "%02d"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 423
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-static {v0, p1}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private tryStartingKbMode(I)V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 548
    invoke-direct {p0, p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->addKeyIfLegal(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 549
    iput-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 550
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 551
    invoke-direct {p0, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    :cond_1
    return-void
.end method

.method private updateAmPmDisplay(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 346
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 348
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 350
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 352
    :cond_1
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDisplay(Z)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 653
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 654
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result p1

    .line 655
    iget-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v2

    .line 656
    invoke-direct {p0, p1, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 657
    invoke-direct {p0, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 658
    iget-boolean v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v2, :cond_1

    const/16 v2, 0xc

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 659
    :goto_0
    invoke-direct {p0, v0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    .line 661
    :cond_1
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result p1

    invoke-direct {p0, p1, v1, v1, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 662
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_2
    const/4 p1, 0x2

    .line 664
    new-array v2, p1, [Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    aput-object v3, v2, v1

    .line 665
    invoke-direct {p0, v2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v3

    .line 666
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "%2d"

    const-string v6, "%02d"

    if-eqz v4, :cond_3

    move-object v4, v6

    goto :goto_1

    :cond_3
    move-object v4, v5

    .line 667
    :goto_1
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v5, v6

    .line 668
    :cond_4
    aget v2, v3, v0

    const/16 v6, 0x20

    const/4 v7, -0x1

    if-ne v2, v7, :cond_5

    iget-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    goto :goto_2

    .line 669
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v2, v8, v0

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-char v4, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 670
    :goto_2
    aget v4, v3, v1

    if-ne v4, v7, :cond_6

    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    goto :goto_3

    .line 671
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 672
    :goto_3
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    iget v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mUnfocusedWhite:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 675
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    iget v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mUnfocusedWhite:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 678
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v0, :cond_7

    .line 679
    aget p1, v3, p1

    invoke-direct {p0, p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public initialize(Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/sleepbot/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .line 141
    iput p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    .line 142
    iput p3, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInitialMinute:I

    .line 143
    iput-boolean p4, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 175
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 176
    const-string v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "minute"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const-string v2, "is_24_hour_view"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    .line 180
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInitialMinute:I

    .line 181
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    .line 182
    const-string v0, "in_kb_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 184
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->setAutocloseIfNeeded()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 193
    sget p2, Lcom/fourmob/datetimepicker/R$layout;->time_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 194
    new-instance p2, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$KeyboardListener;

    invoke-direct {p2, p0, v1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$KeyboardListener;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;Lcom/sleepbot/datetimepicker/time/TimePickerDialog$1;)V

    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 198
    sget v2, Lcom/fourmob/datetimepicker/R$string;->hour_picker_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    .line 199
    sget v2, Lcom/fourmob/datetimepicker/R$string;->select_hours:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    .line 200
    sget v2, Lcom/fourmob/datetimepicker/R$string;->minute_picker_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    .line 201
    sget v2, Lcom/fourmob/datetimepicker/R$string;->select_minutes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    .line 202
    sget v2, Lcom/fourmob/datetimepicker/R$color;->white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mWhite:I

    .line 203
    sget v2, Lcom/fourmob/datetimepicker/R$color;->transparent_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mUnfocusedWhite:I

    .line 205
    sget v2, Lcom/fourmob/datetimepicker/R$id;->hours:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    .line 206
    invoke-virtual {v2, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 207
    sget v2, Lcom/fourmob/datetimepicker/R$id;->hour_space:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    .line 208
    sget v2, Lcom/fourmob/datetimepicker/R$id;->minutes_space:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    .line 209
    sget v2, Lcom/fourmob/datetimepicker/R$id;->minutes:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    .line 210
    invoke-virtual {v2, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 211
    sget v2, Lcom/fourmob/datetimepicker/R$id;->ampm_label:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    .line 212
    invoke-virtual {v2, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 230
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 231
    aget-object v4, v2, v3

    iput-object v4, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    .line 232
    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    .line 234
    sget v2, Lcom/fourmob/datetimepicker/R$id;->time_picker:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    iput-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    .line 235
    invoke-virtual {v2, p0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->setOnValueSelectedListener(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V

    .line 236
    iget-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 237
    iget-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 238
    iget-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v5, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    iget v6, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInitialMinute:I

    iget-boolean v7, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->initialize(Landroid/content/Context;IIZ)V

    if-eqz p3, :cond_0

    .line 241
    const-string v2, "current_item_showing"

    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    invoke-virtual {p3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 244
    :goto_0
    invoke-direct {p0, v2, v3, v0, v0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 245
    iget-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 247
    iget-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    new-instance v4, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$2;

    invoke-direct {v4, p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$2;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    new-instance v4, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$3;

    invoke-direct {v4, p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$3;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    sget v2, Lcom/fourmob/datetimepicker/R$id;->done_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    .line 263
    new-instance v4, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$4;

    invoke-direct {v4, p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$4;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 271
    sget p2, Lcom/fourmob/datetimepicker/R$id;->cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$5;

    invoke-direct {v2, p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$5;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    sget p2, Lcom/fourmob/datetimepicker/R$id;->ampm_hitspace:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    .line 280
    iget-boolean p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz p2, :cond_1

    .line 281
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 285
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 286
    sget v2, Lcom/fourmob/datetimepicker/R$id;->separator:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 287
    invoke-virtual {v2, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 289
    :cond_1
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    const/16 v2, 0xc

    if-ge p2, v2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    :goto_1
    invoke-direct {p0, p2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    .line 291
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    new-instance v2, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$6;

    invoke-direct {v2, p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$6;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    :goto_2
    iput-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAllowAutoAdvance:Z

    .line 308
    iget p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInitialHourOfDay:I

    invoke-direct {p0, p2, v0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 309
    iget p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInitialMinute:I

    invoke-direct {p0, p2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 312
    sget p2, Lcom/fourmob/datetimepicker/R$string;->time_placeholder:I

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 313
    sget p2, Lcom/fourmob/datetimepicker/R$string;->deleted_key:I

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    .line 314
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    iput-char p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    const/4 p2, -0x1

    .line 315
    iput p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    iput p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 316
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->generateLegalTimesTree()V

    .line 317
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v0, :cond_3

    .line 318
    const-string v0, "typed_times"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    .line 319
    invoke-direct {p0, p2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->tryStartingKbMode(I)V

    .line 320
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    goto :goto_3

    .line 321
    :cond_3
    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    if-nez p2, :cond_4

    .line 322
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    .line 325
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->setAutocloseIfNeeded()V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    if-eqz v0, :cond_0

    .line 359
    const-string v1, "hour_of_day"

    invoke-virtual {v0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 360
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v0

    const-string v1, "minute"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 361
    const-string v0, "is_24_hour_view"

    iget-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 362
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    const-string v1, "current_item_showing"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 363
    const-string v0, "in_kb_mode"

    iget-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    iget-boolean v0, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "typed_times"

    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onValueSelected(IIZ)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 376
    invoke-direct {p0, p2, p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 377
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p2, v1, p1

    const-string p2, "%d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 378
    iget-boolean v1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mAllowAutoAdvance:Z

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 379
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 380
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 382
    :cond_0
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-static {p1, p2}, Lcom/fourmob/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-ne p1, v0, :cond_2

    .line 384
    invoke-direct {p0, p2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 385
    iget-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mCloseOnSingleTapMinute:Z

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    .line 386
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->onDoneButtonClick()V

    return-void

    :cond_2
    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    .line 389
    invoke-direct {p0, p2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    return-void

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 391
    invoke-direct {p0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result p1

    if-nez p1, :cond_4

    .line 392
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 394
    :cond_4
    invoke-direct {p0, v0}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    :cond_5
    return-void
.end method

.method public setCloseOnSingleTapMinute(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->mCloseOnSingleTapMinute:Z

    return-void
.end method
