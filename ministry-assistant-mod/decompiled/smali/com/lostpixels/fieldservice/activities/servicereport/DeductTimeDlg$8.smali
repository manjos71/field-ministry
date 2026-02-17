.class Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->removeSchool(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

.field final synthetic val$iIndex:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;I)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    iput p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;->val$iIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 178
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->marrSchoolInfo:Ljava/util/ArrayList;

    iget p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;->val$iIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;->date:Ljava/util/Date;

    .line 179
    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    invoke-static {p2}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->access$300(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)Lio/realm/Realm;

    move-result-object p2

    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p2

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->access$200(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)Lio/realm/Realm;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->marrSchoolInfo:Ljava/util/ArrayList;

    iget v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;->val$iIndex:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;

    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;->sName:Ljava/lang/String;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->marrSchoolInfo:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;->val$iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;

    iget v0, v0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;->iHours:I

    invoke-virtual {p1, p2, v0}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->removeSchoolItem(Ljava/lang/String;I)V

    .line 180
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->marrSchoolInfo:Ljava/util/ArrayList;

    iget p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;->val$iIndex:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$8;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->-$$Nest$fgetmlstAdapter(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolArrayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
