.class Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    const v0, 0x7f090469

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->-$$Nest$fputmbAddAll(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;Z)V

    .line 110
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg$1;->this$0:Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;->-$$Nest$mupdateList(Lcom/lostpixels/fieldservice/activities/visits/SelectItemToTagDlg;)V

    return-void
.end method
