.class final Lcom/google/android/gms/people/internal/b/h;
.super Lcom/google/android/gms/people/internal/b/i;
.source "SourceFile"


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Lcom/google/android/gms/people/internal/b/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/internal/b/g;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    iput-object p1, p0, Lcom/google/android/gms/people/internal/b/h;->h:Lcom/google/android/gms/people/internal/b/g;

    iput-object p2, p0, Lcom/google/android/gms/people/internal/b/h;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/people/internal/b/h;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/people/internal/b/h;->f:I

    iput v1, p0, Lcom/google/android/gms/people/internal/b/h;->g:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/people/internal/b/i;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 6

    .prologue
    .line 125
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/people/internal/l;

    iget-object v2, p0, Lcom/google/android/gms/people/internal/b/h;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/people/internal/b/h;->e:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/people/internal/b/h;->f:I

    iget v5, p0, Lcom/google/android/gms/people/internal/b/h;->g:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/people/internal/l;->a(Lcom/google/android/gms/common/api/i;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gms/common/internal/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/common/api/f;->c:Lcom/google/android/gms/common/internal/u;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
