.class Lcom/lostpixels/fieldservice/ui/ClearableEditText$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/ui/ClearableEditText;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/ClearableEditText;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/ui/ClearableEditText;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText$4;->this$0:Lcom/lostpixels/fieldservice/ui/ClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText$4;->this$0:Lcom/lostpixels/fieldservice/ui/ClearableEditText;

    invoke-static {p1, p2}, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->-$$Nest$msetImeVisibility(Lcom/lostpixels/fieldservice/ui/ClearableEditText;Z)V

    return-void
.end method
