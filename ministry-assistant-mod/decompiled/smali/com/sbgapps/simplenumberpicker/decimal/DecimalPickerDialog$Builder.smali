.class public Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private initialValue:F

.field private natural:Z

.field private reference:I

.field private relative:Z

.field private theme:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 312
    iput v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->reference:I

    const/4 v1, 0x1

    .line 313
    iput-boolean v1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->relative:Z

    .line 314
    iput-boolean v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->natural:Z

    const/4 v0, 0x0

    .line 315
    iput v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->initialValue:F

    .line 316
    sget v0, Lcom/sbgapps/simplenumberpicker/R$style;->SimpleNumberPickerTheme:I

    iput v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->theme:I

    return-void
.end method


# virtual methods
.method public create()Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;
    .locals 5

    .line 344
    iget v0, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->reference:I

    iget-boolean v1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->relative:Z

    iget-boolean v2, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->natural:Z

    iget v3, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->theme:I

    iget v4, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->initialValue:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;->access$300(IZZIF)Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog;

    move-result-object v0

    return-object v0
.end method

.method public setInitialValue(F)Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;
    .locals 0

    .line 329
    iput p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->initialValue:F

    return-object p0
.end method

.method public setNatural(Z)Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;
    .locals 0

    .line 334
    iput-boolean p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->natural:Z

    return-object p0
.end method

.method public setReference(I)Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;
    .locals 0

    .line 319
    iput p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->reference:I

    return-object p0
.end method

.method public setRelative(Z)Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;
    .locals 0

    .line 324
    iput-boolean p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->relative:Z

    return-object p0
.end method

.method public setTheme(I)Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;
    .locals 0

    .line 339
    iput p1, p0, Lcom/sbgapps/simplenumberpicker/decimal/DecimalPickerDialog$Builder;->theme:I

    return-object p0
.end method
