.class public Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerHandler;


# instance fields
.field private checkDoneMinistry:Landroid/widget/CheckBox;

.field private final mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

.field private mLayoutMileage:Landroid/view/View;

.field private mLayoutRBCHours:Landroid/view/View;

.field private mLayoutVideoShowings:Landroid/view/View;

.field private final mMonthFormat:Ljava/text/SimpleDateFormat;

.field private mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

.field private final mTimeSetListener:Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;

.field private mbIsGoalDialog:Z

.field private mbIsHhmm:Z

.field private mbIsKilometers:Z

.field private mbIsUpdateDialog:Z

.field private mbLoadSave:Z

.field private mbOnlySelectMonth:Z

.field private mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

.field private meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

.field private meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

.field private medtBooks:Landroid/widget/EditText;

.field private medtBrochures:Landroid/widget/EditText;

.field private medtComment:Landroid/widget/EditText;

.field private medtCustom1:Landroid/widget/EditText;

.field private medtCustom2:Landroid/widget/EditText;

.field private medtCustom3:Landroid/widget/EditText;

.field private medtDVDs:Landroid/widget/EditText;

.field private medtHours:Landroid/widget/EditText;

.field private medtMags:Landroid/widget/EditText;

.field private medtMileage:Landroid/widget/EditText;

.field private medtPlacements:Landroid/widget/EditText;

.field private medtRbcHours:Landroid/widget/EditText;

.field private medtReturnVisits:Landroid/widget/EditText;

.field private medtStudies:Landroid/widget/EditText;

.field private medtTracts:Landroid/widget/EditText;

.field private medtVideoShowings:Landroid/widget/EditText;

.field realm:Lio/realm/Realm;

.field private reportDensity:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcheckDoneMinistry(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->checkDoneMinistry:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMonthFormat(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mMonthFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSession(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/internal/report/ServiceSession;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmbIsGoalDialog(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsGoalDialog:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmbIsHhmm(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmbIsKilometers(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsKilometers:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmbLoadSave(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbLoadSave:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmbOnlySelectMonth(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbOnlySelectMonth:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmbtnDate(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Lcom/lostpixels/fieldservice/ui/SpinnerButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtBooks(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtBooks:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtBrochures(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtBrochures:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtComment(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtComment:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtCustom1(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom1:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtCustom2(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom2:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtCustom3(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom3:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtDVDs(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtDVDs:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtHours(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtHours:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtMags(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtMags:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtMileage(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtMileage:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtPlacements(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtPlacements:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtRbcHours(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtRbcHours:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtReturnVisits(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtReturnVisits:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtStudies(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtStudies:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtTracts(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtTracts:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmedtVideoShowings(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtVideoShowings:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreportDensity(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->reportDensity:I

    return p0
.end method

.method static bridge synthetic -$$Nest$maddEdit(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->addEdit(Landroid/widget/EditText;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddEditFloat(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->addEditFloat(Landroid/widget/EditText;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddEditFloatTime(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->addEditFloatTime(Landroid/widget/EditText;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetComment(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->getComment(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFloatFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)F
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->getFloatFromString(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetIntFromString(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->getIntFromString(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowEditHelp(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->showEditHelp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowKeyboard(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->showKeyboard(Landroid/widget/EditText;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msubtractEdit(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->subtractEdit(Landroid/widget/EditText;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msubtractEditFloat(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->subtractEditFloat(Landroid/widget/EditText;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msubtractEditFloatTime(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->subtractEditFloatTime(Landroid/widget/EditText;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLayout(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->updateLayout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMileageView(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/util/Date;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->updateMileageView(Ljava/util/Date;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRBCView(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;Ljava/util/Date;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->updateRBCView(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 141
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "LLLL yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mMonthFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbOnlySelectMonth:Z

    .line 102
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$1;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mTimeSetListener:Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;

    .line 116
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$2;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method private addEdit(Landroid/widget/EditText;)V
    .locals 1

    .line 1225
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1228
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1229
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1231
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1233
    :cond_0
    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1235
    :catch_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private addEditFloat(Landroid/widget/EditText;)V
    .locals 7

    .line 1191
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1194
    const-string v3, "%.1f"

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x2c

    const/16 v6, 0x2e

    .line 1195
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v4

    .line 1197
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1199
    :cond_0
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 1201
    :catch_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private addEditFloatTime(Landroid/widget/EditText;)V
    .locals 3

    .line 1151
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1152
    const-string v1, ":"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1155
    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->stringToTime(Ljava/lang/String;Z)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v1

    .line 1157
    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->getMinutes()I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    .line 1159
    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v2, v1, v0}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    const/4 v1, 0x0

    invoke-static {v2, v1, v0}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->stringToTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1161
    :cond_0
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    if-eqz v0, :cond_1

    const-string v0, "1:00"

    goto :goto_0

    :cond_1
    const-string v0, "1"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1163
    :catch_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private floatToTime(Ljava/lang/Float;)Ljava/lang/String;
    .locals 0

    .line 166
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->stringToTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getComment(Ljava/util/Date;)Ljava/lang/String;
    .locals 11

    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 192
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 193
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 194
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 195
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 197
    iget-object v6, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->realm:Lio/realm/Realm;

    invoke-static {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v6

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->realm:Lio/realm/Realm;

    invoke-virtual {v6, v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getLastThreeMonths(Lio/realm/Realm;)Ljava/util/List;

    move-result-object v6

    .line 198
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 199
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 200
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 201
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 202
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v1, v8, :cond_0

    if-ne v3, v9, :cond_0

    if-ne v5, v10, :cond_0

    .line 205
    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getComment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 207
    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private getFloatFromString(Ljava/lang/String;)F
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1025
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2c

    const/16 v2, 0x2e

    .line 1026
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1030
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private getIntFromString(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1013
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1014
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1018
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private showEditHelp()V
    .locals 3

    .line 1279
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0905a3

    .line 1280
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c0065

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090595

    .line 1281
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f12041a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    new-instance v1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1284
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 1285
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    const/16 v0, 0x11

    const/4 v2, 0x0

    .line 1287
    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 1288
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showKeyboard(Landroid/widget/EditText;)V
    .locals 3

    .line 978
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 979
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 981
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->timeToFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 983
    :goto_0
    new-instance v1, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;

    invoke-direct {v1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;-><init>()V

    .line 984
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->setReference(I)Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;

    move-result-object p1

    .line 985
    invoke-virtual {p1, v2}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->setNatural(Z)Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;

    move-result-object p1

    .line 986
    invoke-virtual {p1, v2}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->setRelative(Z)Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;

    move-result-object p1

    .line 987
    invoke-virtual {p1, v0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->setInitialValue(F)Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;

    move-result-object p1

    .line 989
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f130146

    .line 990
    invoke-virtual {p1, v0}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->setTheme(I)Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;

    .line 993
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->create()Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    move-result-object p1

    .line 994
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "TAG_DEC_DIALOG"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private stringToTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 153
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    if-eqz v0, :cond_3

    .line 154
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "0"

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_1

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":00"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    :cond_2
    :goto_0
    const-string v1, ":"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private subtractEdit(Landroid/widget/EditText;)V
    .locals 2

    .line 1207
    const-string v0, ""

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1209
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1210
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_0

    .line 1213
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 1215
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 1217
    :cond_2
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->showEditHelp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1219
    :catch_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private subtractEditFloat(Landroid/widget/EditText;)V
    .locals 5

    .line 1170
    const-string v0, ""

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1173
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x2c

    const/16 v3, 0x2e

    .line 1174
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 1177
    const-string v2, "%.1f"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 1179
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 1182
    :cond_2
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->showEditHelp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1184
    :catch_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private subtractEditFloatTime(Landroid/widget/EditText;)V
    .locals 5

    .line 1124
    const-string v0, ""

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1125
    const-string v2, ":"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1127
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1128
    iget-boolean v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    invoke-static {v1, v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->stringToTime(Ljava/lang/String;Z)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v1

    .line 1129
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v2

    .line 1130
    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->getMinutes()I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-gez v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    if-gtz v2, :cond_2

    if-lez v1, :cond_1

    goto :goto_0

    .line 1140
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1138
    :cond_2
    :goto_0
    new-instance v4, Lcom/lostpixels/fieldservice/internal/report/Time;

    invoke-direct {v4, v2, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;-><init>(II)V

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    invoke-static {v4, v3, v1}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->stringToTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1143
    :cond_3
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->showEditHelp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1145
    :catch_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private timeToFloat(Ljava/lang/String;)F
    .locals 2

    .line 145
    const-string v0, ":"

    const-string v1, "."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 149
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method private updateLayout()V
    .locals 8

    .line 1057
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isBeforeJan2016()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mLayoutVideoShowings:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mLayoutVideoShowings:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v0

    .line 1063
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->realm:Lio/realm/Realm;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v3

    .line 1064
    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v4

    .line 1065
    iget-object v5, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    iget v5, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->reportDensity:I

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-static {v5, v3, v4, v0, v7}, Lcom/lostpixels/fieldservice/utils/ReportUtils;->showOnlyBeenOutInMinistryMonth(ILcom/lostpixels/fieldservice/internal/report/YearReport;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1066
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1067
    const-string v4, "showVideo"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const v4, 0x7f090378

    .line 1069
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->reportDensity:I

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    const/16 v5, 0x8

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f090387

    .line 1070
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->reportDensity:I

    if-eq v5, v6, :cond_3

    const/16 v5, 0x8

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f090395

    .line 1071
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->reportDensity:I

    if-nez v5, :cond_4

    const/16 v5, 0x8

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f090394

    .line 1072
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->reportDensity:I

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    const/16 v3, 0x8

    :goto_5
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f09038b

    .line 1073
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->reportDensity:I

    if-nez v4, :cond_6

    const/16 v4, 0x8

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f09037e

    .line 1074
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_7

    iget-boolean v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsGoalDialog:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x8

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f090379

    .line 1075
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsGoalDialog:Z

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_8
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateMileageView(Ljava/util/Date;)V
    .locals 5

    .line 1262
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1263
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1264
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->realm:Lio/realm/Realm;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object p1

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->realm:Lio/realm/Realm;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object p1

    const/4 v1, 0x2

    .line 1266
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    .line 1267
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v1

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v1

    .line 1268
    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    sget-object v3, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 1269
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mLayoutMileage:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1270
    :cond_0
    sget-object v3, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eWhenPioneer:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isSpecialPioneerOrMissionary()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    if-gt v1, v0, :cond_3

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1274
    :cond_2
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mLayoutMileage:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1272
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mLayoutMileage:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateRBCView(Ljava/util/Date;)V
    .locals 6

    .line 1240
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1241
    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->date2ServiceYear(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1242
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->realm:Lio/realm/Realm;

    invoke-static {v1}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->realm:Lio/realm/Realm;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;I)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v1

    const/4 v2, 0x2

    .line 1244
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v0

    .line 1245
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->firstPioneerMonth()I

    move-result v2

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->month2ServiceMonth(I)I

    move-result v2

    .line 1246
    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    sget-object v4, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mLayoutRBCHours:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1248
    :cond_0
    sget-object v4, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eWhenPioneer:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->isPioneer()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    if-gt v2, v0, :cond_3

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    sget-object v2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 1252
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mLayoutRBCHours:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1250
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mLayoutRBCHours:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1254
    :goto_1
    invoke-virtual {v1, p1}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/MonthReport;->isBethelite()Z

    move-result p1

    const-string v0, " (hh.d)"

    const-string v1, " (hh:mm)"

    if-eqz p1, :cond_5

    .line 1255
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtRbcHours:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f1201df

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    if-eqz v3, :cond_4

    move-object v0, v1

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void

    .line 1257
    :cond_5
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtRbcHours:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f1204a3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    if-eqz v3, :cond_6

    move-object v0, v1

    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 214
    const-string v2, "never"

    const-string v3, "pioneer"

    const-string v4, "hhmm"

    const-string v5, "AddToReport_Widget"

    const-string v6, "ReportDensity"

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->getRealmInstance(Landroid/content/Context;)Lio/realm/Realm;

    move-result-object v7

    iput-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->realm:Lio/realm/Realm;

    const/4 v7, 0x0

    .line 215
    invoke-virtual {v1, v7}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 217
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    :try_start_1
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v8

    const-string v9, "AddReportTime"

    invoke-virtual {v8, v9}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v8

    const-string v9, "CurrentAtivity"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 225
    invoke-interface {v8, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->reportDensity:I

    .line 227
    invoke-static {v1}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->setDialogTheme(Landroid/app/Activity;)V

    .line 229
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 230
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 231
    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->setLanguage(Landroid/app/Activity;)V

    .line 232
    const-string v9, "Lap1"

    invoke-static {v9}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 234
    iput-boolean v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbLoadSave:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 235
    const-string v10, "LoadFile"

    const-string v11, "OnlyMonths"

    const-string v12, "IsUpdate"

    const-string v13, "IsGoal"

    const-string v14, "Session"

    const/4 v15, 0x1

    if-eqz v0, :cond_0

    .line 236
    :try_start_3
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsGoalDialog:Z

    .line 237
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsUpdateDialog:Z

    .line 238
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbOnlySelectMonth:Z

    .line 239
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbLoadSave:Z

    .line 240
    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_16

    :cond_0
    if-eqz v9, :cond_3

    .line 242
    invoke-virtual {v9, v10, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbLoadSave:Z

    .line 243
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v10, "fieldservice.action.addfromshortcut"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iput-boolean v15, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbLoadSave:Z

    .line 245
    :cond_1
    iget-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbLoadSave:Z

    if-eqz v0, :cond_2

    .line 246
    invoke-static {v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 247
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 248
    const-string v15, "item_id"

    invoke-virtual {v10, v15, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v15, "item_name"

    invoke-virtual {v10, v15, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v5, "content_type"

    const-string v15, "action"

    invoke-virtual {v10, v5, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v5, "select_content"

    invoke-virtual {v0, v5, v10}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 253
    :cond_2
    invoke-virtual {v9, v13, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsGoalDialog:Z

    .line 254
    invoke-virtual {v9, v12, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsUpdateDialog:Z

    .line 255
    invoke-virtual {v9, v11, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbOnlySelectMonth:Z

    .line 256
    invoke-virtual {v9, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    invoke-virtual {v9, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 259
    iget v5, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->reportDensity:I

    const/4 v9, 0x2

    if-eq v5, v9, :cond_3

    .line 260
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setTracts(I)V

    .line 261
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0, v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setMagazines(I)V

    .line 262
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0, v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setBooklets(I)V

    .line 263
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0, v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->setBooks(I)V

    .line 268
    :cond_3
    :goto_0
    const-string v0, "inputMode"

    invoke-interface {v8, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    .line 269
    const-string v0, "mileageKM"

    const/4 v4, 0x1

    invoke-interface {v8, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsKilometers:Z

    .line 271
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->realm:Lio/realm/Realm;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v5

    .line 272
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom1()Z

    move-result v0

    .line 273
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom2()Z

    move-result v4

    .line 274
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isUsingCustom3()Z

    move-result v9

    .line 275
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem1IsTime()Z

    move-result v10

    .line 276
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem2IsTime()Z

    move-result v11

    move v12, v4

    .line 277
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->isCustomItem3IsTime()Z

    move-result v4

    .line 278
    const-string v13, "showVideo"

    invoke-interface {v8, v13, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 280
    const-string v14, "MyPrefsSettings"

    invoke-virtual {v1, v14, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 281
    const-string v15, "whenShowRBC"

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 282
    sget-object v7, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eWhenPioneer:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    .line 283
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 p1, v4

    const-string v4, "always"

    if-eqz v18, :cond_4

    .line 284
    :try_start_4
    sget-object v15, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v15, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    goto :goto_1

    .line 285
    :cond_4
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 286
    sget-object v15, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v15, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->meWhenShowRBC:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    .line 288
    :cond_5
    :goto_1
    const-string v15, "whenShowMilage"

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    iput-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    .line 290
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 291
    sget-object v2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eNever:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    goto :goto_2

    .line 292
    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 293
    sget-object v2, Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;->eAlways:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->meWhenShowMileage:Lcom/lostpixels/fieldservice/helpfunctions/PublicConstants$whenShowRBC;

    .line 295
    :cond_7
    :goto_2
    iget-boolean v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsUpdateDialog:Z

    if-eqz v2, :cond_8

    .line 296
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-static {v2, v1}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfNull(Ljava/lang/Object;Landroid/app/Activity;)Z

    .line 297
    :cond_8
    const-string v2, "Lap2"

    invoke-static {v2}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    const v2, 0x7f0c0031

    .line 298
    invoke-virtual {v1, v2}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 300
    const-string v2, "Lap3"

    invoke-static {v2}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 302
    iget-boolean v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbLoadSave:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 303
    iput-boolean v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsGoalDialog:Z

    .line 306
    :cond_9
    const-string v2, "Lap4"

    invoke-static {v2}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->lap(Ljava/lang/String;)V

    .line 307
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    if-nez v2, :cond_a

    .line 308
    new-instance v2, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-direct {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;-><init>()V

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    .line 311
    :cond_a
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isBeforeOctober2023()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v2

    if-gtz v2, :cond_b

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v2

    if-gtz v2, :cond_b

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v2

    if-lez v2, :cond_c

    :cond_b
    iget v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->reportDensity:I

    if-nez v2, :cond_c

    const/4 v4, 0x1

    .line 313
    iput v4, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->reportDensity:I

    goto :goto_3

    .line 314
    :cond_c
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->isBeforeOctober2023()Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x0

    .line 315
    invoke-interface {v8, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->reportDensity:I

    .line 318
    :cond_d
    :goto_3
    iget-boolean v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsGoalDialog:Z

    if-eqz v2, :cond_e

    const v2, 0x7f120169

    .line 319
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    :cond_e
    iget-boolean v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsUpdateDialog:Z

    if-eqz v2, :cond_f

    const v2, 0x7f1201d4

    .line 322
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_f
    const v2, 0x7f090146

    .line 324
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    if-eqz v2, :cond_12

    .line 326
    iget-boolean v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsGoalDialog:Z

    const v4, 0x7f0c013c

    if-nez v3, :cond_11

    iget-boolean v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbOnlySelectMonth:Z

    if-eqz v3, :cond_10

    goto :goto_4

    :cond_10
    const/16 v16, 0x1

    .line 329
    invoke-static/range {v16 .. v16}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;I)V

    goto :goto_5

    .line 327
    :cond_11
    :goto_4
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mMonthFormat:Ljava/text/SimpleDateFormat;

    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setText(Ljava/lang/String;I)V

    .line 330
    :goto_5
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbtnDate:Lcom/lostpixels/fieldservice/ui/SpinnerButton;

    new-instance v3, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$3;

    invoke-direct {v3, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$3;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v3}, Lcom/lostpixels/fieldservice/ui/SpinnerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    const v2, 0x7f090254

    .line 338
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtHours:Landroid/widget/EditText;

    .line 340
    iget-boolean v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    new-instance v3, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$4;

    invoke-direct {v3, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$4;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-static {v2, v3}, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;->getInstance(ZLcom/lostpixels/fieldservice/ui/TimeInputFilter$OnErrorListener;)Lcom/lostpixels/fieldservice/ui/TimeInputFilter;

    move-result-object v2

    const/4 v4, 0x1

    new-array v3, v4, [Landroid/text/InputFilter;

    const/16 v17, 0x0

    aput-object v2, v3, v17

    .line 346
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtHours:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 349
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtHours:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtHours:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    if-eqz v6, :cond_13

    const-string v6, " (hh:mm)"

    goto :goto_6

    :cond_13
    const-string v6, " (hh.d)"

    :goto_6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 350
    iget-boolean v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    const/16 v4, 0x2002

    if-eqz v2, :cond_14

    .line 351
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtHours:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 353
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtHours:Landroid/widget/EditText;

    new-instance v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$5;

    invoke-direct {v6, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$5;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 361
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtHours:Landroid/widget/EditText;

    new-instance v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$6;

    invoke-direct {v6, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$6;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtHours:Landroid/widget/EditText;

    new-instance v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$7;

    invoke-direct {v6, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$7;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_7

    .line 379
    :cond_14
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtHours:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    :goto_7
    const v2, 0x7f090258

    .line 383
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$8;

    invoke-direct {v6, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$8;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090259

    .line 389
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$9;

    invoke-direct {v6, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$9;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090255

    .line 395
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$10;

    invoke-direct {v6, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$10;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->realm:Lio/realm/Realm;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;

    move-result-object v2

    .line 403
    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->realm:Lio/realm/Realm;

    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getServiceYear(Lio/realm/Realm;Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/YearReport;

    move-result-object v6

    .line 404
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lostpixels/fieldservice/internal/report/YearReport;->getMonthReport(Ljava/util/Date;)Lcom/lostpixels/fieldservice/internal/report/MonthReport;

    move-result-object v7

    .line 405
    iget-object v8, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v8

    if-nez v8, :cond_15

    iget v8, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->reportDensity:I

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v14}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v14

    invoke-static {v8, v6, v7, v2, v14}, Lcom/lostpixels/fieldservice/utils/ReportUtils;->showOnlyBeenOutInMinistryMonth(ILcom/lostpixels/fieldservice/internal/report/YearReport;Lcom/lostpixels/fieldservice/internal/report/MonthReport;Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_8

    :cond_15
    const/4 v2, 0x0

    :goto_8
    const v6, 0x7f090126

    .line 406
    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->checkDoneMinistry:Landroid/widget/CheckBox;

    if-eqz v2, :cond_16

    .line 407
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDoneMinistry()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_9

    :cond_16
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v6, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 409
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v2

    if-eqz v2, :cond_17

    .line 410
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtHours:Landroid/widget/EditText;

    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v6

    iget-boolean v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    const/4 v8, 0x1

    invoke-static {v6, v8, v7}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    const v2, 0x7f090389

    .line 413
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mLayoutRBCHours:Landroid/view/View;

    const v2, 0x7f090466

    .line 414
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtRbcHours:Landroid/widget/EditText;

    .line 415
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 417
    iget-boolean v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    if-eqz v2, :cond_18

    .line 418
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtRbcHours:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 420
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtRbcHours:Landroid/widget/EditText;

    new-instance v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$11;

    invoke-direct {v6, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$11;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 428
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtRbcHours:Landroid/widget/EditText;

    new-instance v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$12;

    invoke-direct {v6, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$12;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtRbcHours:Landroid/widget/EditText;

    new-instance v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$13;

    invoke-direct {v6, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$13;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_a

    .line 446
    :cond_18
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtRbcHours:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    :goto_a
    const v2, 0x7f090467

    .line 449
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$14;

    invoke-direct {v6, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$14;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090468

    .line 455
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$15;

    invoke-direct {v6, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$15;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v2

    if-eqz v2, :cond_19

    .line 462
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtRbcHours:Landroid/widget/EditText;

    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRbcHours()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v6

    iget-boolean v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    const/4 v8, 0x1

    invoke-static {v6, v8, v7}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    const v2, 0x7f090381

    .line 465
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mLayoutMileage:Landroid/view/View;

    const v2, 0x7f0903c9

    .line 466
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtMileage:Landroid/widget/EditText;

    .line 467
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 468
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtMileage:Landroid/widget/EditText;

    iget-boolean v6, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsKilometers:Z

    if-eqz v6, :cond_1a

    const v6, 0x7f120426

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_1a
    const v6, 0x7f120445

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_b
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v2, 0x7f0903ca

    .line 469
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$16;

    invoke-direct {v6, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$16;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0903cb

    .line 475
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$17;

    invoke-direct {v6, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$17;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMileage(Z)F

    move-result v2

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1b

    .line 482
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtMileage:Landroid/widget/EditText;

    const-string v6, "%.1f"

    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    iget-boolean v8, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsKilometers:Z

    invoke-virtual {v7, v8}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMileage(Z)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x1

    new-array v14, v8, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v7, v14, v17

    invoke-static {v6, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :cond_1b
    iget v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->reportDensity:I

    const/16 v6, 0x8

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1c

    const v2, 0x7f090447

    .line 485
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtPlacements:Landroid/widget/EditText;

    const/4 v7, 0x2

    .line 486
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setInputType(I)V

    const v2, 0x7f09045b

    .line 487
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$18;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$18;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09045c

    .line 493
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$19;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$19;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v2

    if-eqz v2, :cond_23

    .line 500
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtPlacements:Landroid/widget/EditText;

    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getPlacements()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_1c
    const v2, 0x7f0903a1

    .line 503
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtMags:Landroid/widget/EditText;

    const/4 v7, 0x2

    .line 504
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setInputType(I)V

    const v2, 0x7f0903a2

    .line 505
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$20;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$20;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0903a3

    .line 511
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$21;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$21;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v2

    if-eqz v2, :cond_1d

    .line 518
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtMags:Landroid/widget/EditText;

    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getMagazines()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    const v2, 0x7f0900de

    .line 521
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtBrochures:Landroid/widget/EditText;

    const/4 v7, 0x2

    .line 522
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setInputType(I)V

    const v2, 0x7f0900df

    .line 523
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$22;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$22;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900e0

    .line 529
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$23;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$23;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 536
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtBrochures:Landroid/widget/EditText;

    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBrochures()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1e
    const v2, 0x7f0900cd

    .line 539
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtBooks:Landroid/widget/EditText;

    const/4 v7, 0x2

    .line 540
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setInputType(I)V

    const v2, 0x7f0900ce

    .line 541
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$24;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$24;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900cf

    .line 547
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$25;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$25;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v2

    if-eqz v2, :cond_1f

    .line 554
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtBooks:Landroid/widget/EditText;

    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getBooks()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    const v2, 0x7f090394

    .line 557
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_21

    if-eqz v13, :cond_20

    const/4 v7, 0x0

    .line 560
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 562
    :cond_20
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    :goto_c
    const v2, 0x7f090653

    .line 565
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtDVDs:Landroid/widget/EditText;

    const/4 v7, 0x2

    .line 566
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setInputType(I)V

    const v2, 0x7f090657

    .line 567
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$26;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$26;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090658

    .line 573
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$27;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$27;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v2

    if-eqz v2, :cond_22

    .line 580
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtDVDs:Landroid/widget/EditText;

    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDvds()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_22
    const v2, 0x7f0905ad

    .line 584
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtTracts:Landroid/widget/EditText;

    const/4 v7, 0x2

    .line 585
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setInputType(I)V

    const v2, 0x7f0905ae

    .line 586
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$28;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$28;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0905af

    .line 592
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$29;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$29;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v2

    if-eqz v2, :cond_23

    .line 599
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtTracts:Landroid/widget/EditText;

    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getTracts()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    :goto_d
    const v2, 0x7f090395

    .line 602
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mLayoutVideoShowings:Landroid/view/View;

    const v2, 0x7f090654

    .line 603
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtVideoShowings:Landroid/widget/EditText;

    const/4 v7, 0x2

    .line 604
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setInputType(I)V

    const v2, 0x7f090655

    .line 605
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$30;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$30;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090656

    .line 611
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$31;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$31;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v2

    if-eqz v2, :cond_24

    .line 618
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtVideoShowings:Landroid/widget/EditText;

    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getVideoShowings()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    const v2, 0x7f09049c

    .line 622
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtReturnVisits:Landroid/widget/EditText;

    const/4 v7, 0x2

    .line 623
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setInputType(I)V

    const v2, 0x7f09049d

    .line 624
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$32;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$32;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09049e

    .line 630
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$33;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$33;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v2

    if-eqz v2, :cond_25

    .line 637
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtReturnVisits:Landroid/widget/EditText;

    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getRetVisits()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_25
    const v2, 0x7f090531

    .line 640
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtStudies:Landroid/widget/EditText;

    const/4 v7, 0x2

    .line 641
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setInputType(I)V

    const v2, 0x7f090532

    .line 642
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$34;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$34;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090533

    .line 648
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$35;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$35;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v2

    if-eqz v2, :cond_26

    .line 655
    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtStudies:Landroid/widget/EditText;

    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v7}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getAddedStudies()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    const v2, 0x7f090181

    .line 657
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtComment:Landroid/widget/EditText;

    .line 658
    iget-boolean v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsGoalDialog:Z

    if-eqz v7, :cond_27

    .line 659
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    .line 661
    :cond_27
    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v6}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->getComment(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e
    if-eqz v0, :cond_28

    const v0, 0x7f090372

    .line 665
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28

    const/4 v2, 0x0

    .line 667
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_28
    const v0, 0x7f090196

    .line 669
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom1:Landroid/widget/EditText;

    .line 670
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const v0, 0x7f090198

    const v2, 0x7f090197

    .line 671
    const-string v6, "%d"

    if-eqz v10, :cond_2a

    .line 672
    :try_start_5
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom1:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 674
    iget-boolean v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    if-eqz v7, :cond_29

    .line 675
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom1:Landroid/widget/EditText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 677
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom1:Landroid/widget/EditText;

    new-instance v8, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$36;

    invoke-direct {v8, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$36;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 685
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom1:Landroid/widget/EditText;

    new-instance v8, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$37;

    invoke-direct {v8, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$37;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom1:Landroid/widget/EditText;

    new-instance v8, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$38;

    invoke-direct {v8, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$38;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_f

    .line 703
    :cond_29
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom1:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 706
    :goto_f
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$39;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$39;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$40;

    invoke-direct {v2, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$40;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 719
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom1:Landroid/widget/EditText;

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    iget-boolean v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    const/4 v8, 0x1

    invoke-static {v2, v8, v7}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 721
    :cond_2a
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom1:Landroid/widget/EditText;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 722
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$41;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$41;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$42;

    invoke-direct {v2, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$42;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 735
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom1:Landroid/widget/EditText;

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v2, v7, v17

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2b
    :goto_10
    if-eqz v12, :cond_2c

    const v0, 0x7f090374

    .line 740
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2c

    const/4 v2, 0x0

    .line 742
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    const v0, 0x7f090199

    .line 744
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom2:Landroid/widget/EditText;

    .line 745
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f09019b

    const v2, 0x7f09019a

    if-eqz v11, :cond_2e

    .line 747
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom2:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 749
    iget-boolean v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    if-eqz v7, :cond_2d

    .line 750
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom2:Landroid/widget/EditText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 752
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom2:Landroid/widget/EditText;

    new-instance v8, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$43;

    invoke-direct {v8, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$43;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 760
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom2:Landroid/widget/EditText;

    new-instance v8, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$44;

    invoke-direct {v8, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$44;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom2:Landroid/widget/EditText;

    new-instance v8, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$45;

    invoke-direct {v8, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$45;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_11

    .line 778
    :cond_2d
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom2:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 781
    :goto_11
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$46;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$46;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$47;

    invoke-direct {v2, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$47;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 793
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 794
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom2:Landroid/widget/EditText;

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    iget-boolean v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    const/4 v8, 0x1

    invoke-static {v2, v8, v7}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 796
    :cond_2e
    iget-object v7, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom2:Landroid/widget/EditText;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 797
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$48;

    invoke-direct {v7, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$48;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$49;

    invoke-direct {v2, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$49;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 810
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom2:Landroid/widget/EditText;

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom2()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v2, v7, v17

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2f
    :goto_12
    if-eqz v9, :cond_30

    const v0, 0x7f090376

    .line 815
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v2, 0x0

    .line 817
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_30
    const v0, 0x7f09019c

    .line 819
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom3:Landroid/widget/EditText;

    .line 820
    invoke-virtual {v5}, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;->getCustom3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f09019e

    const v2, 0x7f09019d

    if-eqz p1, :cond_32

    .line 822
    iget-object v6, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom3:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 824
    iget-boolean v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    if-eqz v3, :cond_31

    .line 825
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom3:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 827
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom3:Landroid/widget/EditText;

    new-instance v4, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$50;

    invoke-direct {v4, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$50;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 835
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom3:Landroid/widget/EditText;

    new-instance v4, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$51;

    invoke-direct {v4, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$51;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom3:Landroid/widget/EditText;

    new-instance v4, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$52;

    invoke-direct {v4, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$52;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_13

    .line 853
    :cond_31
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom3:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 856
    :goto_13
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$53;

    invoke-direct {v3, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$53;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$54;

    invoke-direct {v2, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$54;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v0

    if-eqz v0, :cond_33

    .line 869
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom3:Landroid/widget/EditText;

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3Time()Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v2

    iget-boolean v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    const/4 v8, 0x1

    invoke-static {v2, v8, v3}, Lcom/lostpixels/fieldservice/internal/report/Time;->timeToString(Lcom/lostpixels/fieldservice/internal/report/Time;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 871
    :cond_32
    iget-object v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom3:Landroid/widget/EditText;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 872
    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$55;

    invoke-direct {v3, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$55;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$56;

    invoke-direct {v2, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$56;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 884
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom1()I

    move-result v0

    if-eqz v0, :cond_33

    .line 885
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom3:Landroid/widget/EditText;

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v2}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getCustom3()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v2, v3, v17

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_33
    :goto_14
    const v0, 0x7f0900e1

    .line 889
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    .line 890
    iget-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsGoalDialog:Z

    if-eqz v0, :cond_34

    const v0, 0x7f1201b7

    .line 891
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 892
    :cond_34
    iget-boolean v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsUpdateDialog:Z

    if-eqz v0, :cond_35

    const v0, 0x7f1201d3

    .line 893
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_35
    const v0, 0x7f12012f

    .line 895
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 896
    :goto_15
    new-instance v0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;

    move/from16 v4, p1

    move v2, v10

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$57;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;ZZZLcom/lostpixels/fieldservice/internal/report/ServiceReportManager;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e6

    .line 954
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 955
    new-instance v2, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$58;

    invoke-direct {v2, v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime$58;-><init>(Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 962
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->updateRBCView(Ljava/util/Date;)V

    .line 963
    iget-object v0, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->updateMileageView(Ljava/util/Date;)V

    .line 965
    invoke-direct {v1}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->updateLayout()V

    .line 966
    const-string v0, "AddReportTime Done"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_17

    .line 972
    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    return-void
.end method

.method public onDecimalNumberPicked(IF)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtHours:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 179
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtHours:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->floatToTime(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtRbcHours:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 181
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtRbcHours:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->floatToTime(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 183
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom1:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->floatToTime(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 185
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom2:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->floatToTime(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 187
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtCustom3:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->floatToTime(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 172
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 173
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->realm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1037
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfImported(Landroid/app/Activity;)Z

    .line 1038
    invoke-static {}, Lcom/lostpixels/fieldservice/MinistryAssistant;->updateUseTime()V

    .line 1041
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    const-string v1, "CurrentAtivity"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :catch_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1002
    const-string v0, "IsGoal"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsGoalDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1003
    const-string v0, "IsUpdate"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsUpdateDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1004
    const-string v0, "OnlyMonths"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbOnlySelectMonth:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1005
    const-string v0, "Session"

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1006
    const-string v0, "LoadFile"

    iget-boolean v1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbLoadSave:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1007
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1052
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected showTimeDialog(I)V
    .locals 18

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_3

    .line 1080
    iget-boolean v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsGoalDialog:Z

    const-string v4, "datepicker"

    const/16 v5, 0x7ec

    const/16 v6, 0x7c1

    const-string v7, "checkFirstDayOfWeek"

    const/4 v8, 0x5

    const/4 v9, 0x2

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbOnlySelectMonth:Z

    if-nez v3, :cond_1

    .line 1081
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1082
    iget-object v10, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1084
    iget-object v11, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZZ)Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    move-result-object v3

    .line 1085
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1086
    invoke-interface {v8, v7, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 1087
    :goto_0
    invoke-virtual {v3, v2}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setFirstDayOfWeek(I)V

    .line 1089
    invoke-virtual {v3, v6, v5}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setYearRange(II)V

    .line 1090
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 1092
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1093
    iget-object v10, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mSession:Lcom/lostpixels/fieldservice/internal/report/ServiceSession;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/lostpixels/fieldservice/internal/report/ServiceSession;->getDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1095
    iget-object v11, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mDateSetListener:Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/fourmob/datetimepicker/date/DatePickerDialog$OnDateSetListener;IIIZZ)Lcom/fourmob/datetimepicker/date/DatePickerDialog;

    move-result-object v3

    .line 1096
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1097
    invoke-interface {v8, v7, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    .line 1098
    :goto_1
    invoke-virtual {v3, v2}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setFirstDayOfWeek(I)V

    .line 1100
    invoke-virtual {v3, v6, v5}, Lcom/fourmob/datetimepicker/date/DatePickerDialog;->setYearRange(II)V

    .line 1101
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 1104
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1105
    iget-object v4, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->medtHours:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    const-string v6, "."

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mbIsHhmm:Z

    invoke-static {v4, v5}, Lcom/lostpixels/fieldservice/internal/report/Time;->stringToTime(Ljava/lang/String;Z)Lcom/lostpixels/fieldservice/internal/report/Time;

    move-result-object v4

    .line 1106
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->getTime()I

    move-result v5

    const/16 v6, 0xc

    const/16 v7, 0xb

    if-eqz v5, :cond_4

    .line 1107
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->getHours()I

    move-result v0

    invoke-virtual {v3, v7, v0}, Ljava/util/Calendar;->set(II)V

    .line 1108
    invoke-virtual {v4}, Lcom/lostpixels/fieldservice/internal/report/Time;->getMinutes()I

    move-result v0

    invoke-virtual {v3, v6, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    .line 1110
    :cond_4
    invoke-virtual {v3, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 1111
    invoke-virtual {v3, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 1114
    :goto_2
    new-instance v0, Lnet/simonvt/app/TimePickerDialog;

    iget-object v2, v1, Lcom/lostpixels/fieldservice/activities/servicereport/AddReportTime;->mTimeSetListener:Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1115
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const v7, 0x7f12004b

    const/4 v8, 0x1

    const v5, 0x7f1201bb

    const v6, 0x7f120054

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    invoke-direct/range {v0 .. v8}, Lnet/simonvt/app/TimePickerDialog;-><init>(Landroid/content/Context;Lnet/simonvt/app/TimePickerDialog$OnTimeSetListener;IIIIIZ)V

    .line 1117
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
