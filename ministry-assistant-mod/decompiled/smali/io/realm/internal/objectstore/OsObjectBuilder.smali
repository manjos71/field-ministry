.class public Lio/realm/internal/objectstore/OsObjectBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;
    }
.end annotation


# static fields
.field private static binaryMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static binarySetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static booleanItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static booleanMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static booleanSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static byteArrayItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static byteItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static byteMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static byteSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static dateItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static dateMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static dateSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static decimal128ItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static decimal128MapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static decimal128SetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static doubleItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static doubleMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static doubleSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static floatItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static floatMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static floatSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static integerItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static integerMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static integerSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static longItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static longMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static longSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static mutableRealmIntegerItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static objectIdItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static objectIdMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static objectIdSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static objectItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static realmAnyItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static realmAnyMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static realmAnySetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static shortItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static shortMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static shortSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static stringItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static stringMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static stringSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static uuidItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static uuidMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

.field private static uuidSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;


# instance fields
.field private final builderPtr:J

.field private final context:Lio/realm/internal/NativeContext;

.field private final ignoreFieldsWithSameValue:Z

.field private final sharedRealmPtr:J

.field private final table:Lio/realm/internal/Table;

.field private final tablePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$1;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$1;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->objectItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 96
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$2;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$2;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->stringItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 103
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$3;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$3;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->byteItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 110
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$4;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$4;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->shortItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 117
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$5;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$5;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->integerItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 124
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$6;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$6;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->longItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 131
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$7;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$7;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->booleanItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 138
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$8;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$8;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->floatItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 145
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$9;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$9;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->doubleItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 152
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$10;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$10;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->dateItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 159
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$11;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$11;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->byteArrayItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 166
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$12;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$12;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->mutableRealmIntegerItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 178
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$13;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$13;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->decimal128ItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 185
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$14;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$14;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->objectIdItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 192
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$15;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$15;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->uuidItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 203
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$16;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$16;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->booleanMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 210
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$17;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$17;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->stringMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 217
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$18;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$18;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->integerMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 224
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$19;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$19;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->floatMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 231
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$20;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$20;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->longMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 238
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$21;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$21;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->shortMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 245
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$22;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$22;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->byteMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 252
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$23;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$23;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->doubleMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 259
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$24;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$24;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->binaryMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 266
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$25;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$25;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->dateMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 273
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$26;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$26;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->decimal128MapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 280
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$27;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$27;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->objectIdMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 287
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$28;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$28;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->uuidMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 294
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$29;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$29;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->realmAnyMapItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 303
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$30;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$30;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->realmAnyItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 664
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$31;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$31;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->stringSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 671
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$32;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$32;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->booleanSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 678
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$33;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$33;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->integerSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 685
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$34;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$34;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->longSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 692
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$35;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$35;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->shortSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 699
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$36;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$36;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->byteSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 706
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$37;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$37;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->floatSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 713
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$38;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$38;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->doubleSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 720
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$39;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$39;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->binarySetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 727
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$40;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$40;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->dateSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 734
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$41;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$41;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->decimal128SetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 741
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$42;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$42;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->objectIdSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 748
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$43;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$43;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->uuidSetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    .line 755
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder$44;

    invoke-direct {v0}, Lio/realm/internal/objectstore/OsObjectBuilder$44;-><init>()V

    sput-object v0, Lio/realm/internal/objectstore/OsObjectBuilder;->realmAnySetItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/Table;Ljava/util/Set;)V
    .locals 3

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    invoke-virtual {p1}, Lio/realm/internal/Table;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->sharedRealmPtr:J

    .line 318
    iput-object p1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->table:Lio/realm/internal/Table;

    .line 319
    invoke-virtual {p1}, Lio/realm/internal/Table;->getColumnNames()[Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->tablePtr:J

    .line 321
    invoke-static {}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeCreateBuilder()J

    move-result-wide v1

    iput-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    .line 322
    iget-object p1, v0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    iput-object p1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->context:Lio/realm/internal/NativeContext;

    .line 323
    sget-object p1, Lio/realm/ImportFlag;->CHECK_SAME_VALUES_BEFORE_SET:Lio/realm/ImportFlag;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->ignoreFieldsWithSameValue:Z

    return-void
.end method

.method static synthetic access$000(JJ)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddIntegerListItem(JJ)V

    return-void
.end method

.method static synthetic access$100(JLjava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddStringListItem(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(JLjava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddUUIDListItem(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(JLjava/lang/String;Z)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddBooleanDictionaryEntry(JLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddStringDictionaryEntry(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(JLjava/lang/String;J)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddIntegerDictionaryEntry(JLjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1400(JLjava/lang/String;F)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddFloatDictionaryEntry(JLjava/lang/String;F)V

    return-void
.end method

.method static synthetic access$1500(JLjava/lang/String;D)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddDoubleDictionaryEntry(JLjava/lang/String;D)V

    return-void
.end method

.method static synthetic access$1600(JLjava/lang/String;[B)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddBinaryDictionaryEntry(JLjava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$1700(JLjava/lang/String;J)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3, p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddDateDictionaryEntry(JLjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1800(JLjava/lang/String;JJ)V
    .locals 0

    .line 76
    invoke-static/range {p0 .. p6}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddDecimal128DictionaryEntry(JLjava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$1900(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddObjectIdDictionaryEntry(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(JZ)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddBooleanListItem(JZ)V

    return-void
.end method

.method static synthetic access$2000(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddUUIDDictionaryEntry(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(JLjava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddStringSetItem(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(JZ)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddBooleanSetItem(JZ)V

    return-void
.end method

.method static synthetic access$2300(JJ)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddIntegerSetItem(JJ)V

    return-void
.end method

.method static synthetic access$2400(JF)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddFloatSetItem(JF)V

    return-void
.end method

.method static synthetic access$2500(JD)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddDoubleSetItem(JD)V

    return-void
.end method

.method static synthetic access$2600(J[B)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddByteArraySetItem(J[B)V

    return-void
.end method

.method static synthetic access$2700(JJ)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddDateSetItem(JJ)V

    return-void
.end method

.method static synthetic access$2800(JJJ)V
    .locals 0

    .line 76
    invoke-static/range {p0 .. p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddDecimal128SetItem(JJJ)V

    return-void
.end method

.method static synthetic access$2900(JLjava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddObjectIdSetItem(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(JF)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddFloatListItem(JF)V

    return-void
.end method

.method static synthetic access$3000(JLjava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddUUIDSetItem(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(JD)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddDoubleListItem(JD)V

    return-void
.end method

.method static synthetic access$500(JJ)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddDateListItem(JJ)V

    return-void
.end method

.method static synthetic access$600(J[B)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddByteArrayListItem(J[B)V

    return-void
.end method

.method static synthetic access$800(JJJ)V
    .locals 0

    .line 76
    invoke-static/range {p0 .. p5}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddDecimal128ListItem(JJJ)V

    return-void
.end method

.method static synthetic access$900(JLjava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddObjectIdListItem(JLjava/lang/String;)V

    return-void
.end method

.method private addEmptyList(J)V
    .locals 8

    const-wide/16 v0, 0x0

    .line 557
    invoke-static {v0, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeStartList(J)J

    move-result-wide v6

    .line 558
    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeStopList(JJJ)V

    return-void
.end method

.method private addListItem(JJLjava/util/List;Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;)V
    .locals 8

    if-eqz p5, :cond_5

    .line 458
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeStartList(J)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p3, v0

    if-eqz v3, :cond_1

    .line 459
    iget-object v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->table:Lio/realm/internal/Table;

    invoke-virtual {v0, p3, p4}, Lio/realm/internal/Table;->isColumnNullable(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 460
    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 461
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    .line 466
    invoke-static {v6, v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNullListItem(J)V

    goto :goto_2

    .line 464
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This \'RealmList\' is not nullable. A non-null value is expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 468
    :cond_3
    invoke-interface {p6, v6, v7, v1}, Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;->handleItem(JLjava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move-wide v2, p1

    move-wide v4, p3

    .line 471
    invoke-static/range {v2 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeStopList(JJJ)V

    return-void

    :cond_5
    move-wide v4, p3

    .line 473
    invoke-direct {p0, v4, v5}, Lio/realm/internal/objectstore/OsObjectBuilder;->addEmptyList(J)V

    return-void
.end method

.method private static native nativeAddBinaryDictionaryEntry(JLjava/lang/String;[B)V
.end method

.method private static native nativeAddBoolean(JJZ)V
.end method

.method private static native nativeAddBooleanDictionaryEntry(JLjava/lang/String;Z)V
.end method

.method private static native nativeAddBooleanListItem(JZ)V
.end method

.method private static native nativeAddBooleanSetItem(JZ)V
.end method

.method private static native nativeAddByteArrayListItem(J[B)V
.end method

.method private static native nativeAddByteArraySetItem(J[B)V
.end method

.method private static native nativeAddDate(JJJ)V
.end method

.method private static native nativeAddDateDictionaryEntry(JLjava/lang/String;J)V
.end method

.method private static native nativeAddDateListItem(JJ)V
.end method

.method private static native nativeAddDateSetItem(JJ)V
.end method

.method private static native nativeAddDecimal128DictionaryEntry(JLjava/lang/String;JJ)V
.end method

.method private static native nativeAddDecimal128ListItem(JJJ)V
.end method

.method private static native nativeAddDecimal128SetItem(JJJ)V
.end method

.method private static native nativeAddDouble(JJD)V
.end method

.method private static native nativeAddDoubleDictionaryEntry(JLjava/lang/String;D)V
.end method

.method private static native nativeAddDoubleListItem(JD)V
.end method

.method private static native nativeAddDoubleSetItem(JD)V
.end method

.method private static native nativeAddFloat(JJF)V
.end method

.method private static native nativeAddFloatDictionaryEntry(JLjava/lang/String;F)V
.end method

.method private static native nativeAddFloatListItem(JF)V
.end method

.method private static native nativeAddFloatSetItem(JF)V
.end method

.method private static native nativeAddInteger(JJJ)V
.end method

.method private static native nativeAddIntegerDictionaryEntry(JLjava/lang/String;J)V
.end method

.method private static native nativeAddIntegerListItem(JJ)V
.end method

.method private static native nativeAddIntegerSetItem(JJ)V
.end method

.method private static native nativeAddNull(JJ)V
.end method

.method private static native nativeAddNullListItem(J)V
.end method

.method private static native nativeAddObject(JJJ)V
.end method

.method private static native nativeAddObjectIdDictionaryEntry(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeAddObjectIdListItem(JLjava/lang/String;)V
.end method

.method private static native nativeAddObjectIdSetItem(JLjava/lang/String;)V
.end method

.method private static native nativeAddObjectList(JJ[J)V
.end method

.method public static native nativeAddRealmAnyDictionaryEntry(JLjava/lang/String;J)V
.end method

.method public static native nativeAddRealmAnyListItem(JJ)V
.end method

.method private static native nativeAddString(JJLjava/lang/String;)V
.end method

.method private static native nativeAddStringDictionaryEntry(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeAddStringListItem(JLjava/lang/String;)V
.end method

.method private static native nativeAddStringSetItem(JLjava/lang/String;)V
.end method

.method private static native nativeAddUUIDDictionaryEntry(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeAddUUIDListItem(JLjava/lang/String;)V
.end method

.method private static native nativeAddUUIDSetItem(JLjava/lang/String;)V
.end method

.method private static native nativeCreateBuilder()J
.end method

.method private static native nativeCreateOrUpdateTopLevelObject(JJJZZ)J
.end method

.method private static native nativeDestroyBuilder(J)V
.end method

.method private static native nativeStartList(J)J
.end method

.method private static native nativeStopList(JJJ)V
.end method


# virtual methods
.method public addBoolean(JLjava/lang/Boolean;)V
    .locals 2

    if-nez p3, :cond_0

    .line 396
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    return-void

    .line 398
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddBoolean(JJZ)V

    return-void
.end method

.method public addDate(JLjava/util/Date;)V
    .locals 8

    if-nez p3, :cond_0

    .line 404
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    return-void

    .line 406
    :cond_0
    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddDate(JJJ)V

    return-void
.end method

.method public addDouble(JLjava/lang/Double;)V
    .locals 8

    if-nez p3, :cond_0

    .line 388
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    return-void

    .line 390
    :cond_0
    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddDouble(JJD)V

    return-void
.end method

.method public addFloat(JLjava/lang/Float;)V
    .locals 2

    if-nez p3, :cond_0

    .line 380
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    return-void

    .line 382
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddFloat(JJF)V

    return-void
.end method

.method public addInteger(JLjava/lang/Integer;)V
    .locals 8

    if-nez p3, :cond_0

    .line 344
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    return-void

    .line 346
    :cond_0
    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v6, p3

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddInteger(JJJ)V

    return-void
.end method

.method public addInteger(JLjava/lang/Long;)V
    .locals 8

    if-nez p3, :cond_0

    .line 352
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    return-void

    .line 354
    :cond_0
    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddInteger(JJJ)V

    return-void
.end method

.method public addIntegerList(JLio/realm/RealmList;)V
    .locals 7

    .line 509
    iget-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    sget-object v6, Lio/realm/internal/objectstore/OsObjectBuilder;->integerItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/objectstore/OsObjectBuilder;->addListItem(JJLjava/util/List;Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;)V

    return-void
.end method

.method public addNull(J)V
    .locals 2

    .line 443
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    return-void
.end method

.method public addObject(JLio/realm/RealmModel;)V
    .locals 6

    if-nez p3, :cond_0

    .line 448
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    return-void

    .line 450
    :cond_0
    check-cast p3, Lio/realm/internal/RealmObjectProxy;

    .line 451
    invoke-interface {p3}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object p3

    invoke-virtual {p3}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object p3

    check-cast p3, Lio/realm/internal/UncheckedRow;

    .line 452
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-virtual {p3}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v4

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddObject(JJJ)V

    return-void
.end method

.method public addObjectList(JLio/realm/RealmList;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 481
    invoke-virtual {p3}, Lio/realm/RealmList;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 482
    :goto_0
    invoke-virtual {p3}, Lio/realm/RealmList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 483
    invoke-virtual {p3, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/RealmObjectProxy;

    if-eqz v2, :cond_0

    .line 487
    invoke-interface {v2}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v2

    check-cast v2, Lio/realm/internal/UncheckedRow;

    invoke-virtual {v2}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null values are not allowed in RealmLists containing Realm models"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 490
    :cond_1
    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-static {v2, v3, p1, p2, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddObjectList(JJ[J)V

    return-void

    .line 492
    :cond_2
    iget-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    new-array p3, v0, [J

    invoke-static {v1, v2, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddObjectList(JJ[J)V

    return-void
.end method

.method public addString(JLjava/lang/String;)V
    .locals 2

    if-nez p3, :cond_0

    .line 372
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddNull(JJ)V

    return-void

    .line 374
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeAddString(JJLjava/lang/String;)V

    return-void
.end method

.method public addStringList(JLio/realm/RealmList;)V
    .locals 7

    .line 497
    iget-wide v1, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    sget-object v6, Lio/realm/internal/objectstore/OsObjectBuilder;->stringItemCallback:Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/realm/internal/objectstore/OsObjectBuilder;->addListItem(JJLjava/util/List;Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 951
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    invoke-static {v0, v1}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeDestroyBuilder(J)V

    return-void
.end method

.method public createNewObject()Lio/realm/internal/UncheckedRow;
    .locals 8

    .line 931
    :try_start_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->sharedRealmPtr:J

    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->tablePtr:J

    iget-wide v4, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeCreateOrUpdateTopLevelObject(JJJZZ)J

    move-result-wide v0

    .line 932
    new-instance v2, Lio/realm/internal/UncheckedRow;

    iget-object v3, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->context:Lio/realm/internal/NativeContext;

    iget-object v4, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->table:Lio/realm/internal/Table;

    invoke-direct {v2, v3, v4, v0, v1}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    .line 935
    throw v0
.end method

.method public updateExistingTopLevelObject()V
    .locals 8

    .line 903
    :try_start_0
    iget-wide v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->sharedRealmPtr:J

    iget-wide v2, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->tablePtr:J

    iget-wide v4, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->builderPtr:J

    iget-boolean v7, p0, Lio/realm/internal/objectstore/OsObjectBuilder;->ignoreFieldsWithSameValue:Z

    const/4 v6, 0x1

    invoke-static/range {v0 .. v7}, Lio/realm/internal/objectstore/OsObjectBuilder;->nativeCreateOrUpdateTopLevelObject(JJJZZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    .line 906
    throw v0
.end method
