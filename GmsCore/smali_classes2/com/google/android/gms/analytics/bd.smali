.class public final Lcom/google/android/gms/analytics/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/analytics/ap;


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/android/gms/analytics/bd;->b()Lcom/google/android/gms/analytics/be;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/be;->d(Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-static {}, Lcom/google/android/gms/analytics/bd;->b()Lcom/google/android/gms/analytics/be;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_0

    .line 87
    invoke-static {}, Lcom/google/android/gms/analytics/bd;->b()Lcom/google/android/gms/analytics/be;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/analytics/be;->a()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 89
    :cond_0
    return v0
.end method

.method private static b()Lcom/google/android/gms/analytics/be;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/google/android/gms/analytics/bd;->a:Lcom/google/android/gms/analytics/ap;

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/google/android/gms/analytics/ap;->a()Lcom/google/android/gms/analytics/ap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/bd;->a:Lcom/google/android/gms/analytics/ap;

    .line 97
    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/bd;->a:Lcom/google/android/gms/analytics/ap;

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Lcom/google/android/gms/analytics/bd;->a:Lcom/google/android/gms/analytics/ap;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ap;->e()Lcom/google/android/gms/analytics/be;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/google/android/gms/analytics/bd;->b()Lcom/google/android/gms/analytics/be;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/be;->b(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/google/android/gms/analytics/bd;->b()Lcom/google/android/gms/analytics/be;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/be;->a(Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/google/android/gms/analytics/bd;->b()Lcom/google/android/gms/analytics/be;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/be;->c(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method
