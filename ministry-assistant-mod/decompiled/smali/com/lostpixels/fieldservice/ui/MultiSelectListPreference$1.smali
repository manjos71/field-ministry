.class Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference$1;->this$0:Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference$1;->this$0:Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;->-$$Nest$fgetentryChecked(Lcom/lostpixels/fieldservice/ui/MultiSelectListPreference;)[Z

    move-result-object p1

    aput-boolean p3, p1, p2

    return-void
.end method
