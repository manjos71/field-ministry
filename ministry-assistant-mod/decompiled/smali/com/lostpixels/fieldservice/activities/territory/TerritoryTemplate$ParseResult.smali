.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParseResult"
.end annotation


# instance fields
.field bIsGermanFormat:Z

.field bLetterFirst:Z

.field letter:Ljava/lang/String;

.field number:I

.field number2:I

.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1020
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    const/4 p1, -0x1

    .line 1022
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    .line 1023
    iput p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number2:I

    const/4 p1, 0x0

    .line 1024
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->bLetterFirst:Z

    .line 1025
    iput-boolean p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->bIsGermanFormat:Z

    return-void
.end method


# virtual methods
.method public isGermanFormat()Z
    .locals 1

    .line 1044
    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->bIsGermanFormat:Z

    return v0
.end method

.method public isMixed()Z
    .locals 2

    .line 1036
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOnlyLetter()Z
    .locals 2

    .line 1028
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public letterFirst()Z
    .locals 2

    .line 1040
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->letter:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->number:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryTemplate$ParseResult;->bLetterFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
