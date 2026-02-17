.class Lnet/simonvt/widget/TimePicker$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/simonvt/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/simonvt/widget/TimePicker;


# direct methods
.method constructor <init>(Lnet/simonvt/widget/TimePicker;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lnet/simonvt/widget/TimePicker$3;->this$0:Lnet/simonvt/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lnet/simonvt/widget/NumberPicker;II)V
    .locals 0

    .line 183
    iget-object p1, p0, Lnet/simonvt/widget/TimePicker$3;->this$0:Lnet/simonvt/widget/TimePicker;

    invoke-static {p1}, Lnet/simonvt/widget/TimePicker;->access$000(Lnet/simonvt/widget/TimePicker;)V

    .line 201
    iget-object p1, p0, Lnet/simonvt/widget/TimePicker$3;->this$0:Lnet/simonvt/widget/TimePicker;

    invoke-static {p1}, Lnet/simonvt/widget/TimePicker;->access$300(Lnet/simonvt/widget/TimePicker;)V

    return-void
.end method
