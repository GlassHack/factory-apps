.class public final Lcom/google/android/gms/auth/d/f;
.super Lcom/google/android/gms/auth/d/a;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/d/a;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 83
    sget-object v0, Lcom/google/android/gms/auth/b/a;->q:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sget-object v0, Lcom/google/android/gms/auth/b/a;->v:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/e/h;

    invoke-direct {v0}, Lcom/google/android/gms/auth/e/h;-><init>()V

    .line 89
    iget v1, p0, Lcom/google/android/gms/auth/d/f;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/h;->a(I)Lcom/google/android/gms/auth/e/h;

    .line 90
    iget v1, p0, Lcom/google/android/gms/auth/d/f;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/h;->b(I)Lcom/google/android/gms/auth/e/h;

    .line 91
    iget v1, p0, Lcom/google/android/gms/auth/d/f;->f:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/h;->c(I)Lcom/google/android/gms/auth/e/h;

    .line 92
    iget v1, p0, Lcom/google/android/gms/auth/d/f;->g:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/auth/e/h;->a(J)Lcom/google/android/gms/auth/e/h;

    .line 93
    iget v1, p0, Lcom/google/android/gms/auth/d/f;->h:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/h;->d(I)Lcom/google/android/gms/auth/e/h;

    .line 94
    iget v1, p0, Lcom/google/android/gms/auth/d/f;->i:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/auth/e/h;->b(J)Lcom/google/android/gms/auth/e/h;

    .line 95
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/f;->j:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/h;->a(Z)Lcom/google/android/gms/auth/e/h;

    .line 96
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/f;->k:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/h;->b(Z)Lcom/google/android/gms/auth/e/h;

    .line 97
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/f;->l:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/h;->c(Z)Lcom/google/android/gms/auth/e/h;

    .line 99
    new-instance v1, Lcom/google/android/gms/auth/e/b;

    invoke-direct {v1}, Lcom/google/android/gms/auth/e/b;-><init>()V

    .line 100
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/e/b;->a(I)Lcom/google/android/gms/auth/e/b;

    .line 101
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/e/b;->a(Lcom/google/android/gms/auth/e/h;)Lcom/google/android/gms/auth/e/b;

    .line 102
    const-string v0, "TrustAgent"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/d/f;->a(Ljava/lang/String;Lcom/google/android/gms/auth/e/b;)V

    goto :goto_0
.end method
