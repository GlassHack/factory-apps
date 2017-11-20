.class final Lcom/google/android/location/collectionlib/bs;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/bq;


# direct methods
.method public constructor <init>(Lcom/google/android/location/collectionlib/bq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/location/collectionlib/bs;->a:Lcom/google/android/location/collectionlib/bq;

    .line 153
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 154
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 158
    new-instance v1, Lcom/google/android/location/collectionlib/cy;

    iget-object v0, p0, Lcom/google/android/location/collectionlib/bs;->a:Lcom/google/android/location/collectionlib/bq;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/bq;->a(Lcom/google/android/location/collectionlib/bq;)Landroid/os/PowerManager;

    move-result-object v0

    const-class v2, Lcom/google/android/location/collectionlib/bq;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/location/collectionlib/cy;->a:[S

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/location/collectionlib/cy;-><init>(Landroid/os/PowerManager;Ljava/lang/String;[S)V

    .line 161
    iget-object v0, p0, Lcom/google/android/location/collectionlib/bs;->a:Lcom/google/android/location/collectionlib/bq;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/bq;->b(Lcom/google/android/location/collectionlib/bq;)Lcom/google/android/location/p/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/location/collectionlib/cy;->a(Lcom/google/android/location/p/j;)V

    .line 163
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/location/collectionlib/cy;->a()V

    .line 164
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {v1}, Lcom/google/android/location/collectionlib/cy;->b()V

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/location/collectionlib/cy;->b()V

    throw v0
.end method
