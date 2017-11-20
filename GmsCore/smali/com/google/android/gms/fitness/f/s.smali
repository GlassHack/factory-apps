.class final Lcom/google/android/gms/fitness/f/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/ab;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/j;

.field final synthetic b:Lcom/google/android/gms/fitness/f/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/f/q;Lcom/google/android/gms/common/api/j;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/gms/fitness/f/s;->b:Lcom/google/android/gms/fitness/f/q;

    iput-object p2, p0, Lcom/google/android/gms/fitness/f/s;->a:Lcom/google/android/gms/common/api/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/aa;)V
    .locals 5

    .prologue
    .line 165
    check-cast p1, Lcom/google/android/gms/wearable/l;

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/l;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/data/k;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/j;

    iget-object v2, p0, Lcom/google/android/gms/fitness/f/s;->b:Lcom/google/android/gms/fitness/f/q;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WearableAccountManager.refreshAccounts: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v0}, Lcom/google/android/gms/wearable/n;->a(Lcom/google/android/gms/wearable/j;)Lcom/google/android/gms/wearable/n;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/f/q;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/wearable/n;->a:Lcom/google/android/gms/wearable/m;

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/f/q;->a(Lcom/google/android/gms/wearable/m;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/l;->a()V

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WearableAccountManager error getting all accounts: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/wearable/l;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/l;->a()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/f/s;->a:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->b()V

    return-void
.end method
