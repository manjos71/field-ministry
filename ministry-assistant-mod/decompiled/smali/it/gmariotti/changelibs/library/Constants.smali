.class public abstract Lit/gmariotti/changelibs/library/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final mChangeLogFileResourceId:I

.field public static final mRowHeaderLayoutId:I

.field public static final mRowLayoutId:I

.field public static final mStringVersionHeader:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget v0, Lit/gmariotti/changelibs/R$raw;->changelog:I

    sput v0, Lit/gmariotti/changelibs/library/Constants;->mChangeLogFileResourceId:I

    .line 41
    sget v0, Lit/gmariotti/changelibs/R$layout;->changelogrow_layout:I

    sput v0, Lit/gmariotti/changelibs/library/Constants;->mRowLayoutId:I

    .line 49
    sget v0, Lit/gmariotti/changelibs/R$layout;->changelogrowheader_layout:I

    sput v0, Lit/gmariotti/changelibs/library/Constants;->mRowHeaderLayoutId:I

    .line 58
    sget v0, Lit/gmariotti/changelibs/R$string;->changelog_header_version:I

    sput v0, Lit/gmariotti/changelibs/library/Constants;->mStringVersionHeader:I

    return-void
.end method
