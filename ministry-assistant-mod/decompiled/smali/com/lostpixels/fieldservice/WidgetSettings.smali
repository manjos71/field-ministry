.class public Lcom/lostpixels/fieldservice/WidgetSettings;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field bIs2x2Widget:Z

.field final colorListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

.field private final configOkButtonOnClickListener:Landroid/view/View$OnClickListener;

.field mAppWidgetId:I

.field mDesktopBackground:Landroid/widget/ImageView;

.field mLabelSample:Landroid/widget/TextView;

.field mSeekSize1:Landroid/widget/SeekBar;

.field mSeekSize2:Landroid/widget/SeekBar;

.field mSize1:I

.field mSize2:I

.field mTextHeader:Landroid/widget/TextView;

.field mTextSample:Landroid/widget/TextView;

.field mTextSize1:Landroid/widget/TextView;

.field mTextSize2:Landroid/widget/TextView;

.field mWidgetBackground:Landroid/widget/ImageView;

.field mbTransparent:Z

.field miColorBg1:I

.field miColorFont1:I

.field miColorFont2:I

.field miLastId:I

.field mviewBg1:Landroid/view/View;

.field mviewFont1:Landroid/view/View;

.field mviewFont2:Landroid/view/View;

.field transparentBackground:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const v0, -0xc0c0d

    .line 39
    iput v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorBg1:I

    const v0, -0x777778

    .line 41
    iput v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont1:I

    const v0, -0xcc4a1b

    .line 42
    iput v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont2:I

    .line 62
    new-instance v0, Lcom/lostpixels/fieldservice/WidgetSettings$1;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/WidgetSettings$1;-><init>(Lcom/lostpixels/fieldservice/WidgetSettings;)V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->colorListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    .line 87
    new-instance v1, Lcom/lostpixels/fieldservice/WidgetSettings$2;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/WidgetSettings$2;-><init>(Lcom/lostpixels/fieldservice/WidgetSettings;)V

    iput-object v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->configOkButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 115
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->bIs2x2Widget:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 290
    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorBg1:I

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miLastId:I

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 300
    :sswitch_0
    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont2:I

    goto :goto_0

    .line 297
    :sswitch_1
    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont1:I

    goto :goto_0

    .line 294
    :sswitch_2
    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorBg1:I

    .line 304
    :goto_0
    invoke-static {p0}, Lcom/lostpixels/fieldservice/colorpicker/Utils$ColorUtils;->colorChoice(Landroid/content/Context;)[I

    move-result-object p1

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    :goto_1
    const v2, 0x7f1204c4

    const/4 v3, 0x5

    .line 305
    invoke-static {v2, p1, v0, v3, v1}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->newInstance(I[IIII)Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;

    move-result-object p1

    .line 311
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->colorListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->setOnColorSelectedListener(Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "cal"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0902dd -> :sswitch_2
        0x7f0902f0 -> :sswitch_1
        0x7f0902f1 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 120
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->setDialogTheme(Landroid/app/Activity;)V

    .line 122
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "cal"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;

    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->colorListener:Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    invoke-virtual {p1, v0}, Lcom/lostpixels/fieldservice/colorpicker/ColorPickerDialog;->setOnColorSelectedListener(Lcom/lostpixels/fieldservice/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V

    :cond_0
    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 135
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    .line 146
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppWidgetId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 150
    :goto_0
    iget v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    const/16 v1, 0xe

    const/16 v2, 0x16

    const/16 v3, 0x12

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 154
    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string v4, ".MonthReportWidget"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->bIs2x2Widget:Z

    if-eqz v0, :cond_2

    const/16 v2, 0x12

    .line 156
    :cond_2
    iput v2, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize1:I

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x12

    .line 157
    :goto_1
    iput v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize2:I

    goto :goto_3

    .line 159
    :cond_4
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->bIs2x2Widget:Z

    if-eqz v0, :cond_5

    const/16 v2, 0x12

    :cond_5
    iput v2, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize1:I

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0x12

    .line 160
    :goto_2
    iput v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize2:I

    .line 162
    :goto_3
    const-string v0, "widgetsettings.xml"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bgcolor1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorBg1:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorBg1:I

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transparent_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mbTransparent:Z

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fontcolor1_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont1:I

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont1:I

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fontcolor2_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont2:I

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont2:I

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fontsize1_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize1:I

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize1:I

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fontsize2_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize2:I

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize2:I

    const p1, 0x7f0c016e

    .line 173
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const p1, 0x7f0902dd

    .line 174
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902f0

    .line 176
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902f1

    .line 177
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900ca

    .line 179
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mviewBg1:Landroid/view/View;

    const p1, 0x7f090151

    .line 180
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->transparentBackground:Landroid/widget/CheckBox;

    const p1, 0x7f09022b

    .line 182
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mviewFont1:Landroid/view/View;

    const p1, 0x7f09022c

    .line 183
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mviewFont2:Landroid/view/View;

    const p1, 0x7f0904a6

    .line 185
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mLabelSample:Landroid/widget/TextView;

    const p1, 0x7f0904a7

    .line 186
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mTextSample:Landroid/widget/TextView;

    const p1, 0x7f090571

    .line 187
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mTextHeader:Landroid/widget/TextView;

    const p1, 0x7f0905fd

    .line 189
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mTextSize1:Landroid/widget/TextView;

    .line 190
    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize1:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0905fe

    .line 191
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mTextSize2:Landroid/widget/TextView;

    .line 192
    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize2:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09022d

    .line 193
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSeekSize1:Landroid/widget/SeekBar;

    const/16 v0, 0x14

    .line 194
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 195
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSeekSize1:Landroid/widget/SeekBar;

    new-instance v1, Lcom/lostpixels/fieldservice/WidgetSettings$3;

    invoke-direct {v1, p0}, Lcom/lostpixels/fieldservice/WidgetSettings$3;-><init>(Lcom/lostpixels/fieldservice/WidgetSettings;)V

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 218
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSeekSize1:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize1:I

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const p1, 0x7f09022e

    .line 220
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSeekSize2:Landroid/widget/SeekBar;

    .line 221
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 222
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSeekSize2:Landroid/widget/SeekBar;

    new-instance v0, Lcom/lostpixels/fieldservice/WidgetSettings$4;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/WidgetSettings$4;-><init>(Lcom/lostpixels/fieldservice/WidgetSettings;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 244
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSeekSize2:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize2:I

    add-int/lit8 v0, v0, -0xa

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    const p1, 0x7f0901b9

    .line 247
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mDesktopBackground:Landroid/widget/ImageView;

    const p1, 0x7f090678

    .line 248
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mWidgetBackground:Landroid/widget/ImageView;

    .line 250
    iget-boolean p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->bIs2x2Widget:Z

    if-nez p1, :cond_7

    .line 251
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mLabelSample:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    const p1, 0x7f0900eb

    .line 253
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 254
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->configOkButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900e6

    .line 255
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 256
    new-instance v0, Lcom/lostpixels/fieldservice/WidgetSettings$5;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/WidgetSettings$5;-><init>(Lcom/lostpixels/fieldservice/WidgetSettings;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mAppWidgetId:I

    if-nez p1, :cond_8

    .line 266
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 270
    :cond_8
    :try_start_1
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 272
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mDesktopBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 274
    const-string v0, "Widget settings"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_4
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mLabelSample:Landroid/widget/TextView;

    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont1:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mTextSample:Landroid/widget/TextView;

    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont2:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mTextHeader:Landroid/widget/TextView;

    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont2:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mviewBg1:Landroid/view/View;

    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorBg1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 283
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mviewFont1:Landroid/view/View;

    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 284
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mviewFont2:Landroid/view/View;

    iget v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->miColorFont2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 285
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->transparentBackground:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/WidgetSettings;->mbTransparent:Z

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
