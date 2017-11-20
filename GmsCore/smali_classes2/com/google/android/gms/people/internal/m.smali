.class final Lcom/google/android/gms/people/internal/m;
.super Lcom/google/android/gms/common/internal/g;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/android/gms/people/internal/l;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/people/internal/l;Lcom/google/android/gms/people/s;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/android/gms/people/internal/m;->b:Lcom/google/android/gms/people/internal/l;

    .line 358
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/g;-><init>(Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;)V

    .line 359
    iput-object p3, p0, Lcom/google/android/gms/people/internal/m;->c:Ljava/lang/String;

    .line 360
    iput-object p4, p0, Lcom/google/android/gms/people/internal/m;->d:Ljava/lang/String;

    .line 361
    iput p5, p0, Lcom/google/android/gms/people/internal/m;->e:I

    .line 362
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 351
    check-cast p1, Lcom/google/android/gms/people/s;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/people/internal/m;->b:Lcom/google/android/gms/people/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/people/internal/l;->a(Lcom/google/android/gms/people/internal/l;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/people/internal/m;->b:Lcom/google/android/gms/people/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/people/internal/l;->a(Lcom/google/android/gms/people/internal/l;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1

    iget-object v0, p0, Lcom/google/android/gms/people/internal/m;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/people/internal/m;->d:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/people/internal/m;->e:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method
