.class public final Lcom/google/android/gms/common/util/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I
    .locals 5

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 53
    array-length v1, p1

    .line 54
    array-length v0, p0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 55
    aget-object v3, p1, v1

    .line 56
    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    return v2
.end method

.method public static a()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 16
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 17
    const-string v0, "Async stack trace:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    array-length v5, v2

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v2, v0

    .line 19
    const-string v7, "\n\tat "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    .line 24
    :goto_1
    if-eqz v2, :cond_3

    .line 25
    const-string v3, "\nCaused by: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 28
    invoke-static {v3, v0}, Lcom/google/android/gms/common/util/u;->a([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I

    move-result v5

    move v0, v1

    .line 29
    :goto_2
    array-length v6, v3

    sub-int/2addr v6, v5

    if-ge v0, v6, :cond_1

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\n\tat "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v3, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 32
    :cond_1
    if-lez v5, :cond_2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "\n\t... "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " more"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v2, v0

    move-object v0, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
