.class Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg$2;->this$0:Lcom/lostpixels/fieldservice/activities/territory/dialogs/PhoneTerritoryDlg;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
