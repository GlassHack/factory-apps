.class Lcom/google/glass/settings/ui/ViewLicensesActivity$2;
.super Ljava/lang/Object;
.source "ViewLicensesActivity.java"

# interfaces
.implements Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/ViewLicensesActivity;->showIndex(Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

.field final synthetic val$licenses:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/ViewLicensesActivity;Landroid/util/Pair;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$2;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    iput-object p2, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$2;->val$licenses:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)Z
    .locals 6
    .param p1, "page"    # I

    .prologue
    const/4 v5, 0x1

    .line 291
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$2;->val$licenses:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$2;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 293
    iget-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$2;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$2;->val$licenses:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$900(Lcom/google/glass/settings/ui/ViewLicensesActivity;Ljava/lang/String;)V

    .line 297
    :goto_0
    return v5

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$2;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$000(Lcom/google/glass/settings/ui/ViewLicensesActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Invalid license index: %d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
