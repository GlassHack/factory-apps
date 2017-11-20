.class Lcom/google/android/gsf/login/NameActivity$MinWaitAsyncTask;
.super Landroid/os/AsyncTask;
.source "NameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/NameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinWaitAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/NameActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/login/NameActivity;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/google/android/gsf/login/NameActivity$MinWaitAsyncTask;->this$0:Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/login/NameActivity;Lcom/google/android/gsf/login/NameActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gsf/login/NameActivity;
    .param p2, "x1"    # Lcom/google/android/gsf/login/NameActivity$1;

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/NameActivity$MinWaitAsyncTask;-><init>(Lcom/google/android/gsf/login/NameActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 395
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/NameActivity$MinWaitAsyncTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Void;
    .locals 3
    .param p1, "wait"    # [Ljava/lang/Long;

    .prologue
    const/4 v2, 0x0

    .line 397
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 405
    :goto_0
    return-object v2

    .line 401
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 395
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/NameActivity$MinWaitAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity$MinWaitAsyncTask;->this$0:Lcom/google/android/gsf/login/NameActivity;

    invoke-static {v0}, Lcom/google/android/gsf/login/NameActivity;->access$200(Lcom/google/android/gsf/login/NameActivity;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 410
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity$MinWaitAsyncTask;->this$0:Lcom/google/android/gsf/login/NameActivity;

    invoke-static {v0}, Lcom/google/android/gsf/login/NameActivity;->access$300(Lcom/google/android/gsf/login/NameActivity;)V

    .line 411
    return-void
.end method
