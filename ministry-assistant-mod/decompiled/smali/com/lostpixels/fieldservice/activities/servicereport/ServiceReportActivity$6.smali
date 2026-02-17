.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->displayProfileList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

.field final synthetic val$alertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    long-to-int p1, p4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 733
    :pswitch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    const/16 p2, 0x9

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fputmiCurrentProfile(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;I)V

    .line 734
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->showTimeDialog()V

    goto :goto_0

    .line 729
    :pswitch_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fputmiCurrentProfile(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;I)V

    .line 730
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->showTimeDialog()V

    goto :goto_0

    .line 737
    :pswitch_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    const/4 p2, 0x7

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fputmiCurrentProfile(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;I)V

    .line 738
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->showTimeDialog()V

    goto :goto_0

    .line 705
    :pswitch_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fputmiCurrentProfile(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;I)V

    .line 706
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->showTimeDialog()V

    goto :goto_0

    .line 713
    :pswitch_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fputmiCurrentProfile(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;I)V

    .line 714
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->showTimeDialog()V

    goto :goto_0

    .line 725
    :pswitch_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fputmiCurrentProfile(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;I)V

    .line 726
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->showTimeDialog()V

    goto :goto_0

    .line 721
    :pswitch_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fputmiCurrentProfile(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;I)V

    .line 722
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->showTimeDialog()V

    goto :goto_0

    .line 717
    :pswitch_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fputmiCurrentProfile(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;I)V

    .line 718
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->showTimeDialog()V

    goto :goto_0

    .line 709
    :pswitch_8
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fputmiCurrentProfile(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;I)V

    .line 710
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->showTimeDialog()V

    goto :goto_0

    .line 701
    :pswitch_9
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$fputmiCurrentProfile(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;I)V

    .line 702
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->showTimeDialog()V

    .line 742
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$6;->val$alertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
