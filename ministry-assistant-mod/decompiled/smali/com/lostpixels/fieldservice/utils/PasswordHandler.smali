.class public Lcom/lostpixels/fieldservice/utils/PasswordHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/lostpixels/fieldservice/utils/PasswordHandler;


# instance fields
.field private pwNotDisplayed:Z

.field private pwProtect:Z

.field private timeWhenShowPassword:J

.field private timeout:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->initFirstTime(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/utils/PasswordHandler;
    .locals 1

    .line 27
    sget-object v0, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->instance:Lcom/lostpixels/fieldservice/utils/PasswordHandler;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/lostpixels/fieldservice/utils/PasswordHandler;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->instance:Lcom/lostpixels/fieldservice/utils/PasswordHandler;

    .line 29
    :cond_0
    sget-object p0, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->instance:Lcom/lostpixels/fieldservice/utils/PasswordHandler;

    return-object p0
.end method

.method private initFirstTime(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->readSettings(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->timeWhenShowPassword:J

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->pwNotDisplayed:Z

    return-void
.end method

.method private readSettings(Landroid/content/Context;)V
    .locals 4

    .line 59
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    const-string v1, "checkUsePassword"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lgroup/pals/android/lib/ui/lockpattern/prefs/SecurityPrefs;->getPattern(Landroid/content/Context;)[C

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->pwProtect:Z

    .line 61
    const-string p1, "pwLockoutTime"

    const-string v1, "30"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    const-wide/32 v2, 0xea60

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->timeout:J

    return-void
.end method


# virtual methods
.method public passwordCorrect()V
    .locals 2

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->pwNotDisplayed:Z

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->timeWhenShowPassword:J

    return-void
.end method

.method public reset(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->readSettings(Landroid/content/Context;)V

    return-void
.end method

.method public shouldShowPassword()Z
    .locals 6

    .line 33
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->pwProtect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 35
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->timeWhenShowPassword:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->timeout:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/utils/PasswordHandler;->pwNotDisplayed:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
