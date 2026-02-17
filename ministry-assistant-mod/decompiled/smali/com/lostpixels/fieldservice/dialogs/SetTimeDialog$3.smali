.class Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$3;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$3;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->-$$Nest$fgetdate(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 91
    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$3;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;->-$$Nest$fgetmDateSetListener(Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;)Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZZ)Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    move-result-object p1

    .line 92
    iget-object v1, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$3;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    const-string v2, "checkFirstDayOfWeek"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 94
    :goto_0
    invoke-virtual {p1, v0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setFirstDayOfWeek(I)V

    const/16 v0, 0x7c1

    const/16 v1, 0x7ec

    .line 96
    invoke-virtual {p1, v0, v1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setYearRange(II)V

    .line 98
    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog$3;->this$0:Lcom/lostpixels/fieldservice/dialogs/SetTimeDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "datepicker"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
