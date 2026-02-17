.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 292
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 293
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->-$$Nest$fgetmCurrentYear(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    .line 294
    invoke-virtual {p1, v0, v0}, Ljava/util/Calendar;->add(II)V

    .line 295
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->-$$Nest$fputmCurrentYear(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;Ljava/util/Date;)V

    .line 296
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->-$$Nest$mswitchFragment(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->updateYearReport()V

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->-$$Nest$fgetlistener(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;)Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->-$$Nest$fgetmCurrentYear(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;)Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$OnUpdateYearListener;->onYearUpdated(Ljava/util/Date;)V

    .line 299
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;->-$$Nest$fputmLastTapTime(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportYearFragment;J)V

    return-void
.end method
