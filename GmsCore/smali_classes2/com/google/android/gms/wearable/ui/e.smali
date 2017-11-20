.class final Lcom/google/android/gms/wearable/ui/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/gms/wearable/ui/e;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;B)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/ui/e;-><init>(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 196
    sget-object v0, Lcom/google/android/gms/wearable/y;->a:Lcom/google/android/gms/wearable/d;

    iget-object v1, p0, Lcom/google/android/gms/wearable/ui/e;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-static {v1}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->a(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Lcom/google/android/gms/common/api/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/d;->a(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/y;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/aa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/g;

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 196
    check-cast p1, Lcom/google/android/gms/wearable/g;

    invoke-interface {p1}, Lcom/google/android/gms/wearable/g;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/e;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->d(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/wearable/ui/a;

    iget-object v2, p0, Lcom/google/android/gms/wearable/ui/e;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/wearable/ui/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/wearable/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/e;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->e(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/ui/e;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-interface {p1}, Lcom/google/android/gms/wearable/g;->a()Lcom/google/android/gms/wearable/internal/StorageInfoResponse;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/wearable/internal/StorageInfoResponse;->c:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/e;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->c(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/e;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->b(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/e;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->b(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/wearable/ui/e;->a:Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;

    invoke-static {v0}, Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;->c(Lcom/google/android/gms/wearable/ui/WearableManageSpaceActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 206
    return-void
.end method
