.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;)V
    .locals 0

    .line 975
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 978
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 979
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$TerritoryArrayAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->createLongClickDialog(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void
.end method
