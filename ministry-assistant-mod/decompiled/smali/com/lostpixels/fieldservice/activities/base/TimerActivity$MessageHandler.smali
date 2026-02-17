.class Lcom/lostpixels/fieldservice/activities/base/TimerActivity$MessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/base/TimerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 548
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 552
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 554
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 555
    sget-object p1, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->mMe:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    if-eqz p1, :cond_0

    .line 557
    :try_start_0
    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->-$$Nest$mupdatTimer(Lcom/lostpixels/fieldservice/activities/base/TimerActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 559
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
