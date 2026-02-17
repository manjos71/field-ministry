.class Lcom/sleepbot/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepbot/datetimepicker/time/RadialSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidateUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;


# direct methods
.method private constructor <init>(Lcom/sleepbot/datetimepicker/time/RadialSelectorView;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;->this$0:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepbot/datetimepicker/time/RadialSelectorView;Lcom/sleepbot/datetimepicker/time/RadialSelectorView$1;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1}, Lcom/sleepbot/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;-><init>(Lcom/sleepbot/datetimepicker/time/RadialSelectorView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 0

    .line 378
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/RadialSelectorView$InvalidateUpdateListener;->this$0:Lcom/sleepbot/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
