.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 626
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$10;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    if-nez p3, :cond_0

    .line 629
    new-instance p1, Landroid/app/Dialog;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$10;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0c0091

    .line 631
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 632
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$10;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const p3, 0x7f120587

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f0902a4

    .line 634
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 635
    iget-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$10;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const p4, 0x7f12039b

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const p3, 0x7f0900f5

    .line 636
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 637
    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$10$1;

    invoke-direct {p4, p0, p2, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$10$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$10;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 655
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$10;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$msetCitySelection(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;I)V

    .line 657
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$10;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetcitiesAlertDialog(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
