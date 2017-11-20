.class abstract Lcom/google/android/gms/fitness/b/c/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/gms/fitness/b/p;

.field final b:J

.field c:I

.field d:J

.field e:J

.field private final f:Lcom/google/android/gms/fitness/b/e;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/e;J)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/fitness/b/c/p;->c:I

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/p;->a:Lcom/google/android/gms/fitness/b/p;

    .line 27
    iput-object p2, p0, Lcom/google/android/gms/fitness/b/c/p;->f:Lcom/google/android/gms/fitness/b/e;

    .line 28
    iput-wide p3, p0, Lcom/google/android/gms/fitness/b/c/p;->b:J

    .line 29
    return-void
.end method


# virtual methods
.method final a()V
    .locals 8

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/android/gms/fitness/b/c/p;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/p;->a:Lcom/google/android/gms/fitness/b/p;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/p;->b()Lcom/google/android/gms/fitness/b/d;

    move-result-object v2

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/p;->f:Lcom/google/android/gms/fitness/b/e;

    invoke-interface {v2, v0}, Lcom/google/android/gms/fitness/b/d;->a(Lcom/google/android/gms/fitness/b/e;)Lcom/google/android/gms/fitness/b/d;

    .line 50
    iget v3, p0, Lcom/google/android/gms/fitness/b/c/p;->c:I

    iget-wide v4, p0, Lcom/google/android/gms/fitness/b/c/p;->d:J

    iget-wide v6, p0, Lcom/google/android/gms/fitness/b/c/p;->e:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/fitness/b/c/p;->a(Lcom/google/android/gms/fitness/b/d;IJJ)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/fitness/b/c/p;->c:I

    .line 55
    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/fitness/b/d;IJJ)V
.end method

.method final b()Lcom/google/android/gms/fitness/b/o;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/c/p;->a()V

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/p;->a:Lcom/google/android/gms/fitness/b/p;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/p;->d()Lcom/google/android/gms/fitness/b/o;

    move-result-object v0

    return-object v0
.end method
