.class public Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$VisitViewHolder;
    }
.end annotation


# static fields
.field public static filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet; = null

.field public static isDeleteTerritory:Z = false

.field public static mFilterDate:Ljava/util/Calendar;

.field public static mSendType:I

.field public static mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field public static meFilterOptions:I


# instance fields
.field private mlstItems:Ljava/util/ArrayList;

.field private mlstSendInfo:[Z

.field private mlstStreets:Landroid/widget/ListView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmlstItems(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmlstSendInfo(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)[Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstSendInfo:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmlstStreets(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Landroid/widget/ListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstStreets:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateTerritory(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->createTerritory()Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mselectAll(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->selectAll()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectNone(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->selectNone()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$700(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$800(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$900(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)Lio/realm/Realm;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method private createStreetList()V
    .locals 21

    move-object/from16 v1, p0

    .line 349
    new-instance v6, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    const v0, 0x7f0c0098

    invoke-direct {v6, v1, v0}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;I)V

    .line 350
    sget-object v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstItems:Ljava/util/ArrayList;

    const/4 v9, 0x1

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 358
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 359
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 360
    sget-object v2, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v10}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->shouldDisplayStreet(Lcom/lostpixels/fieldservice/internal/ministry/Street;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getShowAddress()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    if-nez v11, :cond_3

    .line 367
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getShowAddress()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_2
    move v12, v0

    .line 368
    const-string v0, "^\\d*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 370
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    invoke-direct {v0, v5}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;-><init>(I)V

    .line 372
    new-instance v14, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;

    invoke-direct {v14}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;-><init>()V

    .line 374
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v4, v16

    .line 376
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 377
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 378
    sget-object v3, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->filterStreet:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$FilterStreet;->shouldDisplayAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    if-nez v11, :cond_8

    .line 386
    :try_start_0
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 387
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 388
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v12, :cond_5

    .line 389
    rem-int/lit8 v17, v3, 0x2

    if-eqz v17, :cond_5

    goto :goto_4

    :catch_0
    nop

    goto :goto_6

    :cond_5
    if-nez v12, :cond_6

    .line 391
    rem-int/lit8 v3, v3, 0x2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v9, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v3, 0x0

    :goto_5
    move/from16 v17, v3

    goto :goto_7

    :cond_8
    :goto_6
    const/16 v17, 0x1

    .line 402
    :goto_7
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v3

    .line 404
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v18

    if-nez v18, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v9, :cond_a

    :cond_9
    move-object v9, v0

    goto/16 :goto_b

    :cond_a
    const/4 v8, 0x0

    .line 418
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-nez v4, :cond_b

    .line 420
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 421
    :cond_b
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    sget v8, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->meFilterOptions:I

    sget-object v9, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mFilterDate:Ljava/util/Calendar;

    invoke-static {v3, v2, v8, v9}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->shouldAddVisit(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Visit;ILjava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 422
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    sget-boolean v3, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->isDeleteTerritory:Z

    if-eqz v3, :cond_e

    .line 424
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v8

    const-wide/16 v19, 0x0

    cmp-long v3, v8, v19

    if-eqz v3, :cond_e

    .line 425
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    iget-object v8, v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    move-object v9, v0

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v0

    invoke-virtual {v3, v8, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 426
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isInterested()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 427
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v3, 0x1

    goto :goto_9

    :cond_e
    move-object v9, v0

    :cond_f
    move/from16 v3, v17

    .line 432
    :goto_9
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    invoke-direct {v1, v2, v3}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    move-object v9, v0

    :goto_a
    move-object/from16 v1, p0

    move-object/from16 v17, v7

    move-object v0, v9

    goto :goto_d

    :goto_b
    if-eqz v4, :cond_11

    .line 407
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 408
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;

    move-object v1, v3

    const v3, 0x7f0c0126

    move-object v8, v2

    move-object/from16 v2, p0

    move/from16 v19, v17

    move-object/from16 v17, v7

    move/from16 v7, v19

    move-object/from16 v19, v8

    move-object v8, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;Landroid/app/Activity;ILjava/util/ArrayList;I)V

    invoke-virtual {v14, v0}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    .line 410
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    invoke-direct {v0, v5}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;-><init>(I)V

    move-object/from16 v4, v16

    goto :goto_c

    :cond_11
    move/from16 v1, v17

    move-object/from16 v17, v7

    move v7, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move-object v8, v3

    move-object v0, v9

    .line 414
    :goto_c
    invoke-virtual/range {v19 .. v19}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v8, v2, v5, v7}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->getVisitAdapter(Ljava/util/List;Ljava/lang/String;IZ)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    :goto_d
    move-object/from16 v7, v17

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_12
    move-object v9, v0

    move-object/from16 v17, v7

    if-eqz v4, :cond_13

    .line 438
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 439
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;

    const v3, 0x7f0c0126

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;Landroid/app/Activity;ILjava/util/ArrayList;I)V

    .line 440
    invoke-virtual {v14, v0}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    .line 443
    :cond_13
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_14

    .line 445
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v14}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    .line 446
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v5, v5, 0x1

    move v0, v12

    move-object/from16 v7, v17

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 452
    :cond_15
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstStreets:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private createTerritory()Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 12

    .line 322
    sget-object v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->cloneEmpty()Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    .line 325
    sget-object v6, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getStreetIndex()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->cloneEmpty()Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v6

    .line 327
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_1
    :goto_1
    if-ge v9, v7, :cond_5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    .line 328
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v8, :cond_2

    .line 329
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->getVisit()Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isEqualID(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Z

    move-result v11

    if-nez v11, :cond_4

    :cond_2
    if-eqz v8, :cond_3

    .line 330
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 331
    invoke-virtual {v6, v8}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 332
    :cond_3
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->getVisit()Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getParent()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->cloneEmpty()Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object v8

    .line 334
    :cond_4
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->getVisit()Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->addVisit(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V

    goto :goto_1

    :cond_5
    if-eqz v8, :cond_6

    .line 337
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 338
    invoke-virtual {v6, v8}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->addAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 340
    :cond_6
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 341
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v6, v7}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->addStreet(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Street;I)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    goto/16 :goto_0

    .line 343
    :cond_7
    sget-object v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getTerritoryBorder()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setTerritoryBorder(Ljava/util/List;)V

    return-object v0
.end method

.method private getVisitAdapter(Ljava/util/List;Ljava/lang/String;IZ)Landroid/widget/BaseAdapter;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    .line 275
    new-instance v7, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    const v0, 0x7f0c003d

    invoke-direct {v7, v1, v0}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;I)V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    new-instance v8, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    move/from16 v5, p3

    invoke-direct {v8, v5}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;-><init>(I)V

    if-eqz v6, :cond_1

    .line 279
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, " - "

    :goto_0
    move-object v9, v2

    goto :goto_2

    :cond_1
    :goto_1
    const-string v2, ""

    goto :goto_0

    .line 281
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    move/from16 v12, p4

    move-object v4, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v13, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 282
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 283
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0, v11}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;

    const v3, 0x7f0c0126

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;Landroid/app/Activity;ILjava/util/ArrayList;I)V

    invoke-virtual {v7, v15, v0}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    const/4 v2, 0x1

    .line 289
    :cond_2
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v0

    .line 290
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v3

    .line 293
    :cond_3
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    sget v5, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->meFilterOptions:I

    sget-object v15, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mFilterDate:Ljava/util/Calendar;

    invoke-static {v3, v14, v5, v15}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->shouldAddVisit(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Visit;ILjava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 294
    sget-boolean v3, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->isDeleteTerritory:Z

    if-eqz v3, :cond_6

    .line 295
    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v3, v15, v17

    if-eqz v3, :cond_6

    .line 296
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v3

    iget-object v5, v1, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    move/from16 p4, v12

    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getHouseHolder()J

    move-result-wide v11

    invoke-virtual {v3, v5, v11, v12}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPerson(Lio/realm/Realm;J)Lcom/lostpixels/fieldservice/internal/ministry/Person;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 297
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isInterested()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 298
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isReturnVisit()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isBibleStudy()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isFavorite()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isMagazineRoute()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    move/from16 p4, v12

    :cond_7
    move/from16 v12, p4

    .line 304
    :goto_5
    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    invoke-direct {v5, v14, v12}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/Visit;Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    move/from16 p4, v12

    :goto_6
    move/from16 v5, p3

    const/4 v11, 0x0

    goto/16 :goto_3

    .line 309
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;

    const v3, 0x7f0c0126

    move-object/from16 v2, p0

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$CheckedVisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;Landroid/app/Activity;ILjava/util/ArrayList;I)V

    invoke-virtual {v7, v6, v0}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    const/4 v2, 0x1

    :cond_a
    if-eqz v2, :cond_b

    .line 316
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v7
.end method

.method private selectAll()V
    .locals 9

    .line 457
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    .line 458
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    const/4 v8, 0x1

    .line 459
    invoke-virtual {v7, v8}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->setChecked(Z)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstStreets:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private selectNone()V
    .locals 8

    .line 466
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;

    .line 467
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectGroup;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;

    .line 468
    invoke-virtual {v7, v2}, Lcom/lostpixels/fieldservice/activities/territory/utils/SelectItem;->setChecked(Z)V

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstStreets:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 96
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 98
    sget-object p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->setLanguage(Landroid/app/Activity;)V

    .line 102
    sget-boolean p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->isDeleteTerritory:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0c0116

    .line 103
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0c0125

    .line 105
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    :goto_0
    const p1, 0x7f090365

    .line 106
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstStreets:Landroid/widget/ListView;

    const p1, 0x7f0900fa

    .line 107
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0900fb

    .line 108
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0900fc

    .line 109
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0900e6

    .line 110
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0900f5

    .line 111
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f0900fd

    .line 112
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 113
    sget v5, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mSendType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    if-eqz v4, :cond_2

    const/16 v5, 0x8

    .line 114
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    const/4 v5, 0x4

    .line 116
    new-array v5, v5, [Z

    iput-object v5, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstSendInfo:[Z

    const/4 v5, 0x0

    .line 117
    :goto_1
    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstSendInfo:[Z

    array-length v8, v7

    sub-int/2addr v8, v6

    if-ge v5, v8, :cond_3

    .line 119
    aput-boolean v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 122
    :cond_3
    new-instance v5, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$1;

    invoke-direct {v5, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    new-instance p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$2;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v4, :cond_4

    .line 139
    new-instance p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)V

    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    if-eqz v1, :cond_5

    .line 165
    new-instance p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$4;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$4;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v2, :cond_6

    .line 198
    new-instance p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$5;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$5;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz v3, :cond_7

    .line 207
    new-instance p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$6;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_7
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->createStreetList()V

    .line 243
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mlstStreets:Landroid/widget/ListView;

    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$7;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog$7;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    sget-boolean p1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->isDeleteTerritory:Z

    if-eqz p1, :cond_8

    const p1, 0x7f12033b

    .line 269
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 88
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 89
    sget-object v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/AddressSendDialog;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 82
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfImported(Landroid/app/Activity;)Z

    .line 83
    invoke-super {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->onResume()V

    return-void
.end method
