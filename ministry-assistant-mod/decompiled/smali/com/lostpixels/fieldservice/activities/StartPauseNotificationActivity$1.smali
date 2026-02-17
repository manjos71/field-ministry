.class Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;->transferMinutes(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 320
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 321
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity$1;->this$0:Lcom/lostpixels/fieldservice/activities/StartPauseNotificationActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
