.class Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->importDataFromVCard(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

.field final synthetic val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;Lcom/lostpixels/fieldservice/internal/ministry/Person;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    iput-object p2, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$9;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 810
    invoke-static {}, Lcom/lostpixels/fieldservice/ui/nowcards/NowCardListCreator;->resetCards()V

    .line 811
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$fgetrealm(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)Lio/realm/Realm;

    move-result-object p1

    invoke-static {p1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->getInstance(Lio/realm/Realm;)Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;

    move-result-object p1

    iget-object v0, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {v0}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$fgetrealm(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)Lio/realm/Realm;

    move-result-object v0

    iget-object v1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$9;->val$person:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    invoke-virtual {p1, v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/MinistryManager;->addPerson(Lio/realm/Realm;Lcom/lostpixels/fieldservice/internal/ministry/Person;)J

    .line 812
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    const-string v0, "OK"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 813
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 815
    iget-object p1, p0, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog$9;->this$0:Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;

    invoke-static {p1}, Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;->-$$Nest$msaveAndQuit(Lcom/lostpixels/fieldservice/activities/backup/ImportDialog;)V

    return-void
.end method
