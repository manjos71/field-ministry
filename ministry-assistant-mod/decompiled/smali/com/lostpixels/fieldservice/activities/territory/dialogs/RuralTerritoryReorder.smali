.class public Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;
.super Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetController;,
        Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;,
        Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;
    }
.end annotation


# instance fields
.field private mAddress:Lcom/lostpixels/fieldservice/internal/ministry/Address;

.field private mStreet:Lcom/lostpixels/fieldservice/internal/ministry/Street;

.field final mlistAddresses:Ljava/util/List;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAddress(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;)Lcom/lostpixels/fieldservice/internal/ministry/Address;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mAddress:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStreet(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;)Lcom/lostpixels/fieldservice/internal/ministry/Street;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mStreet:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mlistAddresses:Ljava/util/List;

    return-void
.end method

.method private setupBuildingReorder(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mAddress:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getVisits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, -0x1869f

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 185
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 186
    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getFloor()I

    move-result v1

    .line 187
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mlistAddresses:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mlistAddresses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mlistAddresses:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;Landroid/content/Context;Ljava/util/List;)V

    .line 192
    invoke-virtual {p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 195
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;

    invoke-direct {v1, p0, p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionController;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;Lcom/mobeta/android/dslv/DragSortListView;Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$SectionAdapter;)V

    const v2, 0x7f0901d5

    .line 196
    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->setDragHandleId(I)V

    .line 197
    invoke-virtual {p1, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 198
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    invoke-virtual {p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private setupStreetReorder(Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 3

    .line 161
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mStreet:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;Lcom/lostpixels/fieldservice/internal/ministry/Street;)V

    .line 162
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$3;

    invoke-direct {v1, p0, v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$3;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;)V

    invoke-virtual {p1, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 174
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetController;

    invoke-direct {v1, p0, p1, v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetController;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;Lcom/mobeta/android/dslv/DragSortListView;Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;)V

    const v2, 0x7f0901d5

    .line 175
    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortController;->setDragHandleId(I)V

    .line 176
    invoke-virtual {p1, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 177
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    invoke-virtual {p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/base/MinistryAssistantDialogActivity;->mbRestart:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0c0115

    .line 49
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    const-string v1, "Address"

    const-string v2, "Street"

    if-eqz p1, :cond_2

    .line 54
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mStreet:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mStreet:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mAddress:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mAddress:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    .line 59
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mStreet:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    if-nez p1, :cond_3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 60
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mStreet:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 61
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mAddress:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    if-nez p1, :cond_4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/ParcelHelper;->readAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Lcom/lostpixels/fieldservice/internal/ministry/Address;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mAddress:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 65
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mStreet:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    if-eqz p1, :cond_6

    .line 66
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->isRuralArea()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f12019e

    .line 67
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const p1, 0x7f120369

    .line 69
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const p1, 0x7f120368

    .line 71
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    const p1, 0x7f090360

    .line 72
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView;

    const v0, 0x7f0900f5

    .line 73
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 74
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$1;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e6

    .line 110
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 111
    new-instance v1, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$2;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$2;-><init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mStreet:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    if-eqz v0, :cond_7

    .line 120
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->setupStreetReorder(Lcom/mobeta/android/dslv/DragSortListView;)V

    return-void

    .line 121
    :cond_7
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mAddress:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    if-eqz v0, :cond_8

    .line 122
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->setupBuildingReorder(Lcom/mobeta/android/dslv/DragSortListView;)V

    return-void

    :cond_8
    const/4 p1, 0x0

    .line 124
    invoke-static {p1, p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mStreet:Lcom/lostpixels/fieldservice/internal/ministry/Street;

    if-eqz v0, :cond_0

    .line 131
    const-string v1, "Street"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mAddress:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    if-eqz v0, :cond_5

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mlistAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 138
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 139
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 144
    :goto_0
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mlistAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 145
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 146
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 148
    :cond_3
    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    .line 149
    invoke-virtual {v3, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->setFloor(I)V

    .line 150
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mAddress:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->setVisits(Ljava/util/List;)V

    .line 155
    const-string v0, "Address"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->mAddress:Lcom/lostpixels/fieldservice/internal/ministry/Address;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 157
    :cond_5
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
