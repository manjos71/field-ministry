.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$FloorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloorAdapter"
.end annotation


# instance fields
.field items:Ljava/util/List;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 909
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 910
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$FloorAdapter;->items:Ljava/util/List;

    .line 911
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$FloorAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 930
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 931
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$FloorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$FloorAdapter;->getItemId(I)J

    move-result-wide v0

    long-to-int p1, v0

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getItemId(I)J
    .locals 2

    .line 916
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$FloorAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 922
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 923
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$FloorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/activities/territory/dialogs/BuildingDialog$FloorAdapter;->getItemId(I)J

    move-result-wide v0

    long-to-int p1, v0

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getFloorString(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
