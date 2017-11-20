.class Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;
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
    .line 301
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 303
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$400(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "download_progress"

    const/4 v6, -0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 304
    .local v1, "percent":I
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$500(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 305
    if-gez v1, :cond_3

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v5}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$800(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)I

    move-result v5

    if-gez v5, :cond_4

    move v5, v3

    :goto_1
    if-eq v2, v5, :cond_5

    move v0, v3

    .line 306
    .local v0, "doRefresh":Z
    :goto_2
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v2, v1}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$802(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;I)I

    .line 307
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    if-nez v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v5}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$700(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Lcom/google/android/gsf/update/SystemUpdateContentFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gsf/update/SystemUpdateContentFragment;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$602(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 310
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 311
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 312
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 313
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 314
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    if-gez v1, :cond_6

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 316
    :cond_1
    if-eqz v0, :cond_2

    .line 317
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v2, v3}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$300(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;Z)V

    .line 320
    .end local v0    # "doRefresh":Z
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 305
    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_2

    .restart local v0    # "doRefresh":Z
    :cond_6
    move v4, v1

    .line 314
    goto :goto_3
.end method
