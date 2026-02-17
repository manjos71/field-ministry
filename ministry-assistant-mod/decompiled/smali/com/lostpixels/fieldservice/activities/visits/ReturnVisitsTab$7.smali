.class Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 380
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;->isMapView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 381
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/visits/TagColorDialog;-><init>()V

    .line 382
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 383
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getColorBy()Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;

    move-result-object v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;->token(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EColorBy;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Color"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 385
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 387
    :cond_0
    new-instance p1, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;

    invoke-direct {p1}, Lcom/lostpixels/fieldservice/activities/visits/TagSortDialog;-><init>()V

    .line 388
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 389
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getSortBy()Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;

    move-result-object v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;->token(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$ESort;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sort"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getGroupBy()Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;

    move-result-object v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;->token(Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$EGroupBy;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Group"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$PersonFilteredArray;->isSortIncreasing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Dec"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab$7;->this$0:Lcom/lostpixels/fieldservice/activities/visits/ReturnVisitsTab;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "settags"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
