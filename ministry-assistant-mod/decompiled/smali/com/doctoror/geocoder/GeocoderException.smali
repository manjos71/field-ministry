.class public Lcom/doctoror/geocoder/GeocoderException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private mErrorMessage:Ljava/lang/String;

.field private mStatus:Lcom/doctoror/geocoder/Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static forQueryOverLimit()Lcom/doctoror/geocoder/GeocoderException;
    .locals 1

    .line 45
    sget-object v0, Lcom/doctoror/geocoder/Status;->OVER_QUERY_LIMIT:Lcom/doctoror/geocoder/Status;

    invoke-static {v0}, Lcom/doctoror/geocoder/GeocoderException;->forStatus(Lcom/doctoror/geocoder/Status;)Lcom/doctoror/geocoder/GeocoderException;

    move-result-object v0

    return-object v0
.end method

.method public static forStatus(Lcom/doctoror/geocoder/Status;)Lcom/doctoror/geocoder/GeocoderException;
    .locals 1

    .line 38
    new-instance v0, Lcom/doctoror/geocoder/GeocoderException;

    invoke-direct {v0}, Lcom/doctoror/geocoder/GeocoderException;-><init>()V

    .line 39
    invoke-virtual {v0, p0}, Lcom/doctoror/geocoder/GeocoderException;->setStatus(Lcom/doctoror/geocoder/Status;)V

    return-object v0
.end method


# virtual methods
.method public getStatus()Lcom/doctoror/geocoder/Status;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/doctoror/geocoder/GeocoderException;->mStatus:Lcom/doctoror/geocoder/Status;

    return-object v0
.end method

.method setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/doctoror/geocoder/GeocoderException;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method setStatus(Lcom/doctoror/geocoder/Status;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/doctoror/geocoder/GeocoderException;->mStatus:Lcom/doctoror/geocoder/Status;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/doctoror/geocoder/GeocoderException;->mErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/doctoror/geocoder/GeocoderException;->mErrorMessage:Ljava/lang/String;

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/doctoror/geocoder/GeocoderException;->mStatus:Lcom/doctoror/geocoder/Status;

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_2
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
