.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->setupResults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)V
    .locals 0

    .line 979
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$17;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const/4 p1, 0x1

    const p2, 0x7f090493

    if-ne p3, p1, :cond_0

    .line 983
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$17;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmchRV(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 984
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$17;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetmchStudy(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 985
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$17;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetrdHouseHolder(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/RadioGroup;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    return-void

    :cond_0
    const/4 p1, 0x4

    if-ne p3, p1, :cond_1

    .line 987
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$17;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->-$$Nest$fgetrdHouseHolder(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;)Landroid/widget/RadioGroup;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
