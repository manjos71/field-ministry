.class Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;


# direct methods
.method constructor <init>(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$1;->this$0:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$1;->this$0:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->access$100(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;)Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$1;->this$0:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->access$000(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 614
    iget-object v0, p0, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout$1;->this$0:Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;->access$100(Lcom/sleepbot/datetimepicker/time/RadialPickerLayout;)Lcom/sleepbot/datetimepicker/time/AmPmCirclesView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
