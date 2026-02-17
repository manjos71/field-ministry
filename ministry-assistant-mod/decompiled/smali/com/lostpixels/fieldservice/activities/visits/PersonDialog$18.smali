.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setPersonInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;)V
    .locals 0

    .line 1247
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$18;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$18;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-static {v0, p1}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$mshowQuickAction(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Landroid/view/View;)V

    return-void
.end method
