.class public Lezvcard/io/EmbeddedVCardException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lezvcard/io/EmbeddedVCardException$InjectionCallback;
    }
.end annotation


# instance fields
.field private final callback:Lezvcard/io/EmbeddedVCardException$InjectionCallback;

.field private final vcard:Lezvcard/VCard;


# direct methods
.method public constructor <init>(Lezvcard/VCard;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lezvcard/io/EmbeddedVCardException;->callback:Lezvcard/io/EmbeddedVCardException$InjectionCallback;

    .line 61
    iput-object p1, p0, Lezvcard/io/EmbeddedVCardException;->vcard:Lezvcard/VCard;

    return-void
.end method

.method public constructor <init>(Lezvcard/io/EmbeddedVCardException$InjectionCallback;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 51
    iput-object p1, p0, Lezvcard/io/EmbeddedVCardException;->callback:Lezvcard/io/EmbeddedVCardException$InjectionCallback;

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lezvcard/io/EmbeddedVCardException;->vcard:Lezvcard/VCard;

    return-void
.end method


# virtual methods
.method public getProperty()Lezvcard/property/VCardProperty;
    .locals 1

    .line 90
    iget-object v0, p0, Lezvcard/io/EmbeddedVCardException;->callback:Lezvcard/io/EmbeddedVCardException$InjectionCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_0
    invoke-interface {v0}, Lezvcard/io/EmbeddedVCardException$InjectionCallback;->getProperty()Lezvcard/property/VCardProperty;

    move-result-object v0

    return-object v0
.end method

.method public getVCard()Lezvcard/VCard;
    .locals 1

    .line 69
    iget-object v0, p0, Lezvcard/io/EmbeddedVCardException;->vcard:Lezvcard/VCard;

    return-object v0
.end method

.method public injectVCard(Lezvcard/VCard;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lezvcard/io/EmbeddedVCardException;->callback:Lezvcard/io/EmbeddedVCardException$InjectionCallback;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-interface {v0, p1}, Lezvcard/io/EmbeddedVCardException$InjectionCallback;->injectVCard(Lezvcard/VCard;)V

    return-void
.end method
