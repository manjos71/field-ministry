.class public Lnet/simonvt/app/TimePickerDialogComment;
.super Landroidx/appcompat/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lnet/simonvt/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/app/TimePickerDialogComment$OnTimeSetListenerComment;
    }
.end annotation


# instance fields
.field private final mCallback:Lnet/simonvt/app/TimePickerDialogComment$OnTimeSetListenerComment;

.field private final mComment:Landroid/widget/EditText;

.field final mInitialHourOfDay:I

.field final mInitialMinute:I

.field final mIs24HourView:Z

.field private final mTimePicker:Lnet/simonvt/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILnet/simonvt/app/TimePickerDialogComment$OnTimeSetListenerComment;IILjava/lang/String;IIIZ)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 121
    iput-object p3, p0, Lnet/simonvt/app/TimePickerDialogComment;->mCallback:Lnet/simonvt/app/TimePickerDialogComment$OnTimeSetListenerComment;

    .line 122
    iput p4, p0, Lnet/simonvt/app/TimePickerDialogComment;->mInitialHourOfDay:I

    .line 123
    iput p5, p0, Lnet/simonvt/app/TimePickerDialogComment;->mInitialMinute:I

    .line 124
    iput-boolean p10, p0, Lnet/simonvt/app/TimePickerDialogComment;->mIs24HourView:Z

    const/4 p1, 0x0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setIcon(I)V

    .line 127
    invoke-virtual {p0, p7}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, -0x1

    .line 130
    invoke-virtual {p1, p8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 131
    invoke-virtual {p1, p9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x2

    const/4 p7, 0x0

    invoke-virtual {p0, p3, p2, p7}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 134
    const-string p2, "layout_inflater"

    .line 135
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 136
    sget p2, Lnet/simonvt/timepicker/R$layout;->time_picker_dialog_simonvt_comment:I

    invoke-virtual {p1, p2, p7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 137
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 138
    sget p2, Lnet/simonvt/timepicker/R$id;->timePicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lnet/simonvt/widget/TimePicker;

    iput-object p2, p0, Lnet/simonvt/app/TimePickerDialogComment;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    .line 139
    sget p3, Lnet/simonvt/timepicker/R$id;->comment:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lnet/simonvt/app/TimePickerDialogComment;->mComment:Landroid/widget/EditText;

    .line 142
    invoke-static {p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/simonvt/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 143
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/simonvt/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 144
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/simonvt/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 145
    invoke-virtual {p2, p0}, Lnet/simonvt/widget/TimePicker;->setOnTimeChangedListener(Lnet/simonvt/widget/TimePicker$OnTimeChangedListener;)V

    .line 146
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/simonvt/app/TimePickerDialogComment$OnTimeSetListenerComment;IILjava/lang/String;IIIZ)V
    .locals 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 92
    invoke-direct/range {v0 .. v10}, Lnet/simonvt/app/TimePickerDialogComment;-><init>(Landroid/content/Context;ILnet/simonvt/app/TimePickerDialogComment$OnTimeSetListenerComment;IILjava/lang/String;IIIZ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 150
    iget-object p1, p0, Lnet/simonvt/app/TimePickerDialogComment;->mCallback:Lnet/simonvt/app/TimePickerDialogComment$OnTimeSetListenerComment;

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lnet/simonvt/app/TimePickerDialogComment;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 152
    iget-object p1, p0, Lnet/simonvt/app/TimePickerDialogComment;->mCallback:Lnet/simonvt/app/TimePickerDialogComment$OnTimeSetListenerComment;

    iget-object p2, p0, Lnet/simonvt/app/TimePickerDialogComment;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    invoke-virtual {p2}, Lnet/simonvt/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/app/TimePickerDialogComment;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    .line 153
    invoke-virtual {v1}, Lnet/simonvt/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/app/TimePickerDialogComment;->mComment:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-interface {p1, p2, v0, v1, v2}, Lnet/simonvt/app/TimePickerDialogComment$OnTimeSetListenerComment;->onTimeSetComment(Lnet/simonvt/widget/TimePicker;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 182
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 183
    const-string v0, "hour"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 184
    const-string v1, "minute"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 185
    const-string v2, "comment"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    iget-object v3, p0, Lnet/simonvt/app/TimePickerDialogComment;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    const-string v4, "is24hour"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v3, p1}, Lnet/simonvt/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 187
    iget-object p1, p0, Lnet/simonvt/app/TimePickerDialogComment;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/simonvt/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 188
    iget-object p1, p0, Lnet/simonvt/app/TimePickerDialogComment;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/simonvt/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 189
    iget-object p1, p0, Lnet/simonvt/app/TimePickerDialogComment;->mComment:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 172
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lnet/simonvt/app/TimePickerDialogComment;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    invoke-virtual {v1}, Lnet/simonvt/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 174
    iget-object v1, p0, Lnet/simonvt/app/TimePickerDialogComment;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    invoke-virtual {v1}, Lnet/simonvt/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "minute"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 175
    iget-object v1, p0, Lnet/simonvt/app/TimePickerDialogComment;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    invoke-virtual {v1}, Lnet/simonvt/widget/TimePicker;->is24HourView()Z

    move-result v1

    const-string v2, "is24hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    iget-object v1, p0, Lnet/simonvt/app/TimePickerDialogComment;->mComment:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "comment"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onTimeChanged(Lnet/simonvt/widget/TimePicker;II)V
    .locals 0

    return-void
.end method
