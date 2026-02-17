.class public Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final colorListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

.field private final configOkButtonOnClickListener:Landroid/view/View$OnClickListener;

.field mAppWidgetId:I

.field mDesktopBackground:Landroid/widget/ImageView;

.field mPlacements:Landroid/widget/ImageView;

.field mWidgetBackground:Landroid/widget/ImageView;

.field miColorBg1:I

.field miColorFg1:I

.field miLastId:I

.field mviewBg1:Landroid/view/View;

.field mviewFg1:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const v0, -0x333334

    .line 34
    iput v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorBg1:I

    const v0, -0xcccccd

    .line 36
    iput v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorFg1:I

    .line 43
    new-instance v0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter$1;-><init>(Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->colorListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mAppWidgetId:I

    .line 62
    new-instance v0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter$2;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter$2;-><init>(Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->configOkButtonOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 159
    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorBg1:I

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miLastId:I

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0902dd

    if-eq p1, v1, :cond_1

    const v1, 0x7f0902ef

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorFg1:I

    goto :goto_0

    .line 163
    :cond_1
    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorBg1:I

    .line 171
    :goto_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/colorpicker/Utils$ColorUtils;->colorChoice(Landroid/content/Context;)[I

    move-result-object p1

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    const v2, 0x7f1204c4

    const/4 v3, 0x5

    .line 172
    invoke-static {v2, p1, v0, v3, v1}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->newInstance(I[IIII)Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->colorListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->setOnColorSelectedListener(Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "cal"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 89
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->setDialogTheme(Landroid/app/Activity;)V

    .line 91
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "cal"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;

    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->colorListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->setOnColorSelectedListener(Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V

    :cond_0
    const/4 p1, 0x0

    .line 102
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mAppWidgetId:I

    .line 112
    :cond_1
    const-string v0, "widgetsettings.xml"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bgcolor1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorBg1:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorBg1:I

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fgcolor1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorFg1:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorFg1:I

    const p1, 0x7f0c016f

    .line 116
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const p1, 0x7f0902dd

    .line 117
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902ef

    .line 118
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900ca

    .line 120
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mviewBg1:Landroid/view/View;

    const p1, 0x7f09021a

    .line 121
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mviewFg1:Landroid/view/View;

    const p1, 0x7f0901b9

    .line 123
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mDesktopBackground:Landroid/widget/ImageView;

    const p1, 0x7f090678

    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mWidgetBackground:Landroid/widget/ImageView;

    const p1, 0x7f090447

    .line 125
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mPlacements:Landroid/widget/ImageView;

    .line 127
    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorFg1:I

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/utils/ColorUtils;->tintImage(Landroid/widget/ImageView;I)V

    const p1, 0x7f0900eb

    .line 129
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->configOkButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900e6

    .line 131
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 132
    new-instance v0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter$3;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter$3;-><init>(Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mAppWidgetId:I

    if-nez p1, :cond_2

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 145
    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mDesktopBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    const-string v0, "Getting wallpaper"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mviewBg1:Landroid/view/View;

    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorBg1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 154
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->mviewFg1:Landroid/view/View;

    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->miColorFg1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
