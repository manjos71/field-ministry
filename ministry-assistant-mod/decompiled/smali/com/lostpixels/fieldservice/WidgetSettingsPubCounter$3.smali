.class Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter$3;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter$3;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsPubCounter;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
