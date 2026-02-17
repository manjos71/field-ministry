.class Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->updateNumberOfStudies(Lio/realm/Realm;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bCountOnlyVisitedStudies:Z

.field final synthetic val$cal:Ljava/util/Calendar;

.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$iNumStudiesPreviousMonthFinal:I

.field final synthetic val$iNumStudiesThisMonthFinal:I

.field final synthetic val$realm:Lio/realm/Realm;


# direct methods
.method constructor <init>(Lio/realm/Realm;Ljava/util/Date;IZLjava/util/Calendar;I)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$realm:Lio/realm/Realm;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$date:Ljava/util/Date;

    iput p3, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$iNumStudiesThisMonthFinal:I

    iput-boolean p4, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$bCountOnlyVisitedStudies:Z

    iput-object p5, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$cal:Ljava/util/Calendar;

    iput p6, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$iNumStudiesPreviousMonthFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$realm:Lio/realm/Realm;

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$date:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$iNumStudiesThisMonthFinal:I

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setStudyPersons(I)V

    .line 265
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$bCountOnlyVisitedStudies:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$cal:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 267
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$cal:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 268
    iget-object v0, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$cal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$realm:Lio/realm/Realm;

    invoke-virtual {v1, v2, v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonth(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions$1;->val$iNumStudiesPreviousMonthFinal:I

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setStudyPersons(I)V

    :cond_0
    return-void
.end method
