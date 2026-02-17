.class Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener$1;->this$0:Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener$1;->this$0:Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->-$$Nest$mendPress(Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener$1;->this$0:Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->-$$Nest$fgetview(Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener$1;->this$0:Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;

    invoke-static {v2}, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->-$$Nest$fgetmarker(Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lostpixels/fieldservice/ui/OnInfoWindowElementTouchListener;->onClickConfirmed(Landroid/view/View;Lcom/google/android/gms/maps/model/Marker;)V

    :cond_0
    return-void
.end method
