.class Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;)V
    .locals 0

    .line 1100
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1103
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1105
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;

    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lostpixels/fieldservice/internal/report/Scripture;

    .line 1106
    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;

    iget-object v1, v1, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;->this$0:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$verse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lostpixels/fieldservice/internal/report/Scripture;->realmGet$content()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter$1;->this$1:Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog$ScriptureAdapter;

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/lostpixels/fieldservice/activities/visits/EditVisitDialog;->showEditScrptureDlg(Ljava/lang/String;Ljava/lang/String;Landroid/widget/BaseAdapter;I)V

    return-void
.end method
