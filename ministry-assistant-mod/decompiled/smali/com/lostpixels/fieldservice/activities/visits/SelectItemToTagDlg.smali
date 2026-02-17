.class public Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;,
        Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$AddressViewHolder;
    }
.end annotation


# instance fields
.field private mPosition:Lcom/google/android/gms/maps/model/LatLng;

.field private mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

.field private mbAddAll:Z

.field private meShowType:I

.field private mlstItemsToTag:Landroid/widget/ListView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPosition(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmbAddAll(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mbAddAll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateList(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->updateList()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->meShowType:I

    return-void
.end method

.method static synthetic access$000(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$300(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method static synthetic access$700(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)Lio/realm/Realm;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    return-object p0
.end method

.method private getVisitAdapter(Ljava/util/List;Ljava/lang/String;I)Landroid/widget/BaseAdapter;
    .locals 10

    .line 120
    new-instance v0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    const v1, 0x7f0c003d

    invoke-direct {v0, p0, v1}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;I)V

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 123
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, " - "

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, ""

    .line 124
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    move-object v8, v1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 125
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 126
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;

    const v7, 0x7f0c0140

    move-object v6, p0

    move-object v5, p0

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;Landroid/app/Activity;ILjava/util/ArrayList;I)V

    invoke-virtual {v0, v3, v4}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_3

    :cond_2
    move-object v5, p0

    move v9, p3

    .line 130
    :goto_3
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result p3

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v3

    move v3, p3

    goto :goto_4

    :cond_3
    move-object v5, p0

    move v9, p3

    .line 134
    :goto_4
    iget-boolean p3, v5, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mbAddAll:Z

    if-nez p3, :cond_4

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p3

    if-nez p3, :cond_5

    .line 135
    :cond_4
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move p3, v9

    goto :goto_2

    :cond_6
    move-object v5, p0

    move v9, p3

    .line 139
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v3}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;

    const v7, 0x7f0c0140

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;Landroid/app/Activity;ILjava/util/ArrayList;I)V

    invoke-virtual {v0, p1, v4}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    :cond_7
    return-object v0
.end method

.method private sortBookmarkList(Ljava/util/ArrayList;)V
    .locals 2

    .line 312
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 313
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$4;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$4;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)V

    .line 340
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateList()V
    .locals 15

    .line 147
    iget v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->meShowType:I

    const v1, 0x7f0c0098

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_c

    .line 150
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    .line 151
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 154
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Lcom/lostpixels/fieldservice/utils/comparators/CaseInsensitiveComparator;

    invoke-direct {v5}, Lcom/lostpixels/fieldservice/utils/comparators/CaseInsensitiveComparator;-><init>()V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 155
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v5

    invoke-virtual {v5}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 156
    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 162
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 163
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 164
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object v8, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-virtual {v0, v8}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object v8

    invoke-virtual {v8}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 166
    iget-boolean v10, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mbAddAll:Z

    if-nez v10, :cond_3

    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v10

    if-nez v10, :cond_2

    .line 167
    :cond_3
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    .line 168
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 169
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 171
    :cond_4
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 174
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 175
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 178
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :cond_8
    if-ge v4, v0, :cond_b

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 190
    invoke-direct {p0, v3}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->sortBookmarkList(Ljava/util/ArrayList;)V

    .line 192
    new-instance v0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-direct {v0, p0, v1}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;I)V

    .line 194
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_a

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 196
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getSuburb()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;

    invoke-direct {v7, p0, v5}, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v6, v7}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_3

    :cond_9
    const v6, 0x7f120480

    .line 199
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;

    invoke-direct {v7, p0, v5}, Lcom/lostpixels/fieldservice/adapters/PersonSearchArrayAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v6, v7}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_3

    .line 203
    :cond_a
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mlstItemsToTag:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mlstItemsToTag:Landroid/widget/ListView;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$2;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_b
    move-object v4, p0

    goto/16 :goto_8

    :cond_c
    if-ne v0, v3, :cond_b

    .line 224
    new-instance v0, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;

    invoke-direct {v0, p0, v1}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;I)V

    .line 225
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object v1

    .line 226
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v8, 0x0

    .line 228
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 229
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 231
    new-instance v10, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;

    invoke-direct {v10}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;-><init>()V

    .line 233
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    move-object v7, v12

    .line 235
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 236
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 237
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v14

    .line 241
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->isBuilding()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_d

    goto :goto_6

    .line 252
    :cond_d
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    if-nez v7, :cond_e

    .line 254
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 255
    :cond_e
    iget-boolean v4, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mbAddAll:Z

    if-nez v4, :cond_f

    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    if-nez v4, :cond_10

    .line 256
    :cond_f
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object v4, p0

    goto :goto_5

    :cond_11
    :goto_6
    if-eqz v7, :cond_12

    .line 245
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 246
    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;

    const v6, 0x7f0c0140

    move-object v5, p0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;Landroid/app/Activity;ILjava/util/ArrayList;I)V

    invoke-virtual {v10, v3}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    move-object v7, v12

    goto :goto_7

    :cond_12
    move-object v4, p0

    .line 250
    :goto_7
    invoke-virtual {v13}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v14, v3, v8}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->getVisitAdapter(Ljava/util/List;Ljava/lang/String;I)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_5

    :cond_13
    move-object v4, p0

    if-eqz v7, :cond_14

    .line 262
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 263
    new-instance v3, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;

    const v6, 0x7f0c0140

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$VisitArrayAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;Landroid/app/Activity;ILjava/util/ArrayList;I)V

    invoke-virtual {v10, v3}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->addAdapter(Landroid/widget/BaseAdapter;)V

    .line 267
    :cond_14
    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/adapters/MixedListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_15

    .line 269
    invoke-virtual {v9}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v10}, Lcom/lostpixels/fieldservice/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_16
    move-object v4, p0

    .line 275
    iget-object v1, v4, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mlstItemsToTag:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    iget-object v0, v4, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mlstItemsToTag:Landroid/widget/ListView;

    new-instance v1, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$3;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$3;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_8
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 76
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    const-string v2, "Position"

    const-string v3, "Type"

    const-string v4, "Territory"

    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v0

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 82
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->meShowType:I

    .line 85
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    goto :goto_0

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez p1, :cond_3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 89
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 90
    :cond_3
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 92
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->meShowType:I

    .line 93
    :cond_4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 94
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    .line 97
    :cond_5
    :goto_0
    iget p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->meShowType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 99
    :cond_6
    iget p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->meShowType:I

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 100
    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    return-void

    :cond_7
    const p1, 0x7f0c0124

    .line 103
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 104
    iput-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mbAddAll:Z

    const p1, 0x7f090463

    .line 105
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    .line 106
    new-instance v0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$1;-><init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const p1, 0x7f090361

    .line 113
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mlstItemsToTag:Landroid/widget/ListView;

    .line 114
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->updateList()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 359
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 360
    const-string v0, "Territory"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    if-nez v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getTerritory(J)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object v0

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 362
    :cond_0
    const-string v0, "Type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->meShowType:I

    .line 365
    :cond_1
    const-string v0, "Position"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mTerritory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v0

    const-string v2, "Territory"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 349
    const-string v0, "Type"

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->meShowType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 350
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->mPosition:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 351
    const-string v1, "Position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 354
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
