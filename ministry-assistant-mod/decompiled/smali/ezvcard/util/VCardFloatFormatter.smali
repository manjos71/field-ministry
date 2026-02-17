.class public Lezvcard/util/VCardFloatFormatter;
.super Ljava/text/DecimalFormat;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/text/DecimalFormat;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 56
    :cond_0
    new-instance p1, Ljava/text/DecimalFormatSymbols;

    invoke-direct {p1}, Ljava/text/DecimalFormatSymbols;-><init>()V

    const/16 v0, 0x2e

    .line 57
    invoke-virtual {p1, v0}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    const/16 v0, 0x2d

    .line 58
    invoke-virtual {p1, v0}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 59
    invoke-virtual {p0, p1}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    return-void
.end method
