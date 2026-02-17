.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$3;
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

    .line 800
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$3;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 803
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$3;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 805
    const-string v1, "MA Export"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ": "

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 807
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 810
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getStreets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/Street;

    .line 812
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 813
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    :cond_1
    invoke-virtual {v3}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 816
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v2, 0x14

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-nez p2, :cond_3

    const/4 p1, 0x4

    .line 822
    new-array p1, p1, [Z

    fill-array-data p1, :array_0

    .line 823
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$3;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object v1, p2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$3;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;

    iget-object v2, v2, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {v1, p2, v0, v2, p1}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendTerritoryAsText(Lio/realm/Realm;Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;[Z)V

    return-void

    .line 827
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$3;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;

    iget-object p2, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment;->realm:Lio/realm/Realm;

    .line 828
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9$3;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTabFragment$9;->val$territory:Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    invoke-static {p2, p1, v0, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ShareUtils;->sendTerritoryAsData(Lio/realm/Realm;Landroid/content/Context;Ljava/lang/String;Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method
