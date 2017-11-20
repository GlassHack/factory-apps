.class Lcom/google/glass/settings/ui/ViewLicensesActivity$4;
.super Ljava/lang/Object;
.source "ViewLicensesActivity.java"

# interfaces
.implements Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/ViewLicensesActivity;->showLicense(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/ViewLicensesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/ViewLicensesActivity;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$4;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)Z
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$4;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$4;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$1200(Lcom/google/glass/settings/ui/ViewLicensesActivity;)[Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$4;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v2}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$1308(Lcom/google/glass/settings/ui/ViewLicensesActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 331
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$4;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$1300(Lcom/google/glass/settings/ui/ViewLicensesActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$4;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$1200(Lcom/google/glass/settings/ui/ViewLicensesActivity;)[Lcom/google/glass/sound/SoundManager$SoundId;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$4;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->access$1302(Lcom/google/glass/settings/ui/ViewLicensesActivity;I)I

    .line 333
    iget-object v0, p0, Lcom/google/glass/settings/ui/ViewLicensesActivity$4;->this$0:Lcom/google/glass/settings/ui/ViewLicensesActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/ViewLicensesActivity;->openOptionsMenu()V

    .line 336
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
