.class Lcom/lostpixels/fieldservice/WidgetSettingsTimer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lostpixels/fieldservice/WidgetSettingsTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/WidgetSettingsTimer;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/WidgetSettingsTimer;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsTimer$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 68
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsTimer$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsTimer;

    .line 70
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 71
    const-string v1, "widgetsettings.xml"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bgcolor1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettingsTimer$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsTimer;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettingsTimer;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettingsTimer$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsTimer;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettingsTimer;->miColorBg1:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fgcolor1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettingsTimer$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsTimer;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettingsTimer;->mAppWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lostpixels/fieldservice/WidgetSettingsTimer$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsTimer;

    iget v3, v3, Lcom/lostpixels/fieldservice/WidgetSettingsTimer;->miColorFg1:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    iget-object v1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsTimer$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsTimer;

    iget v1, v1, Lcom/lostpixels/fieldservice/WidgetSettingsTimer;->mAppWidgetId:I

    invoke-static {p1, v0, v1}, Lcom/lostpixels/fieldservice/TimerWidget;->updateAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    .line 79
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsTimer$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsTimer;

    iget v0, v0, Lcom/lostpixels/fieldservice/WidgetSettingsTimer;->mAppWidgetId:I

    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Lcom/lostpixels/fieldservice/WidgetSettingsTimer$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsTimer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 82
    iget-object p1, p0, Lcom/lostpixels/fieldservice/WidgetSettingsTimer$2;->this$0:Lcom/lostpixels/fieldservice/WidgetSettingsTimer;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
