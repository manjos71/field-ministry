.class Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;Landroid/app/Dialog;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$3;->this$1:Lcom/lostpixels/fieldservice/activities/settings/Preferences$7;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 281
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/settings/Preferences$7$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
