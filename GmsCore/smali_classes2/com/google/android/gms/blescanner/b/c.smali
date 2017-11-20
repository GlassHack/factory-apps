.class public final Lcom/google/android/gms/blescanner/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    const-string v0, "BleScanCompatLib"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "BleScanCompatLib"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 39
    const-string v0, "BleScanCompatLib"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    .line 41
    :cond_0
    const-string v0, "BleScanCompatLib"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    :goto_0
    return-void

    .line 43
    :cond_2
    const-string v0, "BleScanCompatLib"

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    const-string v0, "BleScanCompatLib"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "BleScanCompatLib"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method
