.class public Lnet/simonvt/app/TimePickerDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lnet/simonvt/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private final mCallback:Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;

.field final mInitialHourOfDay:I

.field final mInitialMinute:I

.field final mIs24HourView:Z

.field private final mTimePicker:Lnet/simonvt/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILnet/simonvt/app/TimePickerDialog$OnTimeSetListener;IIIIIZ)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 118
    iput-object p3, p0, Lnet/simonvt/app/TimePickerDialog;->mCallback:Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;

    .line 119
    iput p4, p0, Lnet/simonvt/app/TimePickerDialog;->mInitialHourOfDay:I

    .line 120
    iput p5, p0, Lnet/simonvt/app/TimePickerDialog;->mInitialMinute:I

    .line 121
    iput-boolean p9, p0, Lnet/simonvt/app/TimePickerDialog;->mIs24HourView:Z

    const/4 p1, 0x0

    .line 123
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setIcon(I)V

    .line 124
    invoke-virtual {p0, p6}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    .line 126
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, -0x1

    .line 127
    invoke-virtual {p1, p7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 128
    invoke-virtual {p1, p8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, -0x2

    const/4 p6, 0x0

    invoke-virtual {p0, p3, p2, p6}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 131
    const-string p2, "layout_inflater"

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 133
    sget p2, Lnet/simonvt/timepicker/R$layout;->time_picker_dialog_simonvt:I

    invoke-virtual {p1, p2, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 135
    sget p2, Lnet/simonvt/timepicker/R$id;->timePicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/simonvt/widget/TimePicker;

    iput-object p1, p0, Lnet/simonvt/app/TimePickerDialog;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    .line 138
    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/simonvt/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 139
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/simonvt/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 140
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/simonvt/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 141
    invoke-virtual {p1, p0}, Lnet/simonvt/widget/TimePicker;->setOnTimeChangedListener(Lnet/simonvt/widget/TimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;IIIII)V
    .locals 10

    const/4 v2, 0x0

    .line 76
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lnet/simonvt/app/TimePickerDialog;-><init>(Landroid/content/Context;ILnet/simonvt/app/TimePickerDialog$OnTimeSetListener;IIIIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;IIIIIZ)V
    .locals 10

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 89
    invoke-direct/range {v0 .. v9}, Lnet/simonvt/app/TimePickerDialog;-><init>(Landroid/content/Context;ILnet/simonvt/app/TimePickerDialog$OnTimeSetListener;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public getTimePicker()Lnet/simonvt/widget/TimePicker;
    .locals 1

    .line 158
    iget-object v0, p0, Lnet/simonvt/app/TimePickerDialog;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 145
    iget-object p1, p0, Lnet/simonvt/app/TimePickerDialog;->mCallback:Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lnet/simonvt/app/TimePickerDialog;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 147
    iget-object p1, p0, Lnet/simonvt/app/TimePickerDialog;->mCallback:Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;

    iget-object p2, p0, Lnet/simonvt/app/TimePickerDialog;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    invoke-virtual {p2}, Lnet/simonvt/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lnet/simonvt/app/TimePickerDialog;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    .line 148
    invoke-virtual {v1}, Lnet/simonvt/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 147
    invoke-interface {p1, p2, v0, v1}, Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lnet/simonvt/widget/TimePicker;II)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 175
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 176
    const-string v0, "hour"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    const-string v1, "minute"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 178
    iget-object v2, p0, Lnet/simonvt/app/TimePickerDialog;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/simonvt/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 179
    iget-object p1, p0, Lnet/simonvt/app/TimePickerDialog;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/simonvt/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 180
    iget-object p1, p0, Lnet/simonvt/app/TimePickerDialog;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/simonvt/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 166
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lnet/simonvt/app/TimePickerDialog;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    invoke-virtual {v1}, Lnet/simonvt/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 168
    iget-object v1, p0, Lnet/simonvt/app/TimePickerDialog;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    invoke-virtual {v1}, Lnet/simonvt/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "minute"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 169
    iget-object v1, p0, Lnet/simonvt/app/TimePickerDialog;->mTimePicker:Lnet/simonvt/widget/TimePicker;

    invoke-virtual {v1}, Lnet/simonvt/widget/TimePicker;->is24HourView()Z

    move-result v1

    const-string v2, "is24hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onTimeChanged(Lnet/simonvt/widget/TimePicker;II)V
    .locals 0

    return-void
.end method
