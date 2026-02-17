.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 217
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 220
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;->-$$Nest$msomethingChanged(Lcom/lostpixels/fieldservice/activities/territory/TerritoryAdder;)V

    return-void
.end method
