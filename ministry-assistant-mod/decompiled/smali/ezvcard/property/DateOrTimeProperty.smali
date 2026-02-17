.class public abstract Lezvcard/property/DateOrTimeProperty;
.super Lezvcard/property/VCardProperty;
.source "SourceFile"


# instance fields
.field private date:Ljava/util/Date;

.field private dateHasTime:Z

.field private partialDate:Lezvcard/util/PartialDate;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lezvcard/util/PartialDate;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lezvcard/property/DateOrTimeProperty;->setPartialDate(Lezvcard/util/PartialDate;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 83
    invoke-virtual {p0, p1}, Lezvcard/property/DateOrTimeProperty;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Z)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lezvcard/property/VCardProperty;-><init>()V

    .line 67
    invoke-virtual {p0, p1, p2}, Lezvcard/property/DateOrTimeProperty;->setDate(Ljava/util/Date;Z)V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 91
    iget-object v0, p0, Lezvcard/property/DateOrTimeProperty;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getPartialDate()Lezvcard/util/PartialDate;
    .locals 1

    .line 115
    iget-object v0, p0, Lezvcard/property/DateOrTimeProperty;->partialDate:Lezvcard/util/PartialDate;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lezvcard/property/DateOrTimeProperty;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hasTime()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lezvcard/property/DateOrTimeProperty;->dateHasTime:Z

    return v0
.end method

.method public setDate(Ljava/util/Date;Z)V
    .locals 0

    .line 101
    iput-object p1, p0, Lezvcard/property/DateOrTimeProperty;->date:Ljava/util/Date;

    if-nez p1, :cond_0

    const/4 p2, 0x0

    .line 102
    :cond_0
    iput-boolean p2, p0, Lezvcard/property/DateOrTimeProperty;->dateHasTime:Z

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lezvcard/property/DateOrTimeProperty;->text:Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lezvcard/property/DateOrTimeProperty;->partialDate:Lezvcard/util/PartialDate;

    return-void
.end method

.method public setPartialDate(Lezvcard/util/PartialDate;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lezvcard/property/DateOrTimeProperty;->partialDate:Lezvcard/util/PartialDate;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p1}, Lezvcard/util/PartialDate;->hasTimeComponent()Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lezvcard/property/DateOrTimeProperty;->dateHasTime:Z

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lezvcard/property/DateOrTimeProperty;->text:Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lezvcard/property/DateOrTimeProperty;->date:Ljava/util/Date;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lezvcard/property/DateOrTimeProperty;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 154
    iput-object p1, p0, Lezvcard/property/DateOrTimeProperty;->date:Ljava/util/Date;

    .line 155
    iput-object p1, p0, Lezvcard/property/DateOrTimeProperty;->partialDate:Lezvcard/util/PartialDate;

    const/4 p1, 0x0

    .line 156
    iput-boolean p1, p0, Lezvcard/property/DateOrTimeProperty;->dateHasTime:Z

    return-void
.end method
