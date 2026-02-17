.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->-$$Nest$fputaccumulatedValues(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;Z)V

    .line 98
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartFragment;->setupChart()V

    return-void
.end method
