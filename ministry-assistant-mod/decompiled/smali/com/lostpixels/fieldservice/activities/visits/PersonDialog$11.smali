.class Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->setupFragment1()Landroid/view/View;
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

    .line 819
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$11;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 823
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog$11;->this$0:Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;->-$$Nest$mopenAddVisitDialog(Lcom/lostpixels/fieldservice/activities/visits/PersonDialog;Z)V

    return-void
.end method
