.class Lcom/sleepbot/datetimepicker/time/TimePickerDialog$KeyboardListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepbot/datetimepicker/time/TimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;


# direct methods
.method private constructor <init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;)V
    .locals 0

    .line 963
    iput-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$KeyboardListener;->this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;Lcom/sleepbot/datetimepicker/time/TimePickerDialog$1;)V
    .locals 0

    .line 963
    invoke-direct {p0, p1}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$KeyboardListener;-><init>(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 966
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 967
    iget-object p1, p0, Lcom/sleepbot/datetimepicker/time/TimePickerDialog$KeyboardListener;->this$0:Lcom/sleepbot/datetimepicker/time/TimePickerDialog;

    invoke-static {p1, p2}, Lcom/sleepbot/datetimepicker/time/TimePickerDialog;->access$500(Lcom/sleepbot/datetimepicker/time/TimePickerDialog;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
