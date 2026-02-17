.class Lezvcard/util/VCardDateFormat$4$1;
.super Ljava/text/SimpleDateFormat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lezvcard/util/VCardDateFormat$4;->getDateFormat(Ljava/util/TimeZone;)Ljava/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lezvcard/util/VCardDateFormat$4;


# direct methods
.method constructor <init>(Lezvcard/util/VCardDateFormat$4;Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lezvcard/util/VCardDateFormat$4$1;->this$0:Lezvcard/util/VCardDateFormat$4;

    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 150
    const-string v0, "([-\\+]\\d{2}):(\\d{2})$"

    const-string v1, "$1$2"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-super {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
