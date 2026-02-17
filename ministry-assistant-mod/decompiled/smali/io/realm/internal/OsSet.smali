.class public Lio/realm/internal/OsSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/NativeObject;
.implements Lio/realm/internal/OsCollection;


# static fields
.field private static final nativeFinalizerPtr:J


# instance fields
.field private final context:Lio/realm/internal/NativeContext;

.field private final nativePtr:J

.field private final osSharedRealm:Lio/realm/internal/OsSharedRealm;

.field private final targetTable:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    invoke-static {}, Lio/realm/internal/OsSet;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsSet;->nativeFinalizerPtr:J

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/UncheckedRow;J)V
    .locals 7

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getSharedRealm()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    iput-object v0, p0, Lio/realm/internal/OsSet;->osSharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 55
    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v1

    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v3

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lio/realm/internal/OsSet;->nativeCreate(JJJ)[J

    move-result-object p1

    const/4 p2, 0x0

    .line 56
    aget-wide p2, p1, p2

    iput-wide p2, p0, Lio/realm/internal/OsSet;->nativePtr:J

    .line 57
    iget-object p2, v0, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    iput-object p2, p0, Lio/realm/internal/OsSet;->context:Lio/realm/internal/NativeContext;

    .line 58
    invoke-virtual {p2, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    const/4 p2, 0x1

    .line 60
    aget-wide v1, p1, p2

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_0

    .line 61
    new-instance p3, Lio/realm/internal/Table;

    aget-wide v1, p1, p2

    invoke-direct {p3, v0, v1, v2}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    iput-object p3, p0, Lio/realm/internal/OsSet;->targetTable:Lio/realm/internal/Table;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lio/realm/internal/OsSet;->targetTable:Lio/realm/internal/Table;

    return-void
.end method

.method private static native nativeCreate(JJJ)[J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeSize(J)J
.end method


# virtual methods
.method public getNativeFinalizerPtr()J
    .locals 2

    .line 87
    sget-wide v0, Lio/realm/internal/OsSet;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    return-wide v0
.end method

.method public size()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lio/realm/internal/OsSet;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsSet;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method
