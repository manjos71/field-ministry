.class Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropdownItem"
.end annotation


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;->name:Ljava/lang/String;

    .line 310
    iput p2, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;->id:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/servicereport/ServiceChartActivity$DropdownItem;->name:Ljava/lang/String;

    return-object v0
.end method
