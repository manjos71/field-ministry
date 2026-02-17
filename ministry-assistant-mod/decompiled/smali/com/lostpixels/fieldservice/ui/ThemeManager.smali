.class public abstract Lcom/lostpixels/fieldservice/ui/ThemeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;
    }
.end annotation


# static fields
.field public static THEME_BLUE:Ljava/lang/String; = "blue"

.field public static THEME_BROWN:Ljava/lang/String; = "brown"

.field public static THEME_DARK:Ljava/lang/String; = "dark"

.field public static THEME_DEFAULT:Ljava/lang/String; = "blue"

.field public static THEME_GREEN:Ljava/lang/String; = "green"

.field public static THEME_GREENER:Ljava/lang/String; = "greener"

.field public static THEME_LIME:Ljava/lang/String; = "lime"

.field public static THEME_ORANGE:Ljava/lang/String; = "orange"

.field public static THEME_PINK:Ljava/lang/String; = "pink"

.field public static THEME_PURPLE:Ljava/lang/String; = "purple"

.field public static THEME_RED:Ljava/lang/String; = "red"

.field public static THEME_STEEL:Ljava/lang/String; = "steel"

.field public static THEME_YELLOW:Ljava/lang/String; = "yellow"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getThemeColor(Landroid/content/Context;)I
    .locals 3

    .line 270
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 271
    const-string v1, "selectedThemeColor"

    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_BLUE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_PURPLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0602d5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 276
    :cond_0
    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_BLUE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0600bd

    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 278
    :cond_1
    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_YELLOW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0602f8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 280
    :cond_2
    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_RED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0602d9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 282
    :cond_3
    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_GREEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0600af

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 284
    :cond_4
    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_DARK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060077

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 286
    :cond_5
    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_GREENER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0600b3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 288
    :cond_6
    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_PINK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0602ca

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 290
    :cond_7
    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_LIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0600c1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 292
    :cond_8
    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_STEEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0602e3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 294
    :cond_9
    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_ORANGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0602c8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 296
    :cond_a
    sget-object v1, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_BROWN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0

    .line 299
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getThemeMode(Landroid/content/Context;)Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;
    .locals 2

    .line 76
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 77
    const-string v0, "selectedTheme"

    const-string v1, "default"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 78
    const-string v0, "light"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object p0, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->eThemeLight:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    return-object p0

    .line 80
    :cond_0
    const-string v0, "dark"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 81
    sget-object p0, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->eThemeDark:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    return-object p0

    .line 83
    :cond_1
    sget-object p0, Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;->eThemeDefault:Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;

    return-object p0
.end method

.method public static isLightTheme(Landroid/content/Context;)Z
    .locals 3

    .line 69
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    const-string v1, "selectedTheme"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static saveTheme(Landroid/content/Context;Lcom/lostpixels/fieldservice/ui/ThemeManager$ThemeMode;)V
    .locals 2

    .line 87
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 88
    sget-object v0, Lcom/lostpixels/fieldservice/ui/ThemeManager$1;->$SwitchMap$com$lostpixels$fieldservice$ui$ThemeManager$ThemeMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "selectedTheme"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    const-string p1, "default"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 93
    :cond_1
    const-string p1, "dark"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 90
    :cond_2
    const-string p1, "light"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDialogTheme(Landroid/app/Activity;)V
    .locals 5

    .line 194
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 195
    const-string v1, "selectedTheme"

    const-string v2, "light"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    const-string v3, "selectedThemeColor"

    sget-object v4, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_BLUE:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 200
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_PURPLE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    const v0, 0x7f1301a4

    .line 202
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_0
    const v0, 0x7f130199

    .line 204
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    .line 205
    :cond_1
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_BLUE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    const v0, 0x7f13018c

    .line 207
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_2
    const v0, 0x7f130190

    .line 209
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    .line 210
    :cond_3
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_RED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    const v0, 0x7f1301a5

    .line 212
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_4
    const v0, 0x7f13019a

    .line 214
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    .line 215
    :cond_5
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_YELLOW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    const v0, 0x7f1301a7

    .line 217
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_6
    const v0, 0x7f13019c

    .line 219
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    .line 220
    :cond_7
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_DARK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_8

    const v0, 0x7f13019d

    .line 222
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_8
    const v0, 0x7f130193

    .line 224
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    .line 225
    :cond_9
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_GREEN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v1, :cond_a

    const v0, 0x7f13019e

    .line 227
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_a
    const v0, 0x7f130194

    .line 229
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    .line 230
    :cond_b
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_GREENER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    const v0, 0x7f13019f

    .line 232
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_c
    const v0, 0x7f130195

    .line 234
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    .line 235
    :cond_d
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_PINK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v1, :cond_e

    const v0, 0x7f1301a3

    .line 237
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_e
    const v0, 0x7f130198

    .line 239
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    .line 240
    :cond_f
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_LIME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v1, :cond_10

    const v0, 0x7f1301a1

    .line 242
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_10
    const v0, 0x7f130196

    .line 244
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    .line 245
    :cond_11
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_ORANGE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    const v0, 0x7f1301a2

    .line 247
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_12
    const v0, 0x7f130197

    .line 249
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    .line 250
    :cond_13
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_STEEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v1, :cond_14

    const v0, 0x7f1301a6

    .line 252
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_14
    const v0, 0x7f13019b

    .line 254
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    .line 255
    :cond_15
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_BROWN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz v1, :cond_16

    const v0, 0x7f13018d

    .line 257
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_16
    const v0, 0x7f130191

    .line 259
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_17
    if-eqz v1, :cond_18

    const v0, 0x7f13018b

    .line 262
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_18
    const v0, 0x7f13018f

    .line 264
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method public static setTheme(Landroid/app/Activity;)Z
    .locals 4

    .line 104
    invoke-static {p0}, Lcom/lostpixels/fieldservice/ui/ThemeManager;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    .line 106
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 107
    const-string v2, "selectedThemeColor"

    sget-object v3, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_DEFAULT:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_PURPLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    const v1, 0x7f1301be

    .line 112
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    :cond_0
    const v1, 0x7f1301b4

    .line 114
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    .line 115
    :cond_1
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_BLUE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    const v1, 0x7f1301a9

    .line 117
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    :cond_2
    const v1, 0x7f1301ac

    .line 119
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    .line 120
    :cond_3
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_RED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    const v1, 0x7f1301bf

    .line 122
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    :cond_4
    const v1, 0x7f1301b5

    .line 124
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    .line 125
    :cond_5
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_YELLOW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    const v1, 0x7f1301c2

    .line 127
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    :cond_6
    const v1, 0x7f1301b7

    .line 129
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    .line 130
    :cond_7
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_GREEN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_8

    const v1, 0x7f1301b9

    .line 132
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    :cond_8
    const v1, 0x7f1301af

    .line 134
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    .line 135
    :cond_9
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_DARK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v0, :cond_a

    const v1, 0x7f1301b8

    .line 137
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    :cond_a
    const v1, 0x7f1301ae

    .line 139
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    .line 140
    :cond_b
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_ORANGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v0, :cond_c

    const v1, 0x7f1301bc

    .line 142
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    :cond_c
    const v1, 0x7f1301b2

    .line 144
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    .line 145
    :cond_d
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_STEEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v0, :cond_e

    const v1, 0x7f1301c1

    .line 147
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    :cond_e
    const v1, 0x7f1301b6

    .line 149
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    .line 150
    :cond_f
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_PINK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v0, :cond_10

    const v1, 0x7f1301bd

    .line 152
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    :cond_10
    const v1, 0x7f1301b3

    .line 154
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    .line 155
    :cond_11
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_GREENER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v0, :cond_12

    const v1, 0x7f1301ba

    .line 157
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    :cond_12
    const v1, 0x7f1301b0

    .line 159
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    .line 160
    :cond_13
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_LIME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v0, :cond_14

    const v1, 0x7f1301bb

    .line 162
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    :cond_14
    const v1, 0x7f1301b1

    .line 164
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    .line 165
    :cond_15
    sget-object v2, Lcom/lostpixels/fieldservice/ui/ThemeManager;->THEME_BROWN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    if-eqz v0, :cond_16

    const v1, 0x7f1301aa

    .line 167
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    :cond_16
    const v1, 0x7f1301ad

    .line 169
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    :cond_17
    if-eqz v0, :cond_18

    const v1, 0x7f1301a8

    .line 172
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0

    :cond_18
    const v1, 0x7f1301ab

    .line 174
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    return v0
.end method
