.class abstract Lcom/google/firebase/crashlytics/internal/proto/WireFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MESSAGE_SET_ITEM_END_TAG:I

.field static final MESSAGE_SET_ITEM_TAG:I

.field static final MESSAGE_SET_MESSAGE_TAG:I

.field static final MESSAGE_SET_TYPE_ID_TAG:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 172
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat;->makeTag(II)I

    move-result v2

    sput v2, Lcom/google/firebase/crashlytics/internal/proto/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    const/4 v2, 0x4

    .line 173
    invoke-static {v0, v2}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 174
    invoke-static {v2, v0}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 176
    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/internal/proto/WireFormat;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/proto/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    return-void
.end method

.method static makeTag(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method
