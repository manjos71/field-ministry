.class Lcom/lostpixels/fieldservice/activities/base/TimerActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->setTimer()V
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

    .line 494
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lnet/simonvt/widget/TimePicker;II)V
    .locals 6

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 498
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->-$$Nest$sfgetmPauseTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 499
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->-$$Nest$sfputmPauseTime(J)V

    goto :goto_0

    .line 501
    :cond_0
    invoke-static {v4, v5}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->-$$Nest$sfputmPauseTime(J)V

    :goto_0
    int-to-long p1, p2

    const-wide/32 v2, 0x36ee80

    mul-long p1, p1, v2

    int-to-long v2, p3

    const-wide/32 v4, 0xea60

    mul-long v2, v2, v4

    add-long/2addr p1, v2

    sub-long/2addr v0, p1

    .line 502
    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->-$$Nest$sfputmStartTime(J)V

    .line 504
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    const-string p2, "MyPrefsSettings"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 505
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 506
    const-string p2, "PauseTimer"

    invoke-static {}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->-$$Nest$sfgetmPauseTime()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 507
    const-string p2, "ServiceTimer"

    invoke-static {}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->-$$Nest$sfgetmStartTime()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 508
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 509
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->-$$Nest$mupdateTimerText(Lcom/lostpixels/fieldservice/activities/base/TimerActivity;)V

    .line 510
    invoke-static {}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->-$$Nest$sfgetmbIsTimerRunning()Z

    move-result p1

    if-nez p1, :cond_1

    .line 511
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$4;->this$0:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->startPauseTimer()V

    :cond_1
    return-void
.end method
