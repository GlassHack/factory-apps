.class final Lcom/google/android/location/o/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/ab;


# instance fields
.field final synthetic a:Lcom/google/android/location/o/r;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/google/android/location/o/n;


# direct methods
.method constructor <init>(Lcom/google/android/location/o/n;Lcom/google/android/location/o/r;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/android/location/o/q;->c:Lcom/google/android/location/o/n;

    iput-object p2, p0, Lcom/google/android/location/o/q;->a:Lcom/google/android/location/o/r;

    iput-object p3, p0, Lcom/google/android/location/o/q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/aa;)V
    .locals 3

    .prologue
    .line 194
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/o/q;->a:Lcom/google/android/location/o/r;

    iget-boolean v0, v0, Lcom/google/android/location/o/r;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/o/q;->c:Lcom/google/android/location/o/n;

    iget-object v1, v0, Lcom/google/android/location/o/n;->b:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/o/q;->c:Lcom/google/android/location/o/n;

    iget-object v0, v0, Lcom/google/android/location/o/n;->b:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/google/android/location/o/q;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/location/o/q;->a:Lcom/google/android/location/o/r;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/location/o/q;->c:Lcom/google/android/location/o/n;

    iget-object v0, v0, Lcom/google/android/location/o/n;->b:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/google/android/location/o/q;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
