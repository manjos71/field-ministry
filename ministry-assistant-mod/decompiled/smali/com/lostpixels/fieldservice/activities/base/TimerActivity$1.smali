.class Lcom/lostpixels/fieldservice/activities/base/TimerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 110
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/base/TimerActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/base/TimerActivity;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/activities/base/TimerActivity;->setTimer()V

    return-void
.end method
