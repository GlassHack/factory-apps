.class public final Lcom/google/android/gms/fitness/b/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/google/android/gms/fitness/b/l;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/google/android/gms/fitness/b/s;->a:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/fitness/b/s;->b:Lcom/google/android/gms/fitness/b/l;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/b/s;->c:Z

    .line 29
    iput-boolean v1, p0, Lcom/google/android/gms/fitness/b/s;->d:Z

    .line 30
    iput-boolean v1, p0, Lcom/google/android/gms/fitness/b/s;->e:Z

    .line 31
    iput-boolean v1, p0, Lcom/google/android/gms/fitness/b/s;->f:Z

    .line 33
    iput v1, p0, Lcom/google/android/gms/fitness/b/s;->g:I

    .line 34
    iput v1, p0, Lcom/google/android/gms/fitness/b/s;->h:I

    .line 36
    iput v1, p0, Lcom/google/android/gms/fitness/b/s;->i:I

    .line 37
    iput v1, p0, Lcom/google/android/gms/fitness/b/s;->j:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/b/r;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/s;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data type name must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/s;->b:Lcom/google/android/gms/fitness/b/l;

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data source predicate must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    new-instance v0, Lcom/google/android/gms/fitness/b/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/b/r;-><init>(Lcom/google/android/gms/fitness/b/s;B)V

    return-object v0
.end method
