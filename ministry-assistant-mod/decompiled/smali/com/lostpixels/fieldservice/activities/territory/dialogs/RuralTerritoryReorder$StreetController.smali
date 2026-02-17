.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetController;
.super Lcom/mobeta/android/dslv/DragSortController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreetController"
.end annotation


# instance fields
.field private final mAdapter:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;

.field final mDslv:Lcom/mobeta/android/dslv/DragSortListView;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;


# direct methods
.method public constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;Lcom/mobeta/android/dslv/DragSortListView;Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;)V
    .locals 1

    .line 337
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetController;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    const p1, 0x7f09055f

    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, p2, p1, v0, v0}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

    .line 339
    invoke-virtual {p0, v0}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 340
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 341
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetController;->mAdapter:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;

    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetController;->mAdapter:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetController;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v0, p1, v1, v2}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 0

    return-void
.end method
