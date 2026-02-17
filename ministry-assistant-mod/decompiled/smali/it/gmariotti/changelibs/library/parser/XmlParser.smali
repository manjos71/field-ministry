.class public Lit/gmariotti/changelibs/library/parser/XmlParser;
.super Lit/gmariotti/changelibs/library/parser/BaseParser;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "XmlParser"

.field private static mChangeLogTags:Ljava/util/List;


# instance fields
.field private mChangeLogFileResourceId:I

.field private mChangeLogFileResourceUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lit/gmariotti/changelibs/library/parser/XmlParser$1;

    invoke-direct {v0}, Lit/gmariotti/changelibs/library/parser/XmlParser$1;-><init>()V

    sput-object v0, Lit/gmariotti/changelibs/library/parser/XmlParser;->mChangeLogTags:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lit/gmariotti/changelibs/library/parser/BaseParser;-><init>(Landroid/content/Context;)V

    .line 75
    sget p1, Lit/gmariotti/changelibs/library/Constants;->mChangeLogFileResourceId:I

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lit/gmariotti/changelibs/library/parser/XmlParser;->mChangeLogFileResourceUrl:Ljava/lang/String;

    .line 126
    iput p2, p0, Lit/gmariotti/changelibs/library/parser/XmlParser;->mChangeLogFileResourceId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lit/gmariotti/changelibs/library/parser/BaseParser;-><init>(Landroid/content/Context;)V

    .line 75
    sget p1, Lit/gmariotti/changelibs/library/Constants;->mChangeLogFileResourceId:I

    iput p1, p0, Lit/gmariotti/changelibs/library/parser/XmlParser;->mChangeLogFileResourceId:I

    .line 137
    iput-object p2, p0, Lit/gmariotti/changelibs/library/parser/XmlParser;->mChangeLogFileResourceUrl:Ljava/lang/String;

    return-void
.end method

.method private readChangeLogRowNode(Lorg/xmlpull/v1/XmlPullParser;Lit/gmariotti/changelibs/library/internal/ChangeLog;Ljava/lang/String;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;

    invoke-direct {v1}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;-><init>()V

    .line 301
    invoke-virtual {v1, p3}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->setVersionName(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1, p4}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->setVersionCode(I)V

    .line 305
    const-string p3, "changeTextTitle"

    const/4 p4, 0x0

    invoke-interface {p1, p4, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 307
    invoke-virtual {v1, p3}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->setChangeTextTitle(Ljava/lang/String;)V

    .line 310
    :cond_1
    const-string p3, "bulletedList"

    invoke-interface {p1, p4, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_3

    .line 312
    const-string v3, "true"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 313
    invoke-virtual {v1, v2}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->setBulletedList(Z)V

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {v1, p4}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->setBulletedList(Z)V

    goto :goto_0

    .line 318
    :cond_3
    iget-boolean p3, p0, Lit/gmariotti/changelibs/library/parser/BaseParser;->bulletedList:Z

    invoke-virtual {v1, p3}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->setBulletedList(Z)V

    .line 322
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    const/4 v3, 0x4

    if-ne p3, v3, :cond_7

    .line 323
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 326
    invoke-virtual {v1, p3}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->parseChangeText(Ljava/lang/String;)V

    .line 327
    const-string p3, "changelogbug"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p4, 0x1

    goto :goto_1

    :cond_4
    const-string p3, "changelogimprovement"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p4, 0x2

    :cond_5
    :goto_1
    invoke-virtual {v1, p4}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->setType(I)V

    .line 328
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_2

    .line 325
    :cond_6
    new-instance p1, Lit/gmariotti/changelibs/library/internal/ChangeLogException;

    const-string p2, "ChangeLogText required in changeLogText node"

    invoke-direct {p1, p2}, Lit/gmariotti/changelibs/library/internal/ChangeLogException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 330
    :cond_7
    :goto_2
    invoke-virtual {p2, v1}, Lit/gmariotti/changelibs/library/internal/ChangeLog;->addRow(Lit/gmariotti/changelibs/library/internal/ChangeLogRow;)V

    return-void
.end method


# virtual methods
.method public readChangeLogFile()Lit/gmariotti/changelibs/library/internal/ChangeLog;
    .locals 5

    .line 153
    const-string v0, "Changelog.xml not found"

    .line 158
    :try_start_0
    iget-object v1, p0, Lit/gmariotti/changelibs/library/parser/XmlParser;->mChangeLogFileResourceUrl:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lit/gmariotti/changelibs/library/parser/BaseParser;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lit/gmariotti/changelibs/library/Util;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lit/gmariotti/changelibs/library/parser/XmlParser;->mChangeLogFileResourceUrl:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v1, v2

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lit/gmariotti/changelibs/library/parser/BaseParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lit/gmariotti/changelibs/library/parser/XmlParser;->mChangeLogFileResourceId:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 169
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 170
    const-string v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 171
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 172
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 175
    new-instance v2, Lit/gmariotti/changelibs/library/internal/ChangeLog;

    invoke-direct {v2}, Lit/gmariotti/changelibs/library/internal/ChangeLog;-><init>()V

    .line 177
    invoke-virtual {p0, v0, v2}, Lit/gmariotti/changelibs/library/parser/XmlParser;->readChangeLogNode(Lorg/xmlpull/v1/XmlPullParser;Lit/gmariotti/changelibs/library/internal/ChangeLog;)V

    .line 180
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v2

    .line 182
    :cond_2
    sget-object v1, Lit/gmariotti/changelibs/library/parser/XmlParser;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v1, Lit/gmariotti/changelibs/library/internal/ChangeLogException;

    invoke-direct {v1, v0}, Lit/gmariotti/changelibs/library/internal/ChangeLogException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_1
    sget-object v1, Lit/gmariotti/changelibs/library/parser/XmlParser;->TAG:Ljava/lang/String;

    const-string v2, "Error i/o with changelog.xml"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    throw v0

    .line 186
    :goto_2
    sget-object v1, Lit/gmariotti/changelibs/library/parser/XmlParser;->TAG:Ljava/lang/String;

    const-string v2, "XmlPullParseException while parsing changelog file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    throw v0
.end method

.method protected readChangeLogNode(Lorg/xmlpull/v1/XmlPullParser;Lit/gmariotti/changelibs/library/internal/ChangeLog;)V
    .locals 3

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 208
    :cond_0
    const-string v0, "changelog"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "bulletedList"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 213
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 217
    invoke-virtual {p2, v0}, Lit/gmariotti/changelibs/library/internal/ChangeLog;->setBulletedList(Z)V

    .line 218
    iput-boolean v0, p0, Lit/gmariotti/changelibs/library/parser/BaseParser;->bulletedList:Z

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 214
    invoke-virtual {p2, v0}, Lit/gmariotti/changelibs/library/internal/ChangeLog;->setBulletedList(Z)V

    .line 215
    iput-boolean v0, p0, Lit/gmariotti/changelibs/library/parser/BaseParser;->bulletedList:Z

    .line 222
    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    .line 223
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_4

    goto :goto_1

    .line 227
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v2, "changelogversion"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    invoke-virtual {p0, p1, p2}, Lit/gmariotti/changelibs/library/parser/XmlParser;->readChangeLogVersionNode(Lorg/xmlpull/v1/XmlPullParser;Lit/gmariotti/changelibs/library/internal/ChangeLog;)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method protected readChangeLogVersionNode(Lorg/xmlpull/v1/XmlPullParser;Lit/gmariotti/changelibs/library/internal/ChangeLog;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_2

    .line 247
    :cond_0
    const-string v0, "changelogversion"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "versionName"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    const-string v3, "versionCode"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 255
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    sget-object v3, Lit/gmariotti/changelibs/library/parser/XmlParser;->TAG:Ljava/lang/String;

    const-string v4, "Error while parsing versionCode.It must be a numeric value. Check you file."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    .line 260
    :goto_0
    const-string v4, "changeDate"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_5

    .line 264
    new-instance v4, Lit/gmariotti/changelibs/library/internal/ChangeLogRowHeader;

    invoke-direct {v4}, Lit/gmariotti/changelibs/library/internal/ChangeLogRowHeader;-><init>()V

    .line 265
    invoke-virtual {v4, v0}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->setVersionName(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v4, v2}, Lit/gmariotti/changelibs/library/internal/ChangeLogRow;->setChangeDate(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2, v4}, Lit/gmariotti/changelibs/library/internal/ChangeLog;->addRow(Lit/gmariotti/changelibs/library/internal/ChangeLogRow;)V

    .line 273
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    .line 274
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-eq v2, v1, :cond_3

    goto :goto_1

    .line 277
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 280
    sget-object v4, Lit/gmariotti/changelibs/library/parser/XmlParser;->mChangeLogTags:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    invoke-direct {p0, p1, p2, v0, v3}, Lit/gmariotti/changelibs/library/parser/XmlParser;->readChangeLogRowNode(Lorg/xmlpull/v1/XmlPullParser;Lit/gmariotti/changelibs/library/internal/ChangeLog;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    .line 262
    :cond_5
    new-instance p1, Lit/gmariotti/changelibs/library/internal/ChangeLogException;

    const-string p2, "VersionName required in changeLogVersion node"

    invoke-direct {p1, p2}, Lit/gmariotti/changelibs/library/internal/ChangeLogException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
