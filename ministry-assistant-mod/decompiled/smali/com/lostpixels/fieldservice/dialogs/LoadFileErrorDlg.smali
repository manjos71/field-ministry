.class public Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field private mchkRestore:Landroid/widget/CheckBox;

.field private mchkSendFiles:Landroid/widget/CheckBox;


# direct methods
.method static bridge synthetic -$$Nest$fgetmchkRestore(Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;->mchkRestore:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmchkSendFiles(Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;->mchkSendFiles:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->installExceptionHandler()V

    .line 42
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->setLanguage(Landroid/app/Activity;)V

    const p1, 0x7f0c009a

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f09016b

    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;->mchkSendFiles:Landroid/widget/CheckBox;

    const p1, 0x7f09016a

    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;->mchkRestore:Landroid/widget/CheckBox;

    const p1, 0x7f09060f

    .line 46
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0905fb

    .line 47
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1200ee

    .line 48
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "https://lostpixels.one/ministryassistant"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xf

    .line 49
    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    const v0, 0x7f0900f5

    .line 50
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 51
    invoke-static {v4}, Lcom/lostpixels/fieldservice/helpfunctions/FileManager;->isLowOnDiskSpace(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;->mchkSendFiles:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 54
    iget-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;->mchkRestore:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 56
    new-instance p1, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg$1;

    invoke-direct {p1, p0}, Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg$1;-><init>(Lcom/lostpixels/fieldservice/dialogs/LoadFileErrorDlg;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/lostpixels/fieldservice/helpfunctions/ConsistancyChecks;->restartIfImported(Landroid/app/Activity;)Z

    .line 30
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method
