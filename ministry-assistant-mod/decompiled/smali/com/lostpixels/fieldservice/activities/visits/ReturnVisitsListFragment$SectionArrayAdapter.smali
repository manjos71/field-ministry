.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$GroupHolder;
    }
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field dayNameFormat:Ljava/text/SimpleDateFormat;

.field final items:Ljava/util/List;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    .line 258
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    .line 259
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 254
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "EE"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->dayNameFormat:Ljava/text/SimpleDateFormat;

    .line 260
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->context:Landroid/content/Context;

    .line 261
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method formatMonthPlacement(Ljava/util/Calendar;Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 508
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x7e2

    if-ge v0, v1, :cond_0

    .line 509
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p2, 0x2

    .line 511
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 533
    const-string p1, ""

    return-object p1

    .line 529
    :pswitch_0
    const-string p1, "g 3"

    return-object p1

    .line 526
    :pswitch_1
    const-string p1, "wp 3"

    return-object p1

    .line 523
    :pswitch_2
    const-string p1, "g 2"

    return-object p1

    .line 520
    :pswitch_3
    const-string p1, "wp 2"

    return-object p1

    .line 517
    :pswitch_4
    const-string p1, "g 1"

    return-object p1

    .line 514
    :pswitch_5
    const-string p1, "wp 1"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;->items:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;->items:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    iget-wide p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->key:J

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez p4, :cond_9

    .line 330
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0c010d

    .line 331
    invoke-virtual {v6, v7, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 332
    new-instance v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;

    invoke-direct {v7}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;-><init>()V

    const v8, 0x7f09052f

    .line 333
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strStreet:Landroid/widget/TextView;

    const v8, 0x7f090441

    .line 334
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strPerson:Landroid/widget/TextView;

    const v8, 0x7f0902d9

    .line 335
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strDate:Landroid/widget/TextView;

    const v8, 0x7f09066c

    .line 336
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strInfo:Landroid/widget/TextView;

    const v8, 0x7f09066a

    .line 337
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strAge:Landroid/widget/TextView;

    const v8, 0x7f0903d1

    .line 338
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth1:Landroid/widget/TextView;

    const v8, 0x7f0903d2

    .line 339
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth2:Landroid/widget/TextView;

    const v8, 0x7f0903d3

    .line 340
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth3:Landroid/widget/TextView;

    const v8, 0x7f0903d4

    .line 341
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth4:Landroid/widget/TextView;

    const v8, 0x7f0903d5

    .line 342
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth5:Landroid/widget/TextView;

    const v8, 0x7f0903d6

    .line 343
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth6:Landroid/widget/TextView;

    const v8, 0x7f090273

    .line 344
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    const v8, 0x7f090283

    .line 345
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgMapPin:Landroid/widget/ImageView;

    const v8, 0x7f090275

    .line 346
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgBookmark:Landroid/widget/ImageView;

    const v8, 0x7f090285

    .line 347
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgMoreBtn:Landroid/widget/ImageView;

    const v8, 0x7f090621

    .line 348
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strNumVisits:Landroid/widget/TextView;

    .line 349
    iget-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgMoreBtn:Landroid/widget/ImageView;

    new-instance v9, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$1;

    invoke-direct {v9, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgBookmark:Landroid/widget/ImageView;

    new-instance v9, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$2;

    invoke-direct {v9, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "MMM"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 372
    invoke-virtual {v9, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 373
    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v11, 0x7e2

    if-lt v10, v11, :cond_0

    .line 374
    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v12

    rem-int/2addr v12, v5

    sub-int/2addr v10, v12

    invoke-virtual {v9, v5, v10}, Ljava/util/Calendar;->set(II)V

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-ge v10, v1, :cond_3

    .line 378
    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-gt v12, v11, :cond_2

    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v12, v11, :cond_1

    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-lt v12, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v12, -0x1

    .line 381
    invoke-virtual {v9, v5, v12}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v12, -0x2

    .line 379
    invoke-virtual {v9, v5, v12}, Ljava/util/Calendar;->add(II)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 383
    :cond_3
    iget-object v10, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth1:Landroid/widget/TextView;

    invoke-virtual {p0, v9, v8}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->formatMonthPlacement(Ljava/util/Calendar;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ge v10, v11, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x2

    :goto_3
    invoke-virtual {v9, v5, v10}, Ljava/util/Calendar;->add(II)V

    .line 385
    iget-object v10, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth2:Landroid/widget/TextView;

    invoke-virtual {p0, v9, v8}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->formatMonthPlacement(Ljava/util/Calendar;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ge v10, v11, :cond_5

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x2

    :goto_4
    invoke-virtual {v9, v5, v10}, Ljava/util/Calendar;->add(II)V

    .line 387
    iget-object v10, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth3:Landroid/widget/TextView;

    invoke-virtual {p0, v9, v8}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->formatMonthPlacement(Ljava/util/Calendar;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ge v10, v11, :cond_6

    const/4 v10, 0x1

    goto :goto_5

    :cond_6
    const/4 v10, 0x2

    :goto_5
    invoke-virtual {v9, v5, v10}, Ljava/util/Calendar;->add(II)V

    .line 389
    iget-object v10, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth4:Landroid/widget/TextView;

    invoke-virtual {p0, v9, v8}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->formatMonthPlacement(Ljava/util/Calendar;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ge v10, v11, :cond_7

    const/4 v10, 0x1

    goto :goto_6

    :cond_7
    const/4 v10, 0x2

    :goto_6
    invoke-virtual {v9, v5, v10}, Ljava/util/Calendar;->add(II)V

    .line 391
    iget-object v10, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth5:Landroid/widget/TextView;

    invoke-virtual {p0, v9, v8}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->formatMonthPlacement(Ljava/util/Calendar;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ge v10, v11, :cond_8

    const/4 v10, 0x1

    goto :goto_7

    :cond_8
    const/4 v10, 0x2

    :goto_7
    invoke-virtual {v9, v5, v10}, Ljava/util/Calendar;->add(II)V

    .line 393
    iget-object v10, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth6:Landroid/widget/TextView;

    invoke-virtual {p0, v9, v8}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->formatMonthPlacement(Ljava/util/Calendar;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0905a9

    .line 396
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lostpixels/fieldservice/ui/DelegatingRelativeLayout;

    iput-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->llParent:Lcom/lostpixels/fieldservice/ui/DelegatingRelativeLayout;

    .line 397
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgBookmark:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Lcom/lostpixels/fieldservice/ui/DelegatingRelativeLayout;->setEnlargedView(Landroid/view/View;)V

    const v8, 0x7f0902ec

    .line 399
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 400
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgMoreBtn:Landroid/widget/ImageView;

    new-instance v10, Landroid/graphics/RectF;

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f4ccccd    # 0.8f

    invoke-direct {v10, v13, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v8, v9, v10}, Lcom/lostpixels/fieldservice/helpfunctions/FractionalTouchDelegate;->setupDelegate(Landroid/view/View;Landroid/view/View;Landroid/graphics/RectF;)V

    .line 403
    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_8

    .line 405
    :cond_9
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;

    move-object/from16 v6, p4

    .line 408
    :goto_8
    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17

    .line 409
    invoke-virtual/range {p0 .. p2}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;

    .line 410
    iget-object v8, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 412
    invoke-static {v8}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v9

    const/16 v10, 0x8

    if-eqz v9, :cond_16

    .line 414
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/16 v11, 0x96

    if-ge v9, v11, :cond_a

    .line 415
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strNumVisits:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v11, v12, v3

    const-string v11, "%d"

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 417
    :cond_a
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strNumVisits:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v11, v12, v3

    const-string v11, "%d+"

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :goto_9
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 420
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgMapPin:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    .line 422
    :cond_b
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgMapPin:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    :goto_a
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 425
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c

    .line 426
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getApartment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 429
    :cond_c
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 430
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_d

    .line 431
    iget-object v12, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strPerson:Landroid/widget/TextView;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v12, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strPerson:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_d
    if-eqz v9, :cond_e

    .line 433
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_e

    .line 434
    iget-object v12, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strPerson:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v12, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strPerson:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 437
    :cond_e
    iget-object v12, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strPerson:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    if-eqz v11, :cond_f

    .line 439
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_f

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_f

    .line 440
    iget-object v10, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 443
    :cond_f
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 446
    :goto_c
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    .line 447
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v9

    goto :goto_d

    :cond_10
    move-object v9, v2

    :goto_d
    if-eqz v9, :cond_11

    .line 449
    iget-object v10, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strDate:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->dayNameFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v11, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    new-array v12, v5, [Ljava/lang/Object;

    aput-object v11, v12, v3

    aput-object v9, v12, v4

    const-string v9, "%s %s"

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 451
    :cond_11
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strDate:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    const v11, 0x7f120456

    invoke-virtual {v10, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    :goto_e
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v9

    const-string v10, ""

    if-eqz v9, :cond_14

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_14

    .line 454
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->toString()Ljava/lang/String;

    move-result-object v9

    .line 455
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_12

    .line 456
    iget-object v10, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 457
    :cond_12
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->hasVisitType()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 458
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strInfo:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result v11

    invoke-static {v10, v11}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->visitTypeToText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 460
    :cond_13
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 462
    :cond_14
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    :goto_f
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    invoke-static {v8}, Lcom/lostpixels/fieldservice/helpfunctions/UIHelpers;->getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Person;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 465
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 466
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgBookmark:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10

    .line 468
    :cond_15
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgBookmark:Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    :goto_10
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgMoreBtn:Landroid/widget/ImageView;

    iget-wide v10, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->key:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 471
    iget-object v9, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgBookmark:Landroid/widget/ImageView;

    iget-wide v10, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonItem;->key:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v9, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 474
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getMagazineRouteMap()[Z

    move-result-object p1

    .line 475
    iget-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth1:Landroid/widget/TextView;

    aget-boolean v9, p1, v3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 476
    iget-object v8, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth1:Landroid/widget/TextView;

    aget-boolean v3, p1, v3

    invoke-virtual {v8, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 477
    iget-object v3, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth2:Landroid/widget/TextView;

    aget-boolean v8, p1, v4

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 478
    iget-object v3, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth2:Landroid/widget/TextView;

    aget-boolean v4, p1, v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 479
    iget-object v3, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth3:Landroid/widget/TextView;

    aget-boolean v4, p1, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 480
    iget-object v3, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth3:Landroid/widget/TextView;

    aget-boolean v4, p1, v5

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 481
    iget-object v3, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth4:Landroid/widget/TextView;

    const/4 v4, 0x3

    aget-boolean v5, p1, v4

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 482
    iget-object v3, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth4:Landroid/widget/TextView;

    aget-boolean v4, p1, v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 483
    iget-object v3, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth5:Landroid/widget/TextView;

    aget-boolean v4, p1, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 484
    iget-object v3, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth5:Landroid/widget/TextView;

    aget-boolean v1, p1, v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 485
    iget-object v1, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth6:Landroid/widget/TextView;

    aget-boolean v3, p1, v0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 486
    iget-object v1, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->strMonth6:Landroid/widget/TextView;

    aget-boolean p1, p1, v0

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-object v6

    .line 488
    :cond_16
    iget-object p1, v7, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$PersonViewHolder;->imgBookmark:Landroid/widget/ImageView;

    invoke-virtual {p1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_17
    return-object v6
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p3, :cond_0

    .line 308
    new-instance p3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$GroupHolder;

    invoke-direct {p3, p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$GroupHolder;-><init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;)V

    .line 309
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0c008d

    .line 310
    invoke-virtual {p4, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    const v0, 0x7f09023b

    .line 311
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$GroupHolder;->name:Landroid/widget/TextView;

    const v0, 0x7f090214

    .line 312
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$GroupHolder;->expanded:Landroid/widget/ImageView;

    .line 313
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$GroupHolder;

    move-object v3, p4

    move-object p4, p3

    move-object p3, v3

    .line 318
    :goto_0
    iget-object v0, p3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$GroupHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$GroupItem;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    const p1, 0x7f080235

    goto :goto_1

    :cond_1
    const p1, 0x7f0802e2

    .line 320
    :goto_1
    iget-object p2, p3, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter$GroupHolder;->expanded:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p4
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 495
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 496
    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->getGroupCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment$SectionArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;->-$$Nest$fgetmlwSectionList(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsListFragment;)Lcom/lostpixels/fieldservice/ui/expandablelistview/FloatingGroupExpandableListView;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    :cond_0
    return-void
.end method
