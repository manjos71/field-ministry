.class public Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private chkDontShow:Landroid/widget/CheckBox;

.field private image:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private final msPref:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetchkDontShow(Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;)Landroid/widget/CheckBox;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->chkDontShow:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmsPref(Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->msPref:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->mContext:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->msPref:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p2}, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->initDialog(Ljava/lang/String;)V

    return-void
.end method

.method private initDialog(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f0c007c

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f090602

    .line 52
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09015d

    .line 53
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->chkDontShow:Landroid/widget/CheckBox;

    const v1, 0x7f0900f5

    .line 54
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f09026f

    .line 55
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->image:Landroid/widget/ImageView;

    .line 56
    new-instance v2, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog$1;

    invoke-direct {v2, p0}, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog$1;-><init>(Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 3

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/lostpixels/fieldservice/dialogs/DontShowAgainDialog;->msPref:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    .line 88
    :goto_0
    const-string v1, "Show dialog"

    invoke-static {v0}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
