.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hlab/fabrevealmenu/listeners/OnFABMenuSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/view/View;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    return-void

    .line 206
    :pswitch_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    invoke-interface {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;->openRuralDialog()V

    return-void

    .line 209
    :pswitch_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    invoke-interface {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;->openPhoneTerritoryDialog()V

    return-void

    .line 200
    :pswitch_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    invoke-interface {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;->openStreetDialog()V

    return-void

    .line 203
    :pswitch_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment;)Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;

    invoke-interface {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryListFragment$OnListItemClickListener;->openBuildingDialog()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0903c0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
