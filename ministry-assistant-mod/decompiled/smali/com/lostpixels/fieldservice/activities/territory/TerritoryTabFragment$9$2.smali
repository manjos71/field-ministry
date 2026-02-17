.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 745
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;

    iget-object p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getTerritoryCard(Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 747
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 749
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    .line 750
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/StorageUtils;->getMinistryAssistantDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 749
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 751
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 754
    const-string p2, "Delete territory"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;

    iget-object v0, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object v1, v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v1, p2, v0}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->removeTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Territory;Landroid/content/Context;)V

    .line 757
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->updateList()V

    .line 758
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetLatestTerritory()V

    .line 759
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetMinistryStatistics()V

    .line 760
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetOldVisits()V

    .line 761
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetPinnedVisits()V

    .line 762
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetScheduledVisits()V

    .line 763
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetVisitsAboutNow()V

    .line 765
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$2;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateNumberOfStudies(Lio/realm/Realm;Landroid/content/Context;)V

    return-void
.end method
