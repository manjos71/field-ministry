.class public Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$MyMarkerView;,
        Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$ChartUpdateListner;
    }
.end annotation


# static fields
.field public static final MYCOLORS_COLORS:[I


# instance fields
.field private accumulatedValues:Z

.field private countCustom1:Z

.field private countCustom2:Z

.field private countCustom3:Z

.field private mChartListner:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$ChartUpdateListner;

.field private mChartView:Lcom/github/mikephil/charting/charts/LineChart;

.field final mDateFormatMonth:Ljava/text/SimpleDateFormat;

.field final mMonths:Ljava/util/ArrayList;

.field meStatisticsType:I

.field private mtxtBooks:Landroid/widget/TextView;

.field private mtxtBrochures:Landroid/widget/TextView;

.field private mtxtDVDs:Landroid/widget/TextView;

.field private mtxtHours:Landroid/widget/TextView;

.field private mtxtMags:Landroid/widget/TextView;

.field private mtxtPublications:Landroid/widget/TextView;

.field private mtxtRVs:Landroid/widget/TextView;

.field private mtxtStudies:Landroid/widget/TextView;

.field private mtxtTracts:Landroid/widget/TextView;

.field private mtxtVideoShowings:Landroid/widget/TextView;

.field realm:Lio/realm/Realm;


# direct methods
.method static bridge synthetic -$$Nest$fputaccumulatedValues(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->accumulatedValues:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 51
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->MYCOLORS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0602bd
        0x7f0602be
        0x7f0602bf
        0x7f0602c0
        0x7f0602c1
        0x7f0602c2
        0x7f0602c3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLL yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mDateFormatMonth:Ljava/text/SimpleDateFormat;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mMonths:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->meStatisticsType:I

    .line 77
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->accumulatedValues:Z

    return-void
.end method

.method private fillBestMonths()V
    .locals 32

    move-object/from16 v0, p0

    .line 178
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 181
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x1

    .line 182
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 185
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v5

    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isYearEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    add-int/lit8 v3, v3, -0x1

    .line 189
    :cond_0
    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    invoke-static {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v5

    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v5, v6, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isYearEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v3, v5, :cond_18

    add-int/2addr v3, v2

    const/4 v5, 0x0

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 217
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-gt v3, v4, :cond_e

    .line 218
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v4

    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v4, v2, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v2

    move-object/from16 v27, v1

    move/from16 v4, v17

    move/from16 v1, v18

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    move/from16 v5, v19

    move/from16 v7, v20

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move/from16 v10, v23

    move/from16 v11, v24

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move/from16 v12, v25

    const/4 v13, 0x1

    move-object/from16 v25, v14

    :goto_2
    const/16 v14, 0xc

    if-gt v13, v14, :cond_d

    .line 220
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v14

    .line 223
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v28

    move-object/from16 v29, v2

    invoke-virtual/range {v28 .. v28}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v2

    move/from16 v28, v13

    const/4 v13, 0x5

    if-le v2, v6, :cond_2

    .line 224
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v2

    .line 225
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    move/from16 v17, v2

    const/4 v2, 0x1

    .line 226
    invoke-virtual {v6, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 227
    invoke-static/range {v28 .. v28}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v26

    add-int/lit8 v13, v26, -0x1

    invoke-virtual {v6, v3, v13, v2}, Ljava/util/Calendar;->set(III)V

    const/4 v13, 0x2

    .line 228
    invoke-virtual {v6, v13}, Ljava/util/Calendar;->get(I)I

    move-result v26

    add-int/lit8 v13, v26, 0x1

    invoke-static {v3, v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceYear2Year(II)I

    move-result v13

    invoke-virtual {v6, v2, v13}, Ljava/util/Calendar;->set(II)V

    .line 229
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    move/from16 v31, v17

    move-object/from16 v17, v6

    move/from16 v6, v31

    goto :goto_3

    :cond_2
    const/4 v2, 0x1

    .line 233
    :goto_3
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v13

    if-le v13, v4, :cond_3

    .line 234
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v4

    .line 235
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    move/from16 v18, v4

    const/4 v4, 0x5

    .line 236
    invoke-virtual {v13, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 237
    invoke-static/range {v28 .. v28}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v13, v3, v4, v2}, Ljava/util/Calendar;->set(III)V

    const/4 v4, 0x2

    .line 238
    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v26

    add-int/lit8 v4, v26, 0x1

    invoke-static {v3, v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceYear2Year(II)I

    move-result v4

    invoke-virtual {v13, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 239
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    move/from16 v31, v18

    move-object/from16 v18, v4

    move/from16 v4, v31

    .line 243
    :cond_3
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v13

    if-le v13, v1, :cond_4

    .line 244
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v1

    .line 245
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    move/from16 v19, v1

    const/4 v1, 0x5

    .line 246
    invoke-virtual {v13, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 247
    invoke-static/range {v28 .. v28}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v13, v3, v1, v2}, Ljava/util/Calendar;->set(III)V

    const/4 v1, 0x2

    .line 248
    invoke-virtual {v13, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    add-int/lit8 v1, v26, 0x1

    invoke-static {v3, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceYear2Year(II)I

    move-result v1

    invoke-virtual {v13, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 249
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    move/from16 v31, v19

    move-object/from16 v19, v1

    move/from16 v1, v31

    .line 253
    :cond_4
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v13

    if-le v13, v5, :cond_5

    .line 254
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v5

    .line 255
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    move/from16 v30, v1

    const/4 v1, 0x5

    .line 256
    invoke-virtual {v13, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 257
    invoke-static/range {v28 .. v28}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v13, v3, v1, v2}, Ljava/util/Calendar;->set(III)V

    const/4 v1, 0x2

    .line 258
    invoke-virtual {v13, v1}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int/lit8 v1, v20, 0x1

    invoke-static {v3, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceYear2Year(II)I

    move-result v1

    invoke-virtual {v13, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 259
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_4

    :cond_5
    move/from16 v30, v1

    .line 263
    :goto_4
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v1

    if-le v1, v9, :cond_6

    .line 264
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v9

    .line 265
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v13, 0x5

    .line 266
    invoke-virtual {v1, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 267
    invoke-static/range {v28 .. v28}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v13

    sub-int/2addr v13, v2

    invoke-virtual {v1, v3, v13, v2}, Ljava/util/Calendar;->set(III)V

    const/4 v13, 0x2

    .line 268
    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v23

    add-int/lit8 v13, v23, 0x1

    invoke-static {v3, v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceYear2Year(II)I

    move-result v13

    invoke-virtual {v1, v2, v13}, Ljava/util/Calendar;->set(II)V

    .line 269
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object/from16 v1, v23

    .line 273
    :goto_5
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v13

    if-le v13, v7, :cond_7

    .line 274
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v7

    .line 275
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    move-object/from16 v23, v1

    const/4 v1, 0x5

    .line 276
    invoke-virtual {v13, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 277
    invoke-static/range {v28 .. v28}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v13, v3, v1, v2}, Ljava/util/Calendar;->set(III)V

    const/4 v1, 0x2

    .line 278
    invoke-virtual {v13, v1}, Ljava/util/Calendar;->get(I)I

    move-result v21

    add-int/lit8 v1, v21, 0x1

    invoke-static {v3, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceYear2Year(II)I

    move-result v1

    invoke-virtual {v13, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 279
    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_6

    :cond_7
    move-object/from16 v23, v1

    .line 283
    :goto_6
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v1

    if-le v1, v8, :cond_8

    .line 284
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v1

    .line 285
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/4 v13, 0x5

    .line 286
    invoke-virtual {v8, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 287
    invoke-static/range {v28 .. v28}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v13

    sub-int/2addr v13, v2

    invoke-virtual {v8, v3, v13, v2}, Ljava/util/Calendar;->set(III)V

    const/4 v13, 0x2

    .line 288
    invoke-virtual {v8, v13}, Ljava/util/Calendar;->get(I)I

    move-result v22

    add-int/lit8 v13, v22, 0x1

    invoke-static {v3, v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceYear2Year(II)I

    move-result v13

    invoke-virtual {v8, v2, v13}, Ljava/util/Calendar;->set(II)V

    .line 289
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    move-object/from16 v22, v8

    move v8, v1

    .line 294
    :cond_8
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v1

    if-le v1, v9, :cond_9

    .line 295
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v1

    .line 296
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/4 v13, 0x5

    .line 297
    invoke-virtual {v9, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 298
    invoke-static/range {v28 .. v28}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v13

    sub-int/2addr v13, v2

    invoke-virtual {v9, v3, v13, v2}, Ljava/util/Calendar;->set(III)V

    const/4 v13, 0x2

    .line 299
    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v23

    add-int/lit8 v13, v23, 0x1

    invoke-static {v3, v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceYear2Year(II)I

    move-result v13

    invoke-virtual {v9, v2, v13}, Ljava/util/Calendar;->set(II)V

    .line 300
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    move-object/from16 v23, v9

    move v9, v1

    .line 305
    :cond_9
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v1

    if-le v1, v10, :cond_a

    .line 306
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v1

    .line 307
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    const/4 v13, 0x5

    .line 308
    invoke-virtual {v10, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 309
    invoke-static/range {v28 .. v28}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v13

    sub-int/2addr v13, v2

    invoke-virtual {v10, v3, v13, v2}, Ljava/util/Calendar;->set(III)V

    const/4 v13, 0x2

    .line 310
    invoke-virtual {v10, v13}, Ljava/util/Calendar;->get(I)I

    move-result v24

    add-int/lit8 v13, v24, 0x1

    invoke-static {v3, v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceYear2Year(II)I

    move-result v13

    invoke-virtual {v10, v2, v13}, Ljava/util/Calendar;->set(II)V

    .line 311
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    move v10, v1

    move-object/from16 v24, v13

    .line 315
    :cond_a
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v1

    if-le v1, v11, :cond_b

    .line 316
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v1

    .line 317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/4 v13, 0x5

    .line 318
    invoke-virtual {v11, v13, v2}, Ljava/util/Calendar;->set(II)V

    .line 319
    invoke-static/range {v28 .. v28}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v13

    sub-int/2addr v13, v2

    invoke-virtual {v11, v3, v13, v2}, Ljava/util/Calendar;->set(III)V

    const/4 v13, 0x2

    .line 320
    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    move-result v25

    add-int/lit8 v13, v25, 0x1

    invoke-static {v3, v13}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceYear2Year(II)I

    move-result v13

    invoke-virtual {v11, v2, v13}, Ljava/util/Calendar;->set(II)V

    .line 321
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    move v11, v1

    move-object/from16 v25, v2

    .line 325
    :cond_b
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v1

    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v2

    add-int/2addr v1, v2

    if-le v1, v12, :cond_c

    .line 326
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v1

    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v2

    add-int/2addr v1, v2

    .line 327
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v12, 0x1

    const/4 v13, 0x5

    .line 328
    invoke-virtual {v2, v13, v12}, Ljava/util/Calendar;->set(II)V

    .line 329
    invoke-static/range {v28 .. v28}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v13

    sub-int/2addr v13, v12

    invoke-virtual {v2, v3, v13, v12}, Ljava/util/Calendar;->set(III)V

    const/4 v13, 0x2

    .line 330
    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v14, v12

    invoke-static {v3, v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceYear2Year(II)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 331
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    move v12, v1

    :cond_c
    add-int/lit8 v13, v28, 0x1

    move-object/from16 v2, v29

    move/from16 v1, v30

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    const/4 v2, 0x1

    move/from16 v24, v11

    move/from16 v25, v12

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move/from16 v22, v9

    move/from16 v23, v10

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move/from16 v18, v1

    move/from16 v19, v5

    move-object/from16 v5, v17

    move-object/from16 v1, v27

    move/from16 v17, v4

    goto/16 :goto_1

    :cond_e
    if-eqz v5, :cond_f

    .line 337
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 338
    const-string v2, "inputMode"

    const-string v3, "hhmm"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 339
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtHours:Landroid/widget/TextView;

    new-instance v3, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v3, v6}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(I)V

    invoke-static {v3, v1, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mDateFormatMonth:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v16

    const/16 v26, 0x1

    aput-object v3, v5, v26

    const-string v1, "%s (%s)"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_f
    const-string v1, "%d (%s)"

    if-eqz v7, :cond_10

    .line 343
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtPublications:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mDateFormatMonth:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v16

    const/16 v26, 0x1

    aput-object v4, v6, v26

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    if-eqz v8, :cond_11

    .line 346
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtBooks:Landroid/widget/TextView;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mDateFormatMonth:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v16

    const/16 v26, 0x1

    aput-object v4, v6, v26

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    if-eqz v9, :cond_12

    .line 349
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtTracts:Landroid/widget/TextView;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mDateFormatMonth:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v16

    const/16 v26, 0x1

    aput-object v4, v6, v26

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    if-eqz v10, :cond_13

    .line 352
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtBrochures:Landroid/widget/TextView;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mDateFormatMonth:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v16

    const/16 v26, 0x1

    aput-object v4, v6, v26

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    if-eqz v11, :cond_14

    .line 355
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtMags:Landroid/widget/TextView;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mDateFormatMonth:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v16

    const/16 v26, 0x1

    aput-object v4, v6, v26

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    if-eqz v12, :cond_15

    .line 359
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtDVDs:Landroid/widget/TextView;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mDateFormatMonth:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v3, v6, v16

    const/16 v26, 0x1

    aput-object v4, v6, v26

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    if-eqz v13, :cond_16

    .line 362
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtVideoShowings:Landroid/widget/TextView;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mDateFormatMonth:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x2

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v3, v5, v16

    const/16 v26, 0x1

    aput-object v4, v5, v26

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    if-eqz v14, :cond_17

    .line 365
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtRVs:Landroid/widget/TextView;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mDateFormatMonth:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x2

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v3, v5, v16

    const/16 v26, 0x1

    aput-object v4, v5, v26

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    if-eqz v15, :cond_18

    .line 368
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtStudies:Landroid/widget/TextView;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mDateFormatMonth:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x2

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v3, v5, v16

    const/16 v26, 0x1

    aput-object v4, v5, v26

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    return-void
.end method

.method private getValue(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)F
    .locals 3

    .line 485
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->meStatisticsType:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 490
    :pswitch_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v0

    double-to-float v0, v0

    .line 491
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    .line 492
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->countCustom1:Z

    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    .line 494
    :cond_0
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->countCustom2:Z

    if-eqz v1, :cond_1

    .line 495
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    .line 496
    :cond_1
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->countCustom3:Z

    if-eqz v1, :cond_2

    .line 497
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v1

    double-to-float p1, v1

    add-float/2addr v0, p1

    :cond_2
    return v0

    .line 509
    :pswitch_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result p1

    int-to-float p1, p1

    return p1

    .line 506
    :pswitch_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result p1

    int-to-float p1, p1

    return p1

    .line 503
    :pswitch_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result p1

    int-to-float p1, p1

    return p1

    .line 500
    :pswitch_4
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result p1

    int-to-float p1, p1

    return p1

    .line 521
    :pswitch_5
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getStudyPersons()I

    move-result v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    return p1

    .line 515
    :pswitch_6
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result p1

    int-to-float p1, p1

    return p1

    .line 512
    :pswitch_7
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result p1

    int-to-float p1, p1

    return p1

    .line 518
    :pswitch_8
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result p1

    int-to-float p1, p1

    return p1

    .line 487
    :pswitch_9
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/Time;->toDouble()D

    move-result-wide v0

    double-to-float p1, v0

    return p1

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


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 159
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 160
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    .line 161
    instance-of v0, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$ChartUpdateListner;

    if-eqz v0, :cond_0

    .line 162
    check-cast p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$ChartUpdateListner;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartListner:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$ChartUpdateListner;

    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implemenet ChartUpdateListner"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0c0129

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090032

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtPublications:Landroid/widget/TextView;

    const p2, 0x7f090052

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtHours:Landroid/widget/TextView;

    const p2, 0x7f090006

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtBooks:Landroid/widget/TextView;

    const p2, 0x7f09005c

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtTracts:Landroid/widget/TextView;

    const p2, 0x7f090007

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtBrochures:Landroid/widget/TextView;

    const p2, 0x7f09002e

    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtMags:Landroid/widget/TextView;

    const p2, 0x7f09005f

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtVideoShowings:Landroid/widget/TextView;

    const p2, 0x7f09005e

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtDVDs:Landroid/widget/TextView;

    const p2, 0x7f090035

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtRVs:Landroid/widget/TextView;

    const p2, 0x7f090055

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mtxtStudies:Landroid/widget/TextView;

    const p2, 0x7f090537

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    .line 94
    new-instance p3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$1;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    .line 103
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result p3

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->countCustom1:Z

    .line 104
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result p3

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->countCustom2:Z

    .line 105
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result p2

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->countCustom3:Z

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 108
    const-string p3, "ReportDensity"

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    const v1, 0x7f090378

    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-eq p3, v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090387

    .line 110
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eq p3, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    const-string p3, "showVideo"

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f090391

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const p2, 0x7f090147

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    .line 118
    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/components/YAxis;->setStartAtZero(Z)V

    .line 119
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/components/ComponentBase;->setEnabled(Z)V

    .line 120
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/components/AxisBase;->setDrawAxisLine(Z)V

    .line 121
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDrawGridBackground(Z)V

    .line 123
    new-instance p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$MyMarkerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v1, 0x7f0c0063

    invoke-direct {p2, p3, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$MyMarkerView;-><init>(Landroid/content/Context;I)V

    .line 124
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p3, p2}, Lcom/github/mikephil/charting/charts/Chart;->setMarkerView(Lcom/github/mikephil/charting/components/MarkerView;)V

    .line 127
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/charts/Chart;->setHighlightEnabled(Z)V

    .line 129
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/charts/Chart;->setTouchEnabled(Z)V

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 132
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 133
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 137
    :cond_3
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDragEnabled(Z)V

    .line 138
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setScaleEnabled(Z)V

    .line 139
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    const-string p3, ""

    invoke-virtual {p2, p3}, Lcom/github/mikephil/charting/charts/Chart;->setDescription(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p2, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setPinchZoom(Z)V

    .line 142
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/charts/Chart;->setHighlightEnabled(Z)V

    .line 145
    new-instance p2, Ljava/text/DateFormatSymbols;

    invoke-direct {p2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p2

    :goto_2
    const/16 p3, 0xc

    if-ge v0, p3, :cond_4

    .line 147
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mMonths:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x8

    rem-int/2addr v2, p3

    aget-object p3, p2, v2

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 151
    :cond_4
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->setupChart()V

    .line 153
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->fillBestMonths()V

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 170
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartListner:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$ChartUpdateListner;

    .line 172
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method setupChart()V
    .locals 15

    .line 380
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 383
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 384
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 387
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isYearEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 391
    :cond_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v3, v4, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isYearEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 397
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 398
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v2, v4, :cond_6

    .line 399
    new-instance v4, Lcom/github/mikephil/charting/utils/ColorTemplate;

    invoke-direct {v4}, Lcom/github/mikephil/charting/utils/ColorTemplate;-><init>()V

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->MYCOLORS_COLORS:[I

    invoke-static {v4, v5}, Lcom/github/mikephil/charting/utils/ColorTemplate;->createColors(Landroid/content/res/Resources;[I)Ljava/util/List;

    move-result-object v4

    add-int/2addr v2, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 402
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-gt v2, v7, :cond_6

    .line 404
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartListner:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$ChartUpdateListner;

    if-eqz v7, :cond_2

    invoke-interface {v7, v2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$ChartUpdateListner;->shouldShowYear(I)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_4

    .line 409
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 411
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    invoke-static {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v8

    iget-object v9, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->realm:Lio/realm/Realm;

    invoke-virtual {v8, v9, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_2
    const/16 v12, 0xc

    if-gt v11, v12, :cond_5

    .line 415
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->serviceMonth2Month(I)I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(I)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v12

    if-nez v9, :cond_3

    .line 417
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getYear()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 419
    :cond_3
    iget-boolean v13, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->accumulatedValues:Z

    if-eqz v13, :cond_4

    .line 420
    invoke-direct {p0, v12}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->getValue(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)F

    move-result v12

    add-float/2addr v10, v12

    .line 421
    new-instance v12, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v13, v11, -0x1

    invoke-direct {v12, v10, v13}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 423
    :cond_4
    new-instance v13, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {p0, v12}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->getValue(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)F

    move-result v12

    add-int/lit8 v14, v11, -0x1

    invoke-direct {v13, v12, v14}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 426
    :cond_5
    new-instance v8, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-direct {v8, v7, v9}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/high16 v7, 0x40800000    # 4.0f

    .line 427
    invoke-virtual {v8, v7}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setLineWidth(F)V

    .line 428
    invoke-virtual {v8, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleSize(F)V

    .line 429
    invoke-virtual {v8, v1}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setDrawFilled(Z)V

    .line 430
    invoke-virtual {v8, v5}, Lcom/github/mikephil/charting/data/DataSet;->setDrawValues(Z)V

    .line 431
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    rem-int v7, v6, v7

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/github/mikephil/charting/data/LineRadarDataSet;->setFillColor(I)V

    .line 432
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    rem-int v7, v6, v7

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/github/mikephil/charting/data/DataSet;->setColor(I)V

    .line 433
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 439
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 441
    new-instance v0, Lcom/github/mikephil/charting/data/LineData;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mMonths:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 442
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 444
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    .line 445
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, -0x1

    .line 446
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/ComponentBase;->setTextColor(I)V

    .line 449
    :cond_7
    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendForm;->CIRCLE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V

    .line 452
    :cond_8
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->animateX(I)V

    .line 453
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->mChartView:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateChart(I)V
    .locals 0

    .line 375
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->meStatisticsType:I

    .line 376
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->setupChart()V

    return-void
.end method
