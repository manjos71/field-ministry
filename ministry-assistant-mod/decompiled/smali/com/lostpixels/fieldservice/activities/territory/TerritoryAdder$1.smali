.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$fgetmTerritory(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)Lcom/lostpixels/fieldservice/internal/ministry/Territory;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/lostpixels/fieldservice/internal/ministry/Territory;->setShouldSort(Z)V

    .line 189
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$1;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$msomethingChanged(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    return-void
.end method
