.class Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/MapOuterTerritoryListFragment;->moMapFragment:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListMapFragment;->showSatelite(Z)V

    return-void
.end method
