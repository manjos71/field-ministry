.class public Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$BooleanResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanResult"
.end annotation


# instance fields
.field private result:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Z
    .locals 1

    .line 914
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$BooleanResult;->result:Z

    return v0
.end method

.method public setResult(Z)V
    .locals 0

    .line 918
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/internal/report/ServiceReportManager$BooleanResult;->result:Z

    return-void
.end method
