.class Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$7;
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


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg$7;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/DeductTimeDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 188
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
