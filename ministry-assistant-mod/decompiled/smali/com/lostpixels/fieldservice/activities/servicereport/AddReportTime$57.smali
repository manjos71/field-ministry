.class Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

.field final synthetic val$bCustom1IsTime:Z

.field final synthetic val$bCustom2IsTime:Z

.field final synthetic val$bCustom3IsTime:Z

.field final synthetic val$reportManager:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;ZZZLcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    iput-boolean p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->val$bCustom1IsTime:Z

    iput-boolean p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->val$bCustom2IsTime:Z

    iput-boolean p4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->val$bCustom3IsTime:Z

    iput-object p5, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->val$reportManager:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 899
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtHours(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v3}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->stringToTime(Ljava/lang/String;Z)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 900
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetcheckDoneMinistry(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmbIsGoalDialog(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDoneMinistry(Z)V

    .line 901
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtRbcHours(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->stringToTime(Ljava/lang/String;Z)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setRbcHours(Lcom/lostpixels/fieldservice/internal/report/Time;)V

    .line 902
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->val$bCustom1IsTime:Z

    if-eqz p1, :cond_2

    .line 903
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtCustom1(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->stringToTime(Ljava/lang/String;Z)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setCustom1(I)V

    goto :goto_2

    .line 905
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtCustom1(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mgetIntFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setCustom1(I)V

    .line 907
    :goto_2
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->val$bCustom2IsTime:Z

    if-eqz p1, :cond_3

    .line 908
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtCustom2(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v4}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->stringToTime(Ljava/lang/String;Z)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setCustom2(I)V

    goto :goto_3

    .line 910
    :cond_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtCustom2(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mgetIntFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setCustom2(I)V

    .line 912
    :goto_3
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->val$bCustom3IsTime:Z

    if-eqz p1, :cond_4

    .line 913
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtCustom3(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->stringToTime(Ljava/lang/String;Z)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setCustom3(I)V

    goto :goto_4

    .line 915
    :cond_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtCustom3(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mgetIntFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setCustom3(I)V

    .line 917
    :goto_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetreportDensity(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 918
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtPlacements(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mgetIntFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setTracts(I)V

    goto/16 :goto_5

    .line 919
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetreportDensity(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 920
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtTracts(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mgetIntFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setTracts(I)V

    .line 921
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtMags(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mgetIntFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    .line 922
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtBrochures(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mgetIntFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setBrochures(I)V

    .line 923
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtBooks(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mgetIntFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setBooks(I)V

    .line 924
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtDVDs(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mgetIntFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setDvds(I)V

    .line 926
    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtVideoShowings(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mgetIntFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setVideoShowings(I)V

    .line 928
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtReturnVisits(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mgetIntFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setRetVisits(I)V

    .line 929
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtStudies(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mgetIntFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setAddedStudies(I)V

    .line 930
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtMileage(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$mgetFloatFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmbIsKilometers(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMileage(FZ)V

    .line 931
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmedtComment(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setComment(Ljava/lang/String;)V

    .line 933
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetTimeBehind()V

    .line 934
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetMonthReport()V

    .line 936
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmbLoadSave(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z

    move-result p1

    const/4 v0, -0x1

    const-string v1, "Session"

    if-eqz p1, :cond_7

    .line 937
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->waitForIO()V

    .line 938
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->val$reportManager:Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    iget-object v3, v2, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    .line 939
    invoke-virtual {p1, v2}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->addServiceSession(Lcom/lostpixels/fieldservice/internal/report/ServiceSession;)V

    .line 940
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateReportWidget(Landroid/content/Context;)V

    .line 941
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 942
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 943
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 944
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 946
    :cond_7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 947
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->-$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 948
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 949
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
