.class Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView$2;->this$0:Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;

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

    .line 67
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView$2;->this$0:Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;

    invoke-virtual {p1}, Lcom/lostpixels/fieldservice/ui/ClearableAutoCompleteTextView;->manageClearButton()V

    return-void
.end method
