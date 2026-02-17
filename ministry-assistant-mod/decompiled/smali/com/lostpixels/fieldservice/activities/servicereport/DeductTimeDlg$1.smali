.class Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;)I
    .locals 0

    .line 46
    iget-object p2, p2, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;->date:Ljava/util/Date;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;->date:Ljava/util/Date;

    invoke-virtual {p2, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;

    check-cast p2, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$1;->compare(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$SchoolInfo;)I

    move-result p1

    return p1
.end method
