.class public Lcom/lostpixels/fieldservice/ui/TimeInputFilter;
.super Landroid/text/method/NumberKeyListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/ui/TimeInputFilter$OnErrorListener;
    }
.end annotation


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Lcom/lostpixels/fieldservice/ui/TimeInputFilter;


# instance fields
.field private listener:Lcom/lostpixels/fieldservice/ui/TimeInputFilter$OnErrorListener;

.field mbHhmm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    .line 23
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;->CHARACTERS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;->listener:Lcom/lostpixels/fieldservice/ui/TimeInputFilter$OnErrorListener;

    return-void
.end method

.method public static getInstance(ZLcom/lostpixels/fieldservice/ui/TimeInputFilter$OnErrorListener;)Lcom/lostpixels/fieldservice/ui/TimeInputFilter;
    .locals 1

    .line 34
    sget-object v0, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;->sInstance:Lcom/lostpixels/fieldservice/ui/TimeInputFilter;

    if-eqz v0, :cond_0

    .line 35
    iput-boolean p0, v0, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;->mbHhmm:Z

    .line 36
    iput-object p1, v0, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;->listener:Lcom/lostpixels/fieldservice/ui/TimeInputFilter$OnErrorListener;

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;-><init>()V

    sput-object v0, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;->sInstance:Lcom/lostpixels/fieldservice/ui/TimeInputFilter;

    .line 41
    iput-boolean p0, v0, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;->mbHhmm:Z

    .line 42
    iput-object p1, v0, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;->listener:Lcom/lostpixels/fieldservice/ui/TimeInputFilter$OnErrorListener;

    return-object v0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    if-le p3, p2, :cond_4

    .line 56
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p4, v1, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p4, p6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 60
    iget-object p3, p0, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;->listener:Lcom/lostpixels/fieldservice/ui/TimeInputFilter$OnErrorListener;

    if-eqz p3, :cond_0

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_0

    .line 61
    iget-object p3, p0, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;->listener:Lcom/lostpixels/fieldservice/ui/TimeInputFilter$OnErrorListener;

    invoke-interface {p3}, Lcom/lostpixels/fieldservice/ui/TimeInputFilter$OnErrorListener;->onNegativeButton()V

    .line 62
    :cond_0
    iget-boolean p3, p0, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;->mbHhmm:Z

    const-string p4, ""

    if-eqz p3, :cond_2

    .line 63
    const-string p3, "[0123456789]*[:]?[0-5]?[0-9]?"

    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 65
    instance-of p1, p1, Landroid/text/Spanned;

    if-eqz p1, :cond_1

    .line 66
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_1
    return-object p4

    .line 73
    :cond_2
    const-string p3, "[0123456789]*[\\.]?[0-9]?[0-9]?"

    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 75
    instance-of p1, p1, Landroid/text/Spanned;

    if-eqz p1, :cond_3

    .line 76
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_3
    return-object p4

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .line 49
    sget-object v0, Lcom/lostpixels/fieldservice/ui/TimeInputFilter;->CHARACTERS:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    const/16 v0, 0x2002

    return v0
.end method
