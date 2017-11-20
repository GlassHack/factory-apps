.class final Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;
.super Landroid/os/AsyncTask;
.source "AndroidUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/update/AndroidUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CountDownTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field max:I

.field final synthetic this$0:Lcom/google/glass/update/AndroidUpdateActivity;


# direct methods
.method public constructor <init>(Lcom/google/glass/update/AndroidUpdateActivity;I)V
    .locals 0
    .param p2, "max"    # I

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->this$0:Lcom/google/glass/update/AndroidUpdateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 204
    iput p2, p0, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->max:I

    .line 205
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 215
    iget v1, p0, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->max:I

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 216
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->publishProgress([Ljava/lang/Object;)V

    .line 218
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->this$0:Lcom/google/glass/update/AndroidUpdateActivity;

    invoke-static {v2}, Lcom/google/glass/update/AndroidUpdateActivity;->access$000(Lcom/google/glass/update/AndroidUpdateActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Interrupted while sleeping between progress updates"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 223
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 193
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 234
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->this$0:Lcom/google/glass/update/AndroidUpdateActivity;

    invoke-static {v0}, Lcom/google/glass/update/AndroidUpdateActivity;->access$000(Lcom/google/glass/update/AndroidUpdateActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Count down complete."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->this$0:Lcom/google/glass/update/AndroidUpdateActivity;

    invoke-static {v0}, Lcom/google/glass/update/AndroidUpdateActivity;->access$300(Lcom/google/glass/update/AndroidUpdateActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->this$0:Lcom/google/glass/update/AndroidUpdateActivity;

    invoke-static {v0}, Lcom/google/glass/update/AndroidUpdateActivity;->access$000(Lcom/google/glass/update/AndroidUpdateActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Update not cancelled, starting update now."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->this$0:Lcom/google/glass/update/AndroidUpdateActivity;

    invoke-static {v0}, Lcom/google/glass/update/AndroidUpdateActivity;->access$400(Lcom/google/glass/update/AndroidUpdateActivity;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->OTA_TRIGGER:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "a"

    const-string v3, "au"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->this$0:Lcom/google/glass/update/AndroidUpdateActivity;

    invoke-static {v0}, Lcom/google/glass/update/AndroidUpdateActivity;->access$500(Lcom/google/glass/update/AndroidUpdateActivity;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->this$0:Lcom/google/glass/update/AndroidUpdateActivity;

    invoke-static {v0}, Lcom/google/glass/update/AndroidUpdateActivity;->access$000(Lcom/google/glass/update/AndroidUpdateActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Update was cancelled, not installing."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->this$0:Lcom/google/glass/update/AndroidUpdateActivity;

    invoke-static {v0}, Lcom/google/glass/update/AndroidUpdateActivity;->access$000(Lcom/google/glass/update/AndroidUpdateActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Starting the slider."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->this$0:Lcom/google/glass/update/AndroidUpdateActivity;

    invoke-static {v0}, Lcom/google/glass/update/AndroidUpdateActivity;->access$100(Lcom/google/glass/update/AndroidUpdateActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->max:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/SliderView;->startProgress(JLandroid/animation/TimeInterpolator;)V

    .line 211
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->this$0:Lcom/google/glass/update/AndroidUpdateActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/update/AndroidUpdateActivity;->access$200(Lcom/google/glass/update/AndroidUpdateActivity;I)V

    .line 230
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 193
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/glass/update/AndroidUpdateActivity$CountDownTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
