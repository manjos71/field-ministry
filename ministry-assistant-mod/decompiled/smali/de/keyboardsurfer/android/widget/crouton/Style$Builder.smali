.class public Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/keyboardsurfer/android/widget/crouton/Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private backgroundColorResourceId:I

.field private backgroundColorValue:I

.field private backgroundDrawableResourceId:I

.field private configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

.field private fontName:Ljava/lang/String;

.field private fontNameResId:I

.field private gravity:I

.field private heightDimensionResId:I

.field private heightInPixels:I

.field private imageDrawable:Landroid/graphics/drawable/Drawable;

.field private imageResId:I

.field private imageScaleType:Landroid/widget/ImageView$ScaleType;

.field private isTileEnabled:Z

.field private paddingDimensionResId:I

.field private paddingInPixels:I

.field private textAppearanceResId:I

.field private textColorResourceId:I

.field private textColorValue:I

.field private textShadowColorResId:I

.field private textShadowDx:F

.field private textShadowDy:F

.field private textShadowRadius:F

.field private textSize:I

.field private widthDimensionResId:I

.field private widthInPixels:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    sget-object v0, Lde/keyboardsurfer/android/widget/crouton/Configuration;->DEFAULT:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    iput-object v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    const/16 v0, 0xa

    .line 214
    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->paddingInPixels:I

    const v0, 0x1060012

    .line 215
    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundColorResourceId:I

    const/4 v0, 0x0

    .line 216
    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundDrawableResourceId:I

    const/4 v1, -0x1

    .line 217
    iput v1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundColorValue:I

    .line 218
    iput-boolean v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->isTileEnabled:Z

    const v2, 0x106000b

    .line 219
    iput v2, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textColorResourceId:I

    .line 220
    iput v1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textColorValue:I

    const/4 v2, -0x2

    .line 221
    iput v2, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->heightInPixels:I

    .line 222
    iput v1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->widthInPixels:I

    const/16 v1, 0x11

    .line 223
    iput v1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->gravity:I

    const/4 v1, 0x0

    .line 224
    iput-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageDrawable:Landroid/graphics/drawable/Drawable;

    .line 225
    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageResId:I

    .line 226
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v2, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 227
    iput-object v1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->fontName:Ljava/lang/String;

    .line 228
    iput v0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->fontNameResId:I

    return-void
.end method

.method static synthetic access$000(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)Lde/keyboardsurfer/android/widget/crouton/Configuration;
    .locals 0

    .line 184
    iget-object p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->configuration:Lde/keyboardsurfer/android/widget/crouton/Configuration;

    return-object p0
.end method

.method static synthetic access$100(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundColorResourceId:I

    return p0
.end method

.method static synthetic access$1000(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->gravity:I

    return p0
.end method

.method static synthetic access$1100(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 184
    iget-object p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1200(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textSize:I

    return p0
.end method

.method static synthetic access$1300(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowColorResId:I

    return p0
.end method

.method static synthetic access$1400(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)F
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowRadius:F

    return p0
.end method

.method static synthetic access$1500(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)F
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowDx:F

    return p0
.end method

.method static synthetic access$1600(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)F
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textShadowDy:F

    return p0
.end method

.method static synthetic access$1700(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textAppearanceResId:I

    return p0
.end method

.method static synthetic access$1800(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageResId:I

    return p0
.end method

.method static synthetic access$1900(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 184
    iget-object p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->imageScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method static synthetic access$200(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundDrawableResourceId:I

    return p0
.end method

.method static synthetic access$2000(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->paddingInPixels:I

    return p0
.end method

.method static synthetic access$2100(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->paddingDimensionResId:I

    return p0
.end method

.method static synthetic access$2200(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundColorValue:I

    return p0
.end method

.method static synthetic access$2300(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)Ljava/lang/String;
    .locals 0

    .line 184
    iget-object p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->fontName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->fontNameResId:I

    return p0
.end method

.method static synthetic access$300(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->isTileEnabled:Z

    return p0
.end method

.method static synthetic access$400(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textColorResourceId:I

    return p0
.end method

.method static synthetic access$500(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->textColorValue:I

    return p0
.end method

.method static synthetic access$600(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->heightInPixels:I

    return p0
.end method

.method static synthetic access$700(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->heightDimensionResId:I

    return p0
.end method

.method static synthetic access$800(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->widthInPixels:I

    return p0
.end method

.method static synthetic access$900(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->widthDimensionResId:I

    return p0
.end method


# virtual methods
.method public build()Lde/keyboardsurfer/android/widget/crouton/Style;
    .locals 2

    .line 530
    new-instance v0, Lde/keyboardsurfer/android/widget/crouton/Style;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lde/keyboardsurfer/android/widget/crouton/Style;-><init>(Lde/keyboardsurfer/android/widget/crouton/Style$Builder;Lde/keyboardsurfer/android/widget/crouton/Style$1;)V

    return-object v0
.end method

.method public setBackgroundColorValue(I)Lde/keyboardsurfer/android/widget/crouton/Style$Builder;
    .locals 0

    .line 300
    iput p1, p0, Lde/keyboardsurfer/android/widget/crouton/Style$Builder;->backgroundColorValue:I

    return-object p0
.end method
