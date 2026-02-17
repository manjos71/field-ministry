.class public Lezvcard/io/text/InvalidVersionException;
.super Lezvcard/io/text/VCardParseException;
.source "SourceFile"


# instance fields
.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p2}, Lezvcard/io/text/VCardParseException;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lezvcard/io/text/InvalidVersionException;->version:Ljava/lang/String;

    return-void
.end method
