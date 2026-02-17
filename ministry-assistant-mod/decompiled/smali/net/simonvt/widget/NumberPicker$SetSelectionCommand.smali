.class Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;
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
    name = "SetSelectionCommand"
.end annotation


# instance fields
.field private mSelectionEnd:I

.field private mSelectionStart:I

.field final synthetic this$0:Lnet/simonvt/widget/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/widget/NumberPicker;)V
    .locals 0

    .line 2040
    iput-object p1, p0, Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0

    .line 2040
    iput p1, p0, Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    return p1
.end method

.method static synthetic access$1102(Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;I)I
    .locals 0

    .line 2040
    iput p1, p0, Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2046
    iget-object v0, p0, Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;->this$0:Lnet/simonvt/widget/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/widget/NumberPicker;->access$000(Lnet/simonvt/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    iget v2, p0, Lnet/simonvt/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    return-void
.end method
