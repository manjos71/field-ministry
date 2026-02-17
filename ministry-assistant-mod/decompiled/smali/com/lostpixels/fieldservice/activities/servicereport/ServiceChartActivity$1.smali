.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    long-to-int p1, p4

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 196
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    iget p4, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 198
    :goto_0
    iput p3, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    goto/16 :goto_9

    .line 147
    :pswitch_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    iget p4, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    const/16 p5, 0x9

    if-eq p5, p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 149
    :goto_1
    iput p5, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    goto/16 :goto_9

    .line 188
    :pswitch_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    iget p4, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    const/16 p5, 0x8

    if-eq p5, p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 190
    :goto_2
    iput p5, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    goto :goto_9

    .line 183
    :pswitch_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    iget p4, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    const/4 p5, 0x7

    if-eq p5, p4, :cond_3

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    .line 185
    :goto_3
    iput p5, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    goto :goto_9

    .line 178
    :pswitch_3
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    iget p4, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    const/4 p5, 0x6

    if-eq p5, p4, :cond_4

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    .line 180
    :goto_4
    iput p5, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    goto :goto_9

    .line 173
    :pswitch_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    iget p4, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    const/4 p5, 0x5

    if-eq p5, p4, :cond_5

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    .line 175
    :goto_5
    iput p5, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    goto :goto_9

    .line 167
    :pswitch_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    iget p4, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    const/4 p5, 0x4

    if-eq p5, p4, :cond_6

    goto :goto_6

    :cond_6
    const/4 p2, 0x0

    .line 169
    :goto_6
    iput p5, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    goto :goto_9

    .line 162
    :pswitch_6
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    iget p4, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    const/4 p5, 0x3

    if-eq p5, p4, :cond_7

    goto :goto_7

    :cond_7
    const/4 p2, 0x0

    .line 164
    :goto_7
    iput p5, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    goto :goto_9

    .line 157
    :pswitch_7
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    iget p4, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    const/4 p5, 0x2

    if-eq p5, p4, :cond_8

    goto :goto_8

    :cond_8
    const/4 p2, 0x0

    .line 159
    :goto_8
    iput p5, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    goto :goto_9

    .line 152
    :pswitch_8
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    iget p4, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    if-eq p2, p4, :cond_9

    const/4 p3, 0x1

    .line 154
    :cond_9
    iput p2, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    move p2, p3

    :goto_9
    if-eqz p2, :cond_a

    .line 203
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->mChartFragment:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;

    iget p2, p2, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;->meStatisticsType:I

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->updateChart(I)V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
