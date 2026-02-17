.class public interface abstract Lio/github/inflationx/viewpump/Interceptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/inflationx/viewpump/Interceptor$Chain;,
        Lio/github/inflationx/viewpump/Interceptor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/github/inflationx/viewpump/Interceptor$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/github/inflationx/viewpump/Interceptor$Companion;->$$INSTANCE:Lio/github/inflationx/viewpump/Interceptor$Companion;

    sput-object v0, Lio/github/inflationx/viewpump/Interceptor;->Companion:Lio/github/inflationx/viewpump/Interceptor$Companion;

    return-void
.end method


# virtual methods
.method public abstract intercept(Lio/github/inflationx/viewpump/Interceptor$Chain;)Lio/github/inflationx/viewpump/InflateResult;
.end method
