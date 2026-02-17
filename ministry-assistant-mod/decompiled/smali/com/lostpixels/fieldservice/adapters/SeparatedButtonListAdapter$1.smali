.class Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$1;->this$0:Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;

    iput p2, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 45
    iget-object p1, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$1;->this$0:Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;->-$$Nest$fgetmListner(Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;)Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$OnButtonTapListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$1;->this$0:Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;->-$$Nest$fgetmListner(Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;)Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$OnButtonTapListener;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$1;->this$0:Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;

    iget v1, p0, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$1;->val$pos:I

    invoke-interface {p1, v0, v1}, Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter$OnButtonTapListener;->onTap(Lcom/lostpixels/fieldservice/adapters/SeparatedButtonListAdapter;I)V

    :cond_0
    return-void
.end method
