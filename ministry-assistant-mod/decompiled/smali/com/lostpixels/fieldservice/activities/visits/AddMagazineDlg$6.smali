.class Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 231
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x7e0

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmrdStudyEdition(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmDateSetListener(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZZ)Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    move-result-object p1

    goto :goto_0

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;->-$$Nest$fgetmDateSetListener(Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;)Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    move-result-object v5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZZ)Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    move-result-object p1

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 236
    const-string v2, "checkFirstDayOfWeek"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    .line 237
    :goto_1
    invoke-virtual {p1, v0}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setFirstDayOfWeek(I)V

    const/16 v0, 0x7c1

    const/16 v1, 0x7ec

    .line 239
    invoke-virtual {p1, v0, v1}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setYearRange(II)V

    .line 241
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg$6;->this$0:Lcom/lostpixels/fieldservice/activities/visits/AddMagazineDlg;

    iget-object v0, v0, Lcom/lostpixels/fieldservice/activities/visits/AddPublicationDlg;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "datepicker"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
