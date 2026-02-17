.class Lcom/lostpixels/fieldservice/internal/ministry/Person$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lostpixels/fieldservice/realm/RealmHelper$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lostpixels/fieldservice/internal/ministry/Person;->setPriority(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

.field final synthetic val$priority:I


# direct methods
.method constructor <init>(Lcom/lostpixels/fieldservice/internal/ministry/Person;I)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$20;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iput p2, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$20;->val$priority:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write()V
    .locals 2

    .line 792
    iget-object v0, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$20;->this$0:Lcom/lostpixels/fieldservice/internal/ministry/Person;

    iget v1, p0, Lcom/lostpixels/fieldservice/internal/ministry/Person$20;->val$priority:I

    invoke-virtual {v0, v1}, Lcom/lostpixels/fieldservice/internal/ministry/Person;->realmSet$priority(I)V

    return-void
.end method
