.class Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/Realm$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService$1;->this$0:Lcom/lostpixels/fieldservice/MonthReportWidgetBase$UpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 0

    .line 604
    invoke-virtual {p1}, Lio/realm/Realm;->deleteAll()V

    return-void
.end method
