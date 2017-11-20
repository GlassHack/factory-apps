.class public final Lcom/google/glass/logging/StackTraceUtils;
.super Ljava/lang/Object;
.source "StackTraceUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallStack(I)Ljava/lang/String;
    .locals 4
    .param p0, "depth"    # I

    .prologue
    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 66
    .local v2, "ste":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 p0, p0, -0x1

    if-lez p0, :cond_0

    .line 68
    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getCallerClassName(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "skipFrameCount"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 28
    const-string v1, "null throwable"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    if-ltz p1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "skipFrameCount must be >= 0, was: [%s]"

    invoke-static {v1, v4, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 32
    .local v0, "stackTraceElement":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    add-int/lit8 v4, p1, 0x1

    if-lt v1, v4, :cond_1

    :goto_1
    const-string v1, "Unexpected stack trace length (should be >= %s): [%s]"

    add-int/lit8 v3, p1, 0x1

    array-length v4, v0

    invoke-static {v2, v1, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;II)V

    .line 37
    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .end local v0    # "stackTraceElement":[Ljava/lang/StackTraceElement;
    :cond_0
    move v1, v3

    .line 29
    goto :goto_0

    .restart local v0    # "stackTraceElement":[Ljava/lang/StackTraceElement;
    :cond_1
    move v2, v3

    .line 32
    goto :goto_1
.end method

.method public static getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "fullClassName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "null or empty fullClassName"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 50
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "simpleClassName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    :goto_2
    const-string v1, "empty simple class name for : [%s]"

    invoke-static {v2, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-object v0

    .end local v0    # "simpleClassName":Ljava/lang/String;
    :cond_0
    move v1, v3

    .line 49
    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 51
    goto :goto_1

    .restart local v0    # "simpleClassName":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 53
    goto :goto_2
.end method
