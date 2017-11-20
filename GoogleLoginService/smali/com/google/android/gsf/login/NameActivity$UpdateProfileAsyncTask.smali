.class Lcom/google/android/gsf/login/NameActivity$UpdateProfileAsyncTask;
.super Landroid/os/AsyncTask;
.source "NameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/NameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateProfileAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
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
    .line 378
    iput-object p1, p0, Lcom/google/android/gsf/login/NameActivity$UpdateProfileAsyncTask;->this$0:Lcom/google/android/gsf/login/NameActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/login/NameActivity;Lcom/google/android/gsf/login/NameActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gsf/login/NameActivity;
    .param p2, "x1"    # Lcom/google/android/gsf/login/NameActivity$1;

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/NameActivity$UpdateProfileAsyncTask;-><init>(Lcom/google/android/gsf/login/NameActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 378
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/NameActivity$UpdateProfileAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 380
    array-length v2, p1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 386
    :goto_0
    return-object v4

    .line 383
    :cond_0
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 384
    .local v0, "firstName":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v1, p1, v2

    .line 385
    .local v1, "lastName":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/login/NameActivity$UpdateProfileAsyncTask;->this$0:Lcom/google/android/gsf/login/NameActivity;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/NameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lcom/google/android/gsf/login/ProfileHelper;->updateMeContactWith(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 378
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/NameActivity$UpdateProfileAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity$UpdateProfileAsyncTask;->this$0:Lcom/google/android/gsf/login/NameActivity;

    invoke-static {v0}, Lcom/google/android/gsf/login/NameActivity;->access$200(Lcom/google/android/gsf/login/NameActivity;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 391
    iget-object v0, p0, Lcom/google/android/gsf/login/NameActivity$UpdateProfileAsyncTask;->this$0:Lcom/google/android/gsf/login/NameActivity;

    invoke-static {v0}, Lcom/google/android/gsf/login/NameActivity;->access$300(Lcom/google/android/gsf/login/NameActivity;)V

    .line 392
    return-void
.end method
