.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->setupCities()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 604
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const p2, 0x7f120151

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 607
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-direct {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 608
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const p5, 0x7f12012e

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 609
    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9$1;

    invoke-direct {p4, p0, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$9;I)V

    invoke-virtual {p2, p1, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 620
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 621
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
