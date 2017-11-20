.class public final Lcom/google/android/gms/auth/d/c;
.super Lcom/google/android/gms/auth/d/a;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:J

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/d/a;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 73
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

    sget-object v0, Lcom/google/android/gms/auth/b/a;->t:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/e/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/e/d;-><init>()V

    .line 79
    iget v1, p0, Lcom/google/android/gms/auth/d/c;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/d;->a(I)Lcom/google/android/gms/auth/e/d;

    .line 80
    iget v1, p0, Lcom/google/android/gms/auth/d/c;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/d;->b(I)Lcom/google/android/gms/auth/e/d;

    .line 81
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/c;->k:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/d;->a(Z)Lcom/google/android/gms/auth/e/d;

    .line 82
    iget-wide v2, p0, Lcom/google/android/gms/auth/d/c;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/auth/e/d;->a(J)Lcom/google/android/gms/auth/e/d;

    .line 83
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/c;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/d;->b(Z)Lcom/google/android/gms/auth/e/d;

    .line 84
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/c;->h:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/d;->c(Z)Lcom/google/android/gms/auth/e/d;

    .line 85
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/c;->i:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/d;->d(Z)Lcom/google/android/gms/auth/e/d;

    .line 86
    iget v1, p0, Lcom/google/android/gms/auth/d/c;->j:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/auth/e/d;->b(J)Lcom/google/android/gms/auth/e/d;

    .line 88
    new-instance v1, Lcom/google/android/gms/auth/e/b;

    invoke-direct {v1}, Lcom/google/android/gms/auth/e/b;-><init>()V

    .line 89
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/e/b;->a(I)Lcom/google/android/gms/auth/e/b;

    .line 90
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/e/b;->a(Lcom/google/android/gms/auth/e/d;)Lcom/google/android/gms/auth/e/b;

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/d/c;->a(Ljava/lang/String;Lcom/google/android/gms/auth/e/b;)V

    goto :goto_0
.end method
