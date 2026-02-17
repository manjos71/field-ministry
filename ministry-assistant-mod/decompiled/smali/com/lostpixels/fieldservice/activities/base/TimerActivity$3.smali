.class Lcom/lostpixels/fieldservice/activities/base/TimerActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/base/TimerActivity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->-$$Nest$mupdatePauseTimer(Lcom/lostpixels/fieldservice/activities/base/TimerActivity;)V

    .line 144
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$3;->this$0:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->-$$Nest$fgetmPauseHandler(Lcom/lostpixels/fieldservice/activities/base/TimerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x320

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
