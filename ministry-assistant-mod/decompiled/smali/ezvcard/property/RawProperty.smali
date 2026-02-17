.class public Lezvcard/property/RawProperty;
.super Lezvcard/property/TextProperty;
.source "SourceFile"


# instance fields
.field private dataType:Lezvcard/VCardDataType;

.field private propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lezvcard/property/RawProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Lezvcard/VCardDataType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lezvcard/VCardDataType;)V
    .locals 0

    .line 59
    invoke-direct {p0, p2}, Lezvcard/property/TextProperty;-><init>(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lezvcard/property/RawProperty;->propertyName:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lezvcard/property/RawProperty;->dataType:Lezvcard/VCardDataType;

    return-void
.end method


# virtual methods
.method public getDataType()Lezvcard/VCardDataType;
    .locals 1

    .line 85
    iget-object v0, p0, Lezvcard/property/RawProperty;->dataType:Lezvcard/VCardDataType;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lezvcard/property/RawProperty;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method public setDataType(Lezvcard/VCardDataType;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lezvcard/property/RawProperty;->dataType:Lezvcard/VCardDataType;

    return-void
.end method
