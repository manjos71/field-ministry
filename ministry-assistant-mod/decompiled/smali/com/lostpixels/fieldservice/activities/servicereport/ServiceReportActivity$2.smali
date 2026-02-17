.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 238
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    const/4 v0, 0x0

    iput v0, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    iput v0, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    goto :goto_0

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    iput v1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->meReportType:I

    .line 244
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity$2;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;->-$$Nest$mupdateTitle(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportActivity;)V

    return-void
.end method
