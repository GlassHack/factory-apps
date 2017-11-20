.class public Lcom/google/android/gms/fitness/b/c/ae;
.super Lcom/google/android/gms/fitness/b/c/f;
.source "SourceFile"


# instance fields
.field protected a:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/fitness/b/c/f;-><init>()V

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/b/c/ae;->a:J

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/fitness/b/c/ae;
    .locals 1

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/google/android/gms/fitness/b/c/ae;->a:J

    .line 29
    return-object p0
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/b/c/f;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/fitness/b/c/ag;)Lcom/google/android/gms/fitness/b/c/f;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/b/c/f;->a(Lcom/google/android/gms/fitness/b/c/ag;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/b/c/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Z)Lcom/google/android/gms/fitness/b/c/f;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/b/c/f;->a(Z)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/b/c/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/android/gms/fitness/b/t;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/c/ae;->c()Lcom/google/android/gms/fitness/b/c/ad;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/gms/fitness/b/c/ad;
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/c/ae;->a()V

    .line 35
    new-instance v0, Lcom/google/android/gms/fitness/b/c/ad;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/b/c/ae;->a:J

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/gms/fitness/b/c/ad;-><init>(Lcom/google/android/gms/fitness/b/c/ae;J)V

    return-object v0
.end method

.method public final bridge synthetic c(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/google/android/gms/fitness/b/c/f;->c(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    return-object v0
.end method
