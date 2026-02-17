.class Lcom/lostpixels/fieldservice/ui/ClearableEditText$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 78
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText$3;->this$0:Lcom/lostpixels/fieldservice/ui/ClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableEditText$3;->this$0:Lcom/lostpixels/fieldservice/ui/ClearableEditText;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/ClearableEditText;->manageClearButton()V

    return-void
.end method
