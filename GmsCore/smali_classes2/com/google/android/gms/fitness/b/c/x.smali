.class public final Lcom/google/android/gms/fitness/b/c/x;
.super Lcom/google/android/gms/fitness/b/c/ae;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/fitness/b/c/ae;-><init>()V

    return-void
.end method

.method private d()Lcom/google/android/gms/fitness/b/c/w;
    .locals 4

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/c/x;->a()V

    .line 25
    new-instance v0, Lcom/google/android/gms/fitness/b/c/w;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/b/c/x;->a:J

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/google/android/gms/fitness/b/c/w;-><init>(Lcom/google/android/gms/fitness/b/c/x;JB)V

    return-object v0
.end method


# virtual methods
.method public final synthetic b()Lcom/google/android/gms/fitness/b/t;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/fitness/b/c/x;->d()Lcom/google/android/gms/fitness/b/c/w;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/android/gms/fitness/b/c/ad;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/fitness/b/c/x;->d()Lcom/google/android/gms/fitness/b/c/w;

    move-result-object v0

    return-object v0
.end method
