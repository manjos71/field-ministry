.class Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lnet/simonvt/widget/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/widget/NumberPicker;)V
    .locals 0

    .line 2075
    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$900(Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    .line 2075
    invoke-direct {p0, p1}, Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V

    return-void
.end method

.method private setIncrement(Z)V
    .locals 0

    .line 2079
    iput-boolean p1, p0, Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2083
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    iget-boolean v1, p0, Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lnet/simonvt/widget/NumberPicker;->access$100(Lnet/simonvt/widget/NumberPicker;Z)V

    .line 2084
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/widget/NumberPicker;->access$2500(Lnet/simonvt/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
