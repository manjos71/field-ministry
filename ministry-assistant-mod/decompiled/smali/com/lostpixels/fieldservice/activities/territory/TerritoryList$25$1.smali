.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;->onGotCurrentCityComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

.field final synthetic val$chUpdateAll:Landroid/widget/CheckBox;

.field final synthetic val$countryCode:Ljava/lang/String;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$sCountry:Ljava/lang/String;

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Landroid/widget/CheckBox;Landroid/app/Dialog;)V
    .locals 0

    .line 3306
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->val$sCountry:Ljava/lang/String;

    iput-object p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->val$countryCode:Ljava/lang/String;

    iput-object p5, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->val$chUpdateAll:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 3433
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->val$text:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->val$sCountry:Ljava/lang/String;

    iget-object v4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->val$countryCode:Ljava/lang/String;

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->val$chUpdateAll:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->this$1:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;

    iget-wide v6, p1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25;->val$streetId:J

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1$1GetAddressPositionTask;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3435
    :try_start_0
    iget-object p1, v1, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$25$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
