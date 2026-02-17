.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->setupSuburbs()V
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

    .line 539
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    if-nez p3, :cond_0

    .line 543
    new-instance p1, Landroid/app/Dialog;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0c0091

    .line 544
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 545
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    const p3, 0x7f120565

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f0902a4

    .line 547
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 548
    iget-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-virtual {p4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const p3, 0x7f0900f5

    .line 549
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 550
    new-instance p4, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$8$1;

    invoke-direct {p4, p0, p2, p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$8$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$8;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 570
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1, p3}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$msetSuburbSelection(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;I)V

    .line 572
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$8;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetalertDialog(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
