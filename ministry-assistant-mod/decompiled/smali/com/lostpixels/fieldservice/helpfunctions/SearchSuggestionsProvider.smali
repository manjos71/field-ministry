.class public Lcom/lostpixels/fieldservice/helpfunctions/SearchSuggestionsProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "SourceFile"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lostpixels.fieldservice.helpfunctions.SearchSuggestionsProvider"

.field private static final COLUMNS:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "SearchSuggestionsProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    const-string v4, "suggest_icon_1"

    const-string v5, "suggest_flags"

    const-string v0, "_id"

    const-string v1, "suggest_text_1"

    const-string v2, "suggest_text_2"

    const-string v3, "suggest_intent_data"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lostpixels/fieldservice/helpfunctions/SearchSuggestionsProvider;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 42
    sget-object v0, Lcom/lostpixels/fieldservice/helpfunctions/SearchSuggestionsProvider;->AUTHORITY:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/SearchRecentSuggestionsProvider;->setupSuggestions(Ljava/lang/String;I)V

    return-void
.end method

.method private createRow(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 p2, 0x2

    aput-object p3, v2, p2

    const/4 p2, 0x3

    aput-object p1, v2, p2

    const/4 p1, 0x4

    aput-object p4, v2, p1

    const/4 p1, 0x5

    aput-object v1, v2, p1

    return-object v2
.end method


# virtual methods
.method protected getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Person;)I
    .locals 2

    const v0, 0x7f0800e5

    if-eqz p1, :cond_4

    .line 91
    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getType()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f080381

    return p1

    :cond_1
    const p1, 0x7f08013d

    return p1

    :cond_2
    return v0

    :cond_3
    const p1, 0x7f0800e7

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x0

    .line 49
    aget-object v1, p4, v0

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    goto/16 :goto_5

    .line 56
    :cond_1
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object p2, Lcom/lostpixels/fieldservice/helpfunctions/SearchSuggestionsProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lio/realm/Realm;->getDefaultInstance()Lio/realm/Realm;

    move-result-object p2

    .line 62
    :try_start_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getPersons(Lio/realm/Realm;)Lio/realm/RealmResults;

    move-result-object p4

    invoke-virtual {p4}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    const/4 v2, 0x1

    .line 64
    invoke-virtual {p5, v1, v2}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->matchQuery(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object p3, v0

    goto :goto_3

    .line 69
    :cond_3
    new-instance p4, Lcom/lostpixels/fieldservice/utils/comparators/PersonComparator;

    invoke-direct {p4}, Lcom/lostpixels/fieldservice/utils/comparators/PersonComparator;-><init>()V

    invoke-static {p3, p4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    :goto_1
    if-ge v0, p4, :cond_5

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 v0, v0, 0x1

    check-cast p5, Lcom/lostpixels/fieldservice/internal/ministry/Person;

    .line 73
    invoke-virtual {p5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x7f120367

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 76
    :cond_4
    invoke-virtual {p5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getName()Ljava/lang/String;

    move-result-object v2

    .line 77
    :goto_2
    invoke-virtual {p5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p5}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p5}, Lcom/lostpixels/fieldservice/helpfunctions/SearchSuggestionsProvider;->getHouseholderImage(Lcom/lostpixels/fieldservice/internal/ministry/Person;)I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {p0, v3, v4, v2, p5}, Lcom/lostpixels/fieldservice/helpfunctions/SearchSuggestionsProvider;->createRow(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)[Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 82
    :cond_5
    invoke-virtual {p2}, Lio/realm/Realm;->close()V

    return-object p1

    .line 80
    :goto_3
    :try_start_1
    sget-object p4, Lcom/lostpixels/fieldservice/helpfunctions/SearchSuggestionsProvider;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to lookup "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-virtual {p2}, Lio/realm/Realm;->close()V

    return-object p1

    :goto_4
    invoke-virtual {p2}, Lio/realm/Realm;->close()V

    .line 83
    throw p1

    .line 53
    :goto_5
    invoke-super/range {v1 .. v6}, Landroid/content/SearchRecentSuggestionsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
