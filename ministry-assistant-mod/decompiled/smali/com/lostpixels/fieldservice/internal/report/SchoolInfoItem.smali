.class public Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;
.super Lio/realm/RealmObject;
.source "SourceFile"

# interfaces
.implements Lio/realm/com_lostpixels_fieldservice_internal_report_SchoolInfoItemRealmProxyInterface;


# instance fields
.field public mbCanHaveMoreThanAmmount:Z

.field public miHours:I

.field public msName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$msName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$miHours(I)V

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$mbCanHaveMoreThanAmmount(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$msName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$miHours(I)V

    .line 32
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$mbCanHaveMoreThanAmmount()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$mbCanHaveMoreThanAmmount(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$msName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$miHours(I)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$mbCanHaveMoreThanAmmount(Z)V

    return-void
.end method


# virtual methods
.method public loadFromDataStream(Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;)V
    .locals 2

    .line 44
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$miHours(I)V

    .line 45
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/utils/ObjectDataInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$msName(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$mbCanHaveMoreThanAmmount(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 48
    const-string v0, "MonthReport.loadFromDataStream 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    throw p1
.end method

.method public loadFromFileRaw(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 71
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_3

    .line 72
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 75
    const-string v1, "H"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$miHours(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 77
    :cond_0
    const-string v1, "N"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$msName(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    const-string v1, "B"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmSet$mbCanHaveMoreThanAmmount(Z)V

    goto :goto_0

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    .line 87
    :goto_1
    const-string v0, "SchoolInfoItem.loadFromFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    throw p1
.end method

.method public realmGet$mbCanHaveMoreThanAmmount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->mbCanHaveMoreThanAmmount:Z

    return v0
.end method

.method public realmGet$miHours()I
    .locals 1

    iget v0, p0, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->miHours:I

    return v0
.end method

.method public realmGet$msName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->msName:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$mbCanHaveMoreThanAmmount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->mbCanHaveMoreThanAmmount:Z

    return-void
.end method

.method public realmSet$miHours(I)V
    .locals 0

    iput p1, p0, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->miHours:I

    return-void
.end method

.method public realmSet$msName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->msName:Ljava/lang/String;

    return-void
.end method

.method public saveToFileRaw(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2

    .line 55
    :try_start_0
    const-string v0, "S"

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectFieldStart(Ljava/lang/String;)V

    .line 56
    const-string v0, "H"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$miHours()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 57
    const-string v0, "N"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$msName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "B"

    invoke-virtual {p0}, Lcom/lostpixels/fieldservice/internal/report/SchoolInfoItem;->realmGet$mbCanHaveMoreThanAmmount()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 61
    const-string v0, "SchoolInfoItem.saveToFileRaw 1"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    throw p1
.end method
