.class Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;->onSchoolAdded(Ljava/lang/String;Ljava/util/Date;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$hours:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;Ljava/util/Date;I)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;->val$date:Ljava/util/Date;

    iput p3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;->val$hours:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 149
    new-instance p1, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6$1;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6$1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$6;)V

    invoke-static {p1}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    return-void
.end method
