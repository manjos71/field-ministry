.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SessionArrayAdapter"
.end annotation


# instance fields
.field final context:Landroid/app/Activity;

.field final items:Ljava/util/List;

.field final mDateFormatDay:Ljava/text/SimpleDateFormat;

.field final mDateFormatMonth:Ljava/text/SimpleDateFormat;

.field mbCustom1:Z

.field mbCustom2:Z

.field mbCustom3:Z

.field mbIsHhmm:Z

.field mbIsKilometers:Z

.field final mbIsMonth:Z

.field mbSimplifiedReport:Z

.field final mlayoutID:I

.field realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Landroid/app/Activity;ILjava/util/List;ZZZZZZZ)V
    .locals 2

    .line 389
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 371
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mDateFormatMonth:Ljava/text/SimpleDateFormat;

    .line 374
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "cccc dd MMMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mDateFormatDay:Ljava/text/SimpleDateFormat;

    .line 390
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->items:Ljava/util/List;

    .line 391
    iput p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mlayoutID:I

    .line 392
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->context:Landroid/app/Activity;

    .line 393
    iput-boolean p4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mbIsMonth:Z

    .line 394
    iput-boolean p5, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mbIsHhmm:Z

    .line 395
    iput-boolean p6, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mbIsKilometers:Z

    .line 396
    iput-boolean p7, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mbCustom1:Z

    .line 397
    iput-boolean p8, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mbCustom2:Z

    .line 398
    iput-boolean p9, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mbCustom3:Z

    .line 399
    iput-boolean p10, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mbSimplifiedReport:Z

    .line 400
    check-cast p1, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/base/BaseActivity;->getRealm()Lio/realm/Realm;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->realm:Lio/realm/Realm;

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 412
    iget-object v2, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 413
    iget v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mlayoutID:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 414
    new-instance v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionViewHolder;

    invoke-direct {v3}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionViewHolder;-><init>()V

    const v4, 0x7f0905f6

    .line 415
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionViewHolder;->txtDate:Landroid/widget/TextView;

    const v4, 0x7f090635

    .line 416
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionViewHolder;->txtSession:Landroid/widget/TextView;

    .line 417
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionViewHolder;

    move-object/from16 v2, p2

    .line 422
    :goto_0
    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->items:Ljava/util/List;

    move/from16 v5, p1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    if-eqz v7, :cond_3

    .line 424
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 425
    const-string v5, "ReportDensity"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    const/16 v21, 0x1

    goto :goto_1

    :cond_1
    const/16 v21, 0x0

    .line 427
    :goto_1
    iget-boolean v1, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mbIsMonth:Z

    if-eqz v1, :cond_2

    .line 428
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionViewHolder;->txtDate:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mDateFormatMonth:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 430
    :cond_2
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionViewHolder;->txtDate:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mDateFormatDay:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :goto_2
    iget-object v1, v3, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionViewHolder;->txtSession:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->realm:Lio/realm/Realm;

    iget-object v6, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->context:Landroid/app/Activity;

    iget-boolean v11, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mbIsHhmm:Z

    iget-boolean v14, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mbIsKilometers:Z

    iget-boolean v3, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mbCustom1:Z

    iget-boolean v4, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mbCustom2:Z

    iget-boolean v8, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mbCustom3:Z

    const/16 v19, 0x1

    iget-boolean v9, v0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportDailyFragment$SessionArrayAdapter;->mbSimplifiedReport:Z

    move/from16 v18, v8

    const/4 v8, 0x1

    move/from16 v20, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-static/range {v5 .. v21}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getReport(Lio/realm/Realm;Landroid/content/Context;Lcom/lostpixels/fieldservice/internal/report/ServiceSession;ZZZZZZZZZZZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-object v2
.end method
