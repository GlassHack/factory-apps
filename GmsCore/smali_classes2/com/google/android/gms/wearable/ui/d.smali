.class final Lcom/google/android/gms/wearable/ui/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/android/gms/wearable/ui/d;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;B)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/ui/d;-><init>(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 220
    sget-object v0, Lcom/google/android/gms/wearable/y;->a:Lcom/google/android/gms/wearable/d;

    iget-object v1, p0, Lcom/google/android/gms/wearable/ui/d;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-static {v1}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->a(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Lcom/google/android/gms/common/api/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/d;->b(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/d;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->f(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Lcom/google/android/gms/wearable/ui/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/d;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->f(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Lcom/google/android/gms/wearable/ui/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/ui/e;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/d;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    new-instance v1, Lcom/google/android/gms/wearable/ui/e;

    iget-object v2, p0, Lcom/google/android/gms/wearable/ui/d;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/ui/e;-><init>(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;B)V

    invoke-static {v0, v1}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->a(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;Lcom/google/android/gms/wearable/ui/e;)Lcom/google/android/gms/wearable/ui/e;

    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/d;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->f(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Lcom/google/android/gms/wearable/ui/e;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wearable/ui/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
