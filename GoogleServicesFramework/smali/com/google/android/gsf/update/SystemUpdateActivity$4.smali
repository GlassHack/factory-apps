.class Lcom/google/android/gsf/update/SystemUpdateActivity$4;
.super Ljava/lang/Object;
.source "SystemUpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 247
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$400(Lcom/google/android/gsf/update/SystemUpdateActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "download_progress"

    const/4 v6, -0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 248
    .local v1, "percent":I
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$500(Lcom/google/android/gsf/update/SystemUpdateActivity;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 249
    if-gez v1, :cond_1

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-static {v5}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$700(Lcom/google/android/gsf/update/SystemUpdateActivity;)I

    move-result v5

    if-gez v5, :cond_2

    move v5, v3

    :goto_1
    if-eq v2, v5, :cond_3

    move v0, v3

    .line 250
    .local v0, "doRefresh":Z
    :goto_2
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-static {v2, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$702(Lcom/google/android/gsf/update/SystemUpdateActivity;I)I

    .line 251
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 252
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 253
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$600(Lcom/google/android/gsf/update/SystemUpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v2

    if-gez v1, :cond_4

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 254
    if-eqz v0, :cond_0

    .line 255
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity$4;->this$0:Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-static {v2, v3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->access$300(Lcom/google/android/gsf/update/SystemUpdateActivity;Z)V

    .line 258
    .end local v0    # "doRefresh":Z
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 249
    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2

    .restart local v0    # "doRefresh":Z
    :cond_4
    move v4, v1

    .line 253
    goto :goto_3
.end method
