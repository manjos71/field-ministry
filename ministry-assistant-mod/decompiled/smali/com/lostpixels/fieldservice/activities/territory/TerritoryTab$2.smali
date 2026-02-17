.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 150
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    const v1, 0x7f0901a0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 151
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 153
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 154
    check-cast v0, Landroid/view/ViewGroup;

    .line 155
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 156
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    const v1, 0x7f12057b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTab;

    const v1, 0x7f12057c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "NewTerritory"

    const v7, 0x7f0801d0

    invoke-static/range {v2 .. v7}, Lcom/lostpixels/fieldservice/ui/OverlayHelper;->showTapTargetPrompt(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
