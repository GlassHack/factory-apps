.class Lcom/google/android/gsf/update/SystemUpdatePanoActivity$3;
.super Ljava/lang/Object;
.source "SystemUpdatePanoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdatePanoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 286
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$400(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "verify_progress"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 287
    .local v0, "percent":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$500(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 289
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-nez v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$700(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Lcom/google/android/gsf/update/SystemUpdateContentFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/update/SystemUpdateContentFragment;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$602(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 295
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 296
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$3;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 299
    :cond_1
    return-void
.end method
