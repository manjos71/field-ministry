.class public Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;
    }
.end annotation


# static fields
.field static instance:Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;


# instance fields
.field private final context:Landroid/content/Context;

.field private mlstDeletedItems:Ljava/util/ArrayList;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpersonExistInTerritory(Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->personExistInTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->context:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->context:Landroid/content/Context;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    .line 61
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->load()Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;
    .locals 1

    .line 71
    sget-object v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->instance:Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    invoke-direct {v0, p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->instance:Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    .line 75
    :cond_0
    sget-object p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->instance:Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    return-object p0
.end method

.method private getLatestFileVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private load()Z
    .locals 8

    .line 292
    const-string v0, "DeletionManager.load"

    const-string v1, "Deletion.bin"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 296
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    new-instance v4, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v4}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    .line 299
    iget-object v5, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 301
    :try_start_1
    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v3

    .line 302
    invoke-virtual {p0, v3}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->load(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v2

    .line 303
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->removeOldValues()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move-object v0, v3

    move-object v3, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_6

    :catch_0
    move-exception v4

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_6

    :catch_1
    move-exception v4

    move-object v1, v3

    goto :goto_2

    :cond_1
    move-object v0, v3

    :goto_0
    if-eqz v3, :cond_2

    .line 317
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    nop

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 322
    :try_start_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_5

    .line 309
    :goto_2
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception cought: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_3
    const-string v6, ""

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 309
    invoke-static {v0, v5}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {v4}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_4

    .line 317
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    nop

    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 322
    :try_start_6
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_5
    :goto_5
    return v2

    :goto_6
    if-eqz v3, :cond_6

    .line 317
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    nop

    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    .line 322
    :try_start_8
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 325
    :catch_6
    :cond_7
    throw v0
.end method

.method private merge(Lio/realm/Realm;Ljava/util/ArrayList;)Z
    .locals 1

    .line 409
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$1;-><init>(Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;Lio/realm/Realm;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/lostpixels/fieldservice/realm/RealmHelper;->write(Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private personExistInTerritory(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)Lcom/lostpixels/fieldservice/internal/ministry/Visit;
    .locals 2

    .line 553
    const-class v0, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "houseHolder"

    invoke-virtual {p1, v0, p2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Long;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->findFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lostpixels/fieldservice/internal/ministry/Visit;

    return-object p1
.end method

.method private removeOldValues()V
    .locals 6

    .line 567
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, -0x2

    .line 568
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 569
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 571
    iget-object v2, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 572
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    iget-wide v3, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->lDate:J

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    .line 573
    iget-object v3, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private save()Z
    .locals 4

    const/4 v0, 0x0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->context:Landroid/content/Context;

    const-string v2, "Deletion.bin"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 226
    new-instance v2, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    .line 227
    sget-object v3, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v2

    .line 228
    invoke-virtual {p0, v2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save(Lcom/fasterxml/jackson/core/JsonGenerator;)Z

    move-result v0

    .line 229
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 230
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 231
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception cought: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string v3, "DeletionManager.save"

    invoke-static {v3, v2}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v2, "Stacktrace"

    invoke-static {v1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 579
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save()Z

    return-void
.end method

.method public deleteItem(Lcom/lostpixels/fieldservice/internal/ministry/Address;)V
    .locals 3

    .line 123
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;-><init>()V

    .line 124
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->lDate:J

    const/4 p1, 0x3

    .line 126
    iput p1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    .line 127
    iget-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save()Z

    return-void
.end method

.method public deleteItem(Lcom/lostpixels/fieldservice/internal/ministry/Street;)V
    .locals 3

    .line 132
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;-><init>()V

    .line 133
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->lDate:J

    const/4 p1, 0x2

    .line 135
    iput p1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    .line 136
    iget-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save()Z

    return-void
.end method

.method public deleteItem(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)V
    .locals 3

    .line 96
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;-><init>()V

    .line 97
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->lDate:J

    const/4 p1, 0x1

    .line 99
    iput p1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    .line 100
    iget-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save()Z

    return-void
.end method

.method public deleteItem(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
    .locals 3

    .line 87
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;-><init>()V

    .line 88
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->lDate:J

    const/4 p1, 0x4

    .line 90
    iput p1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    .line 91
    iget-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save()Z

    return-void
.end method

.method public deletePersonItem(J)V
    .locals 1

    .line 114
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;-><init>()V

    .line 115
    iput-wide p1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->lDate:J

    const/4 p1, 0x5

    .line 117
    iput p1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    .line 118
    iget-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save()Z

    return-void
.end method

.method public deleteString(Ljava/lang/String;I)V
    .locals 3

    .line 141
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;-><init>()V

    const-wide/16 v1, -0x1

    .line 142
    iput-wide v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->lDate:J

    .line 144
    iput p2, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    .line 145
    iput-object p1, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->sString:Ljava/lang/String;

    .line 146
    iget-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save()Z

    return-void
.end method

.method public load(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 8

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 336
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 341
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 343
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_6

    .line 344
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 349
    const-string v1, "FileVersion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 350
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v0

    .line 352
    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getLatestFileVersion()I

    move-result v1

    if-gt v0, v1, :cond_2

    goto :goto_1

    .line 353
    :cond_2
    new-instance p1, Lcom/lostpixels/fieldservice/utils/FileVersionException;

    const-string v0, "Newer file version"

    invoke-direct {p1, v0}, Lcom/lostpixels/fieldservice/utils/FileVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_3
    const-string v1, "Del"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 362
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v0

    .line 363
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 365
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v2

    .line 366
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 369
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v4

    const-wide/16 v5, -0x1

    cmp-long v7, v0, v5

    if-eqz v7, :cond_4

    cmp-long v7, v2, v5

    if-eqz v7, :cond_4

    if-eqz v4, :cond_4

    .line 374
    new-instance v5, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    invoke-direct {v5}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;-><init>()V

    .line 375
    iput-wide v0, v5, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    .line 376
    iput-wide v2, v5, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->lDate:J

    .line 377
    iput v4, v5, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    .line 378
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 382
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Fieldname is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    const/4 p1, 0x1

    return p1

    .line 388
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception cought: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    const-string v1, ""

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    const-string v1, "DeletionManager.load"

    invoke-static {v1, v0}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public merge(Lio/realm/Realm;)Z
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->merge(Lio/realm/Realm;Ljava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method public merge(Lio/realm/Realm;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 1

    .line 397
    new-instance v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;

    invoke-direct {v0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;-><init>()V

    .line 398
    invoke-virtual {v0, p2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->load(Lcom/fasterxml/jackson/core/JsonParser;)Z

    .line 400
    iget-object p2, v0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->merge(Lio/realm/Realm;Ljava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method public removeFromList(Lcom/lostpixels/fieldservice/internal/ministry/Address;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;
    .locals 9

    .line 165
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    .line 166
    iget v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-wide v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getId()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iget-wide v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->lDate:J

    .line 167
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Address;->getLastEdited()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    .line 168
    iget-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public removeFromList(Lcom/lostpixels/fieldservice/internal/ministry/Person;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;
    .locals 9

    .line 201
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    .line 202
    iget v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    iget-wide v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iget-wide v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->lDate:J

    .line 203
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getLastUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    .line 204
    iget-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public removeFromList(Lcom/lostpixels/fieldservice/internal/ministry/Street;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;
    .locals 9

    .line 177
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    .line 178
    iget v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-wide v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getId()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iget-wide v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->lDate:J

    .line 179
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Street;->getLastEdited()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    .line 180
    iget-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public removeFromList(Lcom/lostpixels/fieldservice/internal/ministry/Territory;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;
    .locals 9

    .line 152
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    .line 153
    iget v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-wide v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getId()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iget-wide v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->lDate:J

    .line 154
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->getLastUpdated()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    .line 155
    iget-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public removeFromList(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;
    .locals 9

    .line 189
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    .line 190
    iget v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getId()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iget-wide v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->lDate:J

    .line 191
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Visit;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    .line 192
    iget-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public removeFromList(Ljava/lang/String;I)Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    .line 214
    iget v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    if-ne v4, p2, :cond_0

    iget-object v4, v3, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->sString:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    iget-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public save(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 244
    :try_start_0
    const-string v1, "Deletion.bin"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 245
    new-instance v1, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;

    invoke-direct {v1}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;-><init>()V

    .line 246
    sget-object v2, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/dataformat/smile/SmileFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/dataformat/smile/SmileGenerator;

    move-result-object v1

    .line 247
    invoke-virtual {p0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->save(Lcom/fasterxml/jackson/core/JsonGenerator;)Z

    move-result v0

    .line 248
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 249
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 250
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception cought: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    const-string v2, "DeletionManager.save"

    invoke-static {v2, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "Stacktrace"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public save(Lcom/fasterxml/jackson/core/JsonGenerator;)Z
    .locals 7

    const/4 v0, 0x0

    .line 263
    :try_start_0
    invoke-static {}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->start()V

    .line 265
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 266
    const-string v1, "FileVersion"

    invoke-direct {p0}, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->getLatestFileVersion()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    .line 268
    const-string v1, "Del"

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager;->mlstDeletedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;

    .line 270
    iget-wide v5, v4, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->iID:J

    invoke-virtual {p1, v5, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    .line 271
    iget-wide v5, v4, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->lDate:J

    invoke-virtual {p1, v5, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    .line 272
    iget v4, v4, Lcom/lostpixels/fieldservice/internal/ministry/DeletionManager$DeletedItem;->eDeleteType:I

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 274
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 276
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 278
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 280
    const-string p1, "Save file"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/utils/PerfToSD;->stop(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 284
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception cought: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    const-string v2, "DeletionManager.save"

    invoke-static {v2, v1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v1, "Stacktrace"

    invoke-static {p1}, Lcom/lostpixels/fieldservice/helpfunctions/HelpFunctions;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lostpixels/fieldservice/utils/LogToSD;->write(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
