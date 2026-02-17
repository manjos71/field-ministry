.class Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SchoolInfo"
.end annotation


# instance fields
.field final date:Ljava/util/Date;

.field final iHours:I

.field final sName:Ljava/lang/String;

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;Ljava/lang/String;Ljava/util/Date;I)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;->sName:Ljava/lang/String;

    .line 210
    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;->date:Ljava/util/Date;

    .line 211
    iput p4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;->iHours:I

    return-void
.end method
