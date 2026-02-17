.class Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 98
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->-$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$OnSetBestTimeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->-$$Nest$fgetmListener(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$OnSetBestTimeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->-$$Nest$fgetchMorning(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->-$$Nest$fgetchDay(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->-$$Nest$fgetchEvening(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->-$$Nest$fgetchWeekend(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->combineVisitTime(ZZZZ)I

    move-result v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->-$$Nest$fgetchMonday(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->-$$Nest$fgetchTuesday(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->-$$Nest$fgetchWednesday(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->-$$Nest$fgetchThursday(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->-$$Nest$fgetchFriday(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->-$$Nest$fgetchSaturday(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v7

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;->-$$Nest$fgetchSunday(Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v8

    invoke-static/range {v2 .. v8}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->combineVisitDays(ZZZZZZZ)I

    move-result v1

    or-int/2addr v0, v1

    .line 99
    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$OnSetBestTimeListener;->onSetBestTime(I)V

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit$2;->this$0:Lcom/lostpixels/fieldservice/activities/visits/BestTimeForVisit;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
