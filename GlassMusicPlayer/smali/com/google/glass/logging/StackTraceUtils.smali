.class final Lcom/google/glass/logging/StackTraceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallerClassName(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    const-string v0, "null throwable"

    invoke-static {p0, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "skipFrameCount must be >= 0, was: [%s]"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 32
    array-length v0, v3

    add-int/lit8 v4, p1, 0x1

    if-lt v0, v4, :cond_1

    move v0, v1

    :goto_1
    const-string v4, "Unexpected stack trace length (should be >= %s): [%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    array-length v2, v3

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    .line 32
    invoke-static {v0, v4, v5}, Lcom/google/common/base/ai;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 37
    aget-object v0, v3, p1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 29
    goto :goto_0

    :cond_1
    move v0, v2

    .line 32
    goto :goto_1
.end method

.method public static getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-static {p0}, Lcom/google/common/base/av;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "null or empty fullClassName"

    invoke-static {v0, v3}, Lcom/google/common/base/ai;->a(ZLjava/lang/Object;)V

    .line 50
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2e

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v1

    :goto_2
    const-string v4, "empty simple class name for : [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-object v0

    :cond_0
    move v0, v2

    .line 49
    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 51
    goto :goto_1

    :cond_2
    move v3, v2

    .line 53
    goto :goto_2
.end method
