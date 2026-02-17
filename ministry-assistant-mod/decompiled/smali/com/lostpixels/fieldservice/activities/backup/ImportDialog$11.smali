.class Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromIntent(Ljava/io/InputStream;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

.field final synthetic val$manager:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;)V
    .locals 0

    .line 944
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$11;->val$manager:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 948
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$fgetrealm(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$11;->val$manager:Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    invoke-virtual {v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getUnmanagedPersonList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->merge(Landroid/content/Context;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 949
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const-string v0, "OK"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 950
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 952
    :cond_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const v0, 0x7f12041c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 953
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 954
    :goto_0
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$11;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$msaveAndQuit(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V

    return-void
.end method
