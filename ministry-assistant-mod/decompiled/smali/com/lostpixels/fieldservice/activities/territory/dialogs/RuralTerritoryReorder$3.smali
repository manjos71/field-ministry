.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->setupStreetReorder(Lcom/mobeta/android/dslv/DragSortListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

.field final synthetic val$adapter:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$3;->val$adapter:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 1

    if-eq p1, p2, :cond_0

    .line 166
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$3;->val$adapter:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Address;

    .line 167
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->-$$Nest$fgetmStreet(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->removeAddressShallow(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V

    .line 168
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$3;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;->-$$Nest$fgetmStreet(Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder;)Lcom/lostpixels/fieldservice/internal/ministry/Street;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->insertAddress(Lcom/lostpixels/fieldservice/internal/ministry/Address;I)V

    .line 169
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$3;->val$adapter:Lcom/lostpixels/fieldservice/activities/territory/dialogs/RuralTerritoryReorder$StreetAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
