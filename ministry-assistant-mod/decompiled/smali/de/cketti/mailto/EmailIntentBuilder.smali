.class public final Lde/cketti/mailto/EmailIntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bcc:Ljava/util/Set;

.field private body:Ljava/lang/String;

.field private final cc:Ljava/util/Set;

.field private final context:Landroid/content/Context;

.field private subject:Ljava/lang/String;

.field private final to:Ljava/util/Set;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lde/cketti/mailto/EmailIntentBuilder;->to:Ljava/util/Set;

    .line 60
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lde/cketti/mailto/EmailIntentBuilder;->cc:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lde/cketti/mailto/EmailIntentBuilder;->bcc:Ljava/util/Set;

    .line 67
    invoke-static {p1}, Lde/cketti/mailto/EmailIntentBuilder;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lde/cketti/mailto/EmailIntentBuilder;->context:Landroid/content/Context;

    return-void
.end method

.method private addQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    if-nez p3, :cond_0

    return p4

    :cond_0
    if-eqz p4, :cond_1

    const/16 p4, 0x26

    goto :goto_0

    :cond_1
    const/16 p4, 0x3f

    .line 271
    :goto_0
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method private addRecipientQueryParameters(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;Z)Z
    .locals 1

    .line 278
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return p4

    :cond_0
    if-eqz p4, :cond_1

    const/16 p4, 0x26

    goto :goto_0

    :cond_1
    const/16 p4, 0x3f

    .line 282
    :goto_0
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    invoke-direct {p0, p1, p3}, Lde/cketti/mailto/EmailIntentBuilder;->addRecipients(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    const/4 p1, 0x1

    return p1
.end method

.method private addRecipients(Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 1

    .line 289
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    invoke-static {v0}, Lde/cketti/mailto/EmailIntentBuilder;->encodeRecipient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    .line 295
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private checkEmail(Ljava/lang/String;)V
    .locals 1

    .line 302
    invoke-static {p1}, Lde/cketti/mailto/EmailIntentBuilder;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 305
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument is not a valid email address (according to Patterns.EMAIL_ADDRESS)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkNoLineBreaks(Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0xd

    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0xa

    .line 312
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    return-void

    .line 315
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument must not contain line breaks"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    return-object p0

    .line 322
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructMailtoUri()Landroid/net/Uri;
    .locals 4

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 254
    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v1, p0, Lde/cketti/mailto/EmailIntentBuilder;->to:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lde/cketti/mailto/EmailIntentBuilder;->addRecipients(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 258
    iget-object v1, p0, Lde/cketti/mailto/EmailIntentBuilder;->cc:Ljava/util/Set;

    const/4 v2, 0x0

    const-string v3, "cc"

    invoke-direct {p0, v0, v3, v1, v2}, Lde/cketti/mailto/EmailIntentBuilder;->addRecipientQueryParameters(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;Z)Z

    move-result v1

    .line 259
    const-string v2, "bcc"

    iget-object v3, p0, Lde/cketti/mailto/EmailIntentBuilder;->bcc:Ljava/util/Set;

    invoke-direct {p0, v0, v2, v3, v1}, Lde/cketti/mailto/EmailIntentBuilder;->addRecipientQueryParameters(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Set;Z)Z

    move-result v1

    .line 260
    const-string v2, "subject"

    iget-object v3, p0, Lde/cketti/mailto/EmailIntentBuilder;->subject:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lde/cketti/mailto/EmailIntentBuilder;->addQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 261
    const-string v2, "body"

    iget-object v3, p0, Lde/cketti/mailto/EmailIntentBuilder;->body:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3, v1}, Lde/cketti/mailto/EmailIntentBuilder;->addQueryParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static encodeRecipient(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    .line 330
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 331
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 332
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static fixLineBreaks(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 338
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0xd

    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static from(Landroid/content/Context;)Lde/cketti/mailto/EmailIntentBuilder;
    .locals 1

    .line 80
    new-instance v0, Lde/cketti/mailto/EmailIntentBuilder;

    invoke-direct {v0, p0}, Lde/cketti/mailto/EmailIntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public body(Ljava/lang/String;)Lde/cketti/mailto/EmailIntentBuilder;
    .locals 0

    .line 211
    invoke-static {p1}, Lde/cketti/mailto/EmailIntentBuilder;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {p1}, Lde/cketti/mailto/EmailIntentBuilder;->fixLineBreaks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/cketti/mailto/EmailIntentBuilder;->body:Ljava/lang/String;

    return-object p0
.end method

.method public build()Landroid/content/Intent;
    .locals 3

    .line 247
    invoke-direct {p0}, Lde/cketti/mailto/EmailIntentBuilder;->constructMailtoUri()Landroid/net/Uri;

    move-result-object v0

    .line 248
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method public subject(Ljava/lang/String;)Lde/cketti/mailto/EmailIntentBuilder;
    .locals 0

    .line 195
    invoke-static {p1}, Lde/cketti/mailto/EmailIntentBuilder;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-direct {p0, p1}, Lde/cketti/mailto/EmailIntentBuilder;->checkNoLineBreaks(Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lde/cketti/mailto/EmailIntentBuilder;->subject:Ljava/lang/String;

    return-object p0
.end method

.method public to(Ljava/lang/String;)Lde/cketti/mailto/EmailIntentBuilder;
    .locals 1

    .line 93
    invoke-direct {p0, p1}, Lde/cketti/mailto/EmailIntentBuilder;->checkEmail(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lde/cketti/mailto/EmailIntentBuilder;->to:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
