.class Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/utils/map/GetCurrentCityTask$CurrentCityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;->updatePositionsFromAddress(Lcom/lostpixels/fieldservice/internal/ministry/Visit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

.field final synthetic val$territoryId:J

.field final synthetic val$visitId:J


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;JJ)V
    .locals 0

    .line 3135
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    iput-wide p2, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->val$territoryId:J

    iput-wide p4, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->val$visitId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGotCurrentCityComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 3139
    new-instance v5, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c008c

    .line 3140
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 3141
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v1, 0x7f120166

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0902a2

    .line 3143
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    const v0, 0x7f09016f

    .line 3144
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/16 v1, 0x8

    .line 3145
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3146
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;->this$0:Lcom/lostpixels/fieldservice/activities/territory/TerritoryList;

    const v1, 0x7f12039b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3147
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900f5

    .line 3149
    invoke-virtual {v5, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 3150
    new-instance v0, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24$1;-><init>(Lcom/lostpixels/fieldservice/activities/territory/TerritoryList$24;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3268
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    return-void
.end method
