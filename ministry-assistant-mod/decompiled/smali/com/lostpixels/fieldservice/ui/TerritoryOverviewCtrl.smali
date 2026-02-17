.class public Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private final mDateList:Ljava/util/ArrayList;

.field private final mDayList:[I

.field private final mHourList:Ljava/util/TreeSet;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPaintText:Landroid/graphics/Paint;

.field private mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field private final marginBetween:I

.field private final marginBottomText:I

.field private mbShowAmPm:Z

.field private final miFontSize:I

.field private final r:Landroid/graphics/Rect;

.field private final tintColor:I

.field private final weekDays:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->r:Landroid/graphics/Rect;

    .line 49
    new-instance p2, Ljava/text/DateFormatSymbols;

    invoke-direct {p2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->weekDays:[Ljava/lang/String;

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mDateList:Ljava/util/ArrayList;

    const/4 p2, 0x7

    .line 56
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mDayList:[I

    .line 57
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaint:Landroid/graphics/Paint;

    .line 58
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaintText:Landroid/graphics/Paint;

    .line 59
    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    iput-object p2, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mHourList:Ljava/util/TreeSet;

    const/4 p2, 0x0

    .line 60
    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mbShowAmPm:Z

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070385

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->miFontSize:I

    .line 62
    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->getThemeColor(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->tintColor:I

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070386

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->marginBetween:I

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070384

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->marginBottomText:I

    return-void
.end method


# virtual methods
.method protected calcTimeOverview()V
    .locals 12

    .line 77
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    .line 79
    :try_start_0
    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 82
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 83
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 84
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    .line 85
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v7

    if-eqz v7, :cond_4

    .line 86
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v7

    if-eq v7, v4, :cond_4

    .line 87
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2

    .line 90
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v6

    invoke-virtual {v1, v0, v6, v7}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 92
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 93
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 94
    iget-object v7, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mDateList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 88
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mDateList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_5
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 105
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mDayList:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 106
    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mDateList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_6
    :goto_2
    if-ge v3, v5, :cond_7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Ljava/util/Date;

    if-eqz v6, :cond_6

    .line 108
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 109
    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mDayList:[I

    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v7, v4

    aget v8, v6, v7

    add-int/2addr v8, v4

    aput v8, v6, v7

    .line 110
    iget-object v6, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mHourList:Ljava/util/TreeSet;

    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 114
    :cond_7
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void

    :goto_3
    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    .line 115
    throw v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    .line 121
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 127
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->r:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->marginBetween:I

    mul-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    div-double v7, v2, v4

    .line 129
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->marginBetween:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v1, v2

    .line 132
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaint:Landroid/graphics/Paint;

    const v10, -0x8a8a8b

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->r:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    int-to-float v3, v3

    add-float v5, v3, v9

    iget-object v6, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaint:Landroid/graphics/Paint;

    move v3, v4

    move v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    float-to-int v11, v9

    .line 136
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->tintColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaintText:Landroid/graphics/Paint;

    iget v2, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->miFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaintText:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaintText:Landroid/graphics/Paint;

    iget-boolean v2, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mbShowAmPm:Z

    if-eqz v2, :cond_0

    const-string v2, "12pm "

    goto :goto_0

    :cond_0
    const-string v2, "12 "

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    .line 142
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mHourList:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    const/4 v14, 0x1

    if-nez v1, :cond_c

    .line 143
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mHourList:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mHourList:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v14

    .line 144
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-double v2, v2

    int-to-double v4, v1

    div-double v15, v2, v4

    .line 145
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mHourList:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 146
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mHourList:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v3, v1

    const/4 v4, 0x0

    :goto_1
    if-gt v3, v2, :cond_3

    .line 149
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mHourList:Ljava/util/TreeSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v3, v2, :cond_1

    .line 151
    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->r:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-double v13, v6

    move/from16 v18, v11

    int-to-double v10, v4

    mul-double v10, v10, v15

    add-double/2addr v13, v10

    double-to-int v6, v13

    int-to-float v6, v6

    iget v10, v5, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move v13, v4

    move v4, v5

    move/from16 v11, v18

    int-to-float v5, v11

    move v14, v2

    move v2, v6

    iget-object v6, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaint:Landroid/graphics/Paint;

    move-wide/from16 v18, v7

    move v7, v13

    move v13, v3

    move v3, v10

    move v10, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_1
    move v10, v1

    move v14, v2

    move v13, v3

    move-wide/from16 v18, v7

    move v7, v4

    .line 153
    iget-object v1, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->r:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-double v3, v2

    int-to-double v5, v7

    mul-double v5, v5, v15

    add-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    int-to-double v4, v2

    add-int/lit8 v2, v7, 0x1

    move v6, v1

    int-to-double v1, v2

    mul-double v1, v1, v15

    add-double/2addr v4, v1

    double-to-int v1, v4

    int-to-float v4, v1

    int-to-float v5, v11

    move v2, v3

    move v3, v6

    iget-object v6, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    move v10, v1

    move v14, v2

    move v13, v3

    move-wide/from16 v18, v7

    move-object/from16 v1, p1

    move v7, v4

    :goto_2
    add-int/lit8 v3, v13, 0x1

    add-int/lit8 v4, v7, 0x1

    move v1, v10

    move v2, v14

    move-wide/from16 v7, v18

    const v10, -0x8a8a8b

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    move v10, v1

    move v14, v2

    move-wide/from16 v18, v7

    move-object/from16 v1, p1

    .line 157
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->r:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v12

    float-to-int v2, v2

    .line 158
    iget-object v3, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mHourList:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v10

    const/4 v4, 0x0

    .line 161
    :goto_3
    const-string v5, "am"

    const-string v6, "pm"

    const/16 v7, 0xc

    if-gt v3, v14, :cond_9

    .line 163
    rem-int v8, v4, v2

    if-nez v8, :cond_8

    .line 166
    iget-boolean v8, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mbShowAmPm:Z

    if-eqz v8, :cond_4

    if-le v3, v7, :cond_4

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v3, -0xc

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    if-eqz v8, :cond_5

    if-gt v3, v7, :cond_5

    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 172
    :cond_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 173
    :goto_4
    iget-object v6, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->r:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-double v7, v7

    move-wide/from16 v20, v7

    int-to-double v7, v4

    mul-double v7, v7, v15

    add-double v7, v20, v7

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    add-double v7, v7, v20

    move-wide/from16 v20, v7

    float-to-double v7, v12

    add-double v7, v20, v7

    .line 174
    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-wide/from16 v22, v7

    int-to-double v7, v6

    cmpl-double v13, v22, v7

    if-lez v13, :cond_6

    int-to-float v6, v6

    sub-float/2addr v6, v12

    .line 175
    iget v7, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->marginBetween:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v7, v6

    goto :goto_5

    :cond_6
    move-wide/from16 v7, v20

    :goto_5
    if-ne v3, v10, :cond_7

    .line 177
    iget v6, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->marginBottomText:I

    move v13, v2

    move/from16 v20, v3

    int-to-double v2, v6

    add-double/2addr v7, v2

    goto :goto_6

    :cond_7
    move v13, v2

    move/from16 v20, v3

    :goto_6
    double-to-int v2, v7

    int-to-float v2, v2

    .line 178
    iget v3, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->marginBottomText:I

    sub-int v3, v11, v3

    int-to-float v3, v3

    iget-object v6, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_8
    move v13, v2

    move/from16 v20, v3

    :goto_7
    add-int/lit8 v3, v20, 0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v13

    goto/16 :goto_3

    .line 182
    :cond_9
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mHourList:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 184
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mHourList:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 186
    iget-boolean v3, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mbShowAmPm:Z

    if-eqz v3, :cond_a

    if-le v2, v7, :cond_a

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v2, v7

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_a
    if-eqz v3, :cond_b

    if-gt v2, v7, :cond_b

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 192
    :cond_b
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    :goto_8
    iget-object v3, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->r:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->marginBottomText:I

    sub-int/2addr v11, v4

    int-to-float v4, v11

    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_c
    move-object/from16 v1, p1

    move-wide/from16 v18, v7

    :cond_d
    :goto_9
    const/4 v2, 0x0

    :goto_a
    const/4 v3, 0x7

    if-ge v2, v3, :cond_f

    .line 201
    iget-object v3, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mDayList:[I

    add-int/lit8 v7, v2, 0x1

    rem-int/lit8 v4, v7, 0x7

    aget v3, v3, v4

    if-lez v3, :cond_e

    .line 202
    iget-object v3, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->tintColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const v8, -0x8a8a8b

    goto :goto_b

    .line 204
    :cond_e
    iget-object v3, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaint:Landroid/graphics/Paint;

    const v8, -0x8a8a8b

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    :goto_b
    iget-object v3, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->r:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-double v5, v4

    int-to-double v10, v2

    mul-double v10, v10, v18

    add-double/2addr v5, v10

    iget v10, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->marginBetween:I

    mul-int v11, v10, v2

    int-to-double v11, v11

    add-double/2addr v5, v11

    double-to-int v5, v5

    int-to-float v5, v5

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v3

    sub-float/2addr v6, v9

    int-to-double v11, v4

    int-to-double v13, v7

    mul-double v13, v13, v18

    add-double/2addr v11, v13

    mul-int v10, v10, v2

    int-to-double v13, v10

    add-double/2addr v11, v13

    double-to-int v2, v11

    int-to-float v4, v2

    int-to-float v2, v3

    move v3, v6

    iget-object v6, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaint:Landroid/graphics/Paint;

    move/from16 v24, v5

    move v5, v2

    move/from16 v2, v24

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v2, v7

    goto :goto_a

    :cond_f
    const/4 v13, 0x0

    :goto_c
    if-ge v13, v3, :cond_10

    .line 211
    iget-object v2, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->weekDays:[Ljava/lang/String;

    add-int/lit8 v4, v13, 0x1

    rem-int/lit8 v5, v4, 0x7

    const/16 v17, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v2, v2, v5

    iget-object v5, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->r:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-double v6, v6

    int-to-double v8, v13

    mul-double v8, v8, v18

    add-double/2addr v6, v8

    iget v8, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->marginBetween:I

    mul-int v8, v8, v13

    int-to-double v8, v8

    add-double/2addr v6, v8

    iget v8, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->marginBottomText:I

    int-to-double v9, v8

    add-double/2addr v6, v9

    double-to-int v6, v6

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v8

    int-to-float v5, v5

    iget-object v7, v0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v13, v4

    goto :goto_c

    :cond_10
    return-void
.end method

.method public setShowAmPm(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mbShowAmPm:Z

    return-void
.end method

.method public setTerritory(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 73
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/ui/TerritoryOverviewCtrl;->calcTimeOverview()V

    return-void
.end method
