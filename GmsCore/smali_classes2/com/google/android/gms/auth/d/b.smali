.class public final Lcom/google/android/gms/auth/d/b;
.super Lcom/google/android/gms/auth/d/a;
.source "SourceFile"


# instance fields
.field public d:Z

.field public e:Ljava/lang/String;

.field public f:J

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/d/a;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 28
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

    sget-object v0, Lcom/google/android/gms/auth/b/a;->u:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/e/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/e/c;-><init>()V

    .line 34
    iget-boolean v1, p0, Lcom/google/android/gms/auth/d/b;->d:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/c;->a(Z)Lcom/google/android/gms/auth/e/c;

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/auth/d/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/c;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/e/c;

    .line 36
    iget-wide v2, p0, Lcom/google/android/gms/auth/d/b;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/auth/e/c;->a(J)Lcom/google/android/gms/auth/e/c;

    .line 37
    iget v1, p0, Lcom/google/android/gms/auth/d/b;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/e/c;->a(I)Lcom/google/android/gms/auth/e/c;

    .line 39
    new-instance v1, Lcom/google/android/gms/auth/e/b;

    invoke-direct {v1}, Lcom/google/android/gms/auth/e/b;-><init>()V

    .line 40
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/e/b;->a(I)Lcom/google/android/gms/auth/e/b;

    .line 41
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/e/b;->a(Lcom/google/android/gms/auth/e/c;)Lcom/google/android/gms/auth/e/b;

    .line 43
    const-string v0, "AuthServer"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/d/b;->a(Ljava/lang/String;Lcom/google/android/gms/auth/e/b;)V

    goto :goto_0
.end method
