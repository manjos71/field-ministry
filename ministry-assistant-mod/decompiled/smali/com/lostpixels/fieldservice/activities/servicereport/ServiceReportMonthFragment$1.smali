.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;->showMonthDetailList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment$1;->this$0:Lcom/lostpixels/fieldservice/activities/servicereport/ServiceReportMonthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 426
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
