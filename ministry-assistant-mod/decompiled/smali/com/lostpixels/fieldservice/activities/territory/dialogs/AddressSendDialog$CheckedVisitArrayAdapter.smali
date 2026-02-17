.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckedVisitArrayAdapter"
.end annotation


# instance fields
.field final context:Landroid/app/Activity;

.field final items:Ljava/util/ArrayList;

.field final miStreetIx:I

.field final mlayoutID:I

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;Landroid/app/Activity;ILjava/util/ArrayList;I)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    .line 498
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 499
    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->items:Ljava/util/ArrayList;

    .line 500
    iput p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->mlayoutID:I

    .line 501
    iput p5, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->miStreetIx:I

    .line 503
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->context:Landroid/app/Activity;

    return-void
.end method

.method private getSelectItem(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;
    .locals 9

    .line 655
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->-$$Nest$fgetmlstItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    .line 656
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getStreetIndex()I

    move-result v5

    iget v6, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->miStreetIx:I

    if-ne v5, v6, :cond_0

    .line 657
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :cond_1
    if-ge v6, v5, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    .line 658
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->getVisit()Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    return-object v7

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I
    .locals 4

    .line 669
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->access$1200(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->access$1100(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 672
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f080384

    return p1

    :cond_1
    const p1, 0x7f08013c

    return p1

    :cond_2
    const p1, 0x7f0801e2

    return p1

    :cond_3
    const p1, 0x7f080172

    return p1

    :cond_4
    :goto_0
    const p1, 0x7f0801fd

    return p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 508
    iget p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->miStreetIx:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 515
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->context:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 516
    iget v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->mlayoutID:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 517
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;

    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;-><init>()V

    const v2, 0x7f09052f

    .line 518
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strStreet:Landroid/widget/TextView;

    const v2, 0x7f09066c

    .line 519
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strInfo:Landroid/widget/TextView;

    const v2, 0x7f09066a

    .line 520
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strAge:Landroid/widget/TextView;

    const v2, 0x7f09027e

    .line 521
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    const v2, 0x7f090298

    .line 522
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->imgVisitType:Landroid/widget/ImageView;

    const v2, 0x7f09016d

    .line 523
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->chkBox:Landroid/widget/CheckBox;

    const v2, 0x7f09066b

    .line 524
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strDate:Landroid/widget/TextView;

    const v2, 0x7f090425

    .line 525
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strNumVisits:Landroid/widget/TextView;

    .line 526
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;

    .line 530
    :goto_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-eqz p1, :cond_1a

    .line 534
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ", "

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 536
    :cond_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v2

    if-nez v2, :cond_3

    .line 537
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 538
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 539
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 540
    :cond_3
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 541
    :cond_4
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 543
    :cond_5
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v2

    .line 545
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 547
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 550
    :cond_7
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 535
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v2

    .line 552
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 553
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 554
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_9
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 556
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getCellNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_d

    .line 559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    .line 561
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_b
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    const v8, 0x7f120001

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v0, :cond_c

    .line 567
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 573
    :cond_d
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/16 v2, 0x10

    const/16 v3, 0x8

    const/4 v4, 0x3

    if-eq v0, v4, :cond_f

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/4 v5, 0x7

    if-eq v0, v5, :cond_f

    .line 576
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eq v0, v3, :cond_f

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-eq v0, v2, :cond_f

    .line 577
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/16 v5, 0xa

    if-eq v0, v5, :cond_f

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/16 v5, 0xc

    if-eq v0, v5, :cond_f

    .line 578
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    const/16 v5, 0x11

    if-eq v0, v5, :cond_f

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3

    .line 582
    :cond_e
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 583
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_4

    .line 579
    :cond_f
    :goto_3
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strStreet:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    or-int/2addr v5, v2

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 580
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    or-int/2addr v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 587
    :goto_4
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-eqz v0, :cond_10

    .line 588
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {p3}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->access$800(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;

    move-result-object p3

    invoke-static {p3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->access$700(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v7

    invoke-virtual {p3, v0, v7, v8}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object p3

    .line 590
    :cond_10
    const-string v0, "\n"

    const-string v2, ""

    if-eqz p3, :cond_12

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v5

    const/4 v7, 0x4

    if-eq v5, v7, :cond_11

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v5

    const/4 v7, 0x6

    if-ne v5, v7, :cond_12

    :cond_11
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    .line 591
    iget-object v5, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strDate:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-static {v4}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 593
    :cond_12
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result v5

    const/4 v7, 0x5

    if-eq v5, v7, :cond_13

    .line 594
    iget-object v5, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strDate:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-static {v4}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 597
    :cond_13
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    :goto_5
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v4

    cmp-long v0, v4, v9

    if-eqz v0, :cond_17

    if-eqz p3, :cond_17

    .line 600
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 601
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strNumVisits:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 604
    iget-object p3, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 605
    :cond_14
    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->hasVisitType()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 606
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strInfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->context:Landroid/app/Activity;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getInfo()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/internal/ministry/VisitInfo;->getVisitType()I

    move-result p3

    invoke-static {v2, p3}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->visitTypeToText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 608
    :cond_15
    iget-object p3, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 610
    :cond_16
    iget-object p3, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object p3, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strNumVisits:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    :goto_6
    iget-object p3, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 614
    iget-object p3, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strAge:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->access$1000(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;

    .line 615
    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->access$900(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    .line 614
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAge()I

    move-result v0

    .line 614
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object p3, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    invoke-virtual {p3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 617
    iget-object p3, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strAge:Landroid/widget/TextView;

    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 619
    :cond_17
    iget-object p3, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->imgHouseholder:Landroid/widget/ImageView;

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    iget-object p3, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strAge:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 621
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getComment()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_18

    .line 622
    iget-object p3, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 624
    :cond_18
    iget-object p3, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->strInfo:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    :goto_7
    iget-object p3, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->imgVisitType:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->getVisitType(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 628
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->getSelectItem(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    move-result-object p3

    .line 630
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->chkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz p3, :cond_19

    .line 632
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->chkBox:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->isChecked()Z

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 634
    :cond_19
    iget-object p3, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;->chkBox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;)V

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 644
    :cond_1a
    iget p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;->miStreetIx:I

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const v0, 0x7f090054

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 645
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const p3, 0x7f090060

    invoke-virtual {p2, p3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 647
    instance-of p1, p2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1b

    .line 648
    move-object p1, p2

    check-cast p1, Landroid/view/ViewGroup;

    const/high16 p3, 0x60000

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_1b
    return-object p2
.end method

.method protected getVisitType(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)I
    .locals 0

    .line 695
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getVisitType()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const p1, 0x7f080182

    return p1

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
    const p1, 0x7f0802d7

    return p1

    :pswitch_a
    const p1, 0x7f080164

    return p1

    :pswitch_b
    const p1, 0x7f080301

    return p1

    :pswitch_c
    const p1, 0x7f080315

    return p1

    :pswitch_d
    const p1, 0x7f0802ae

    return p1

    :pswitch_e
    const p1, 0x7f0800d1

    return p1

    :pswitch_f
    const p1, 0x7f08016d

    return p1

    :pswitch_10
    const p1, 0x7f0801e8

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
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
