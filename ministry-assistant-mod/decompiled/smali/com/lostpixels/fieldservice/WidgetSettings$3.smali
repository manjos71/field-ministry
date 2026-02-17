.class Lcom/lostpixels/fieldservice/WidgetSettings$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/WidgetSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/WidgetSettings;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/WidgetSettings;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings$3;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 198
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings$3;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget-object p1, p1, Lcom/lostpixels/fieldservice/WidgetSettings;->mTextSize1:Landroid/widget/TextView;

    add-int/lit8 p2, p2, 0xa

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings$3;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iput p2, p1, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize1:I

    .line 200
    iget-boolean p3, p1, Lcom/lostpixels/fieldservice/WidgetSettings;->bIs2x2Widget:Z

    if-eqz p3, :cond_0

    .line 201
    iget-object p1, p1, Lcom/lostpixels/fieldservice/WidgetSettings;->mTextSample:Landroid/widget/TextView;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 202
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettings$3;->this$0:Lcom/lostpixels/fieldservice/WidgetSettings;

    iget-object p2, p1, Lcom/lostpixels/fieldservice/WidgetSettings;->mTextHeader:Landroid/widget/TextView;

    iget p1, p1, Lcom/lostpixels/fieldservice/WidgetSettings;->mSize1:I

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void

    .line 204
    :cond_0
    iget-object p1, p1, Lcom/lostpixels/fieldservice/WidgetSettings;->mTextSample:Landroid/widget/TextView;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
