.class Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VisitArrayAdapter"
.end annotation


# instance fields
.field context:Landroid/app/Activity;

.field items:Ljava/util/ArrayList;

.field miStreetIx:I

.field mlayoutID:I

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;Landroid/app/Activity;ILjava/util/ArrayList;I)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    .line 401
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 402
    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->items:Ljava/util/ArrayList;

    .line 403
    iput p3, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->mlayoutID:I

    .line 404
    iput p5, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->miStreetIx:I

    .line 406
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->context:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->access$700(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->access$600(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    const v0, 0x7f0801fd

    if-eqz p1, :cond_4

    .line 506
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f080384

    return p1

    :cond_1
    const p1, 0x7f08013c

    return p1

    :cond_2
    return v0

    :cond_3
    const p1, 0x7f080172

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    if-nez p2, :cond_0

    .line 413
    new-instance p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;

    invoke-direct {p2}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;-><init>()V

    .line 414
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->context:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    .line 415
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->mlayoutID:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f09052f

    .line 417
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    const v0, 0x7f0902d9

    .line 418
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strDate:Landroid/widget/TextView;

    const v0, 0x7f09066c

    .line 419
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    const v0, 0x7f09066a

    .line 420
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strAge:Landroid/widget/TextView;

    const v0, 0x7f09066f

    .line 421
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strVisitTimes:Landroid/widget/TextView;

    const v0, 0x7f09027e

    .line 422
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    const v0, 0x7f090298

    .line 423
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->imgVisitType:Landroid/widget/ImageView;

    const v0, 0x7f090283

    .line 424
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->imgMapPin:Landroid/widget/ImageView;

    .line 425
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;

    move-object v10, p3

    move-object p3, p2

    move-object p2, v10

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz p1, :cond_e

    .line 431
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->imgMapPin:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 434
    :cond_1
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->imgMapPin:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    :goto_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v3

    .line 436
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 437
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 438
    :cond_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v0

    if-nez v0, :cond_5

    .line 441
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 442
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 444
    :cond_4
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 445
    :cond_5
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 447
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 448
    :cond_6
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 449
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 451
    :cond_7
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    :goto_2
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/4 v5, 0x5

    const/4 v6, 0x3

    const-string v7, ""

    if-eq v0, v5, :cond_8

    .line 454
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strDate:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 456
    :cond_8
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strDate:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :goto_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/16 v5, 0x10

    if-eq v0, v6, :cond_a

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/16 v6, 0xa

    if-eq v0, v6, :cond_a

    .line 458
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/4 v6, 0x7

    if-eq v0, v6, :cond_a

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eq v0, v5, :cond_a

    .line 459
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eq v0, v1, :cond_a

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/16 v6, 0x11

    if-eq v0, v6, :cond_a

    .line 460
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/16 v6, 0xc

    if-ne v0, v6, :cond_9

    goto :goto_4

    .line 464
    :cond_9
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    and-int/lit8 v5, v5, -0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 465
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    and-int/lit8 v5, v5, -0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_5

    .line 461
    :cond_a
    :goto_4
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v6

    or-int/2addr v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 462
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    :goto_5
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_d

    .line 469
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->access$500(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->access$400(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    .line 470
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 471
    iget-object v1, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 473
    :cond_b
    iget-object v1, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    :goto_6
    iget-object v1, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 476
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 477
    iget-object v1, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strVisitTimes:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v1, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strVisitTimes:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 480
    :cond_c
    iget-object v1, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strAge:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAge()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strAge:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 484
    :cond_d
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strAge:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strVisitTimes:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 487
    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :goto_7
    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;->imgVisitType:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->getVisitType(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 492
    iget p2, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->miStreetIx:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const v0, 0x7f090054

    invoke-virtual {p3, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 493
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p2

    .line 494
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;->miStreetIx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 495
    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const p2, 0x7f090002

    .line 496
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p2, 0x7f090060

    .line 497
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_e
    return-object p3
.end method

.method protected getVisitType(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I
    .locals 1

    .line 528
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result p1

    const v0, 0x7f080182

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const p1, 0x7f0802db

    return p1

    :pswitch_2
    const p1, 0x7f0801e1

    return p1

    :pswitch_3
    const p1, 0x7f080298

    return p1

    :pswitch_4
    const p1, 0x7f08036f

    return p1

    :pswitch_5
    const p1, 0x7f0801ee

    return p1

    :pswitch_6
    const p1, 0x7f0802fb

    return p1

    :pswitch_7
    const p1, 0x7f0802b3

    return p1

    :pswitch_8
    const p1, 0x7f08016b

    return p1

    :pswitch_9
    return v0

    :pswitch_a
    const p1, 0x7f0802d7

    return p1

    :pswitch_b
    const p1, 0x7f080164

    return p1

    :pswitch_c
    const p1, 0x7f080301

    return p1

    :pswitch_d
    const p1, 0x7f080315

    return p1

    :pswitch_e
    const p1, 0x7f0802ae

    return p1

    :pswitch_f
    const p1, 0x7f0800d1

    return p1

    :pswitch_10
    const p1, 0x7f08016d

    return p1

    :pswitch_11
    const p1, 0x7f0801e8

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
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
    .end packed-switch
.end method
