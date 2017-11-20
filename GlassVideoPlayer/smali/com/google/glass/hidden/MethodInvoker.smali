.class public final Lcom/google/glass/hidden/MethodInvoker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HiddenMethodInvoker"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private argTypes:[Ljava/lang/Class;

.field private instance:Ljava/lang/Object;

.field private lastException:Ljava/lang/Exception;

.field private method:Ljava/lang/reflect/Method;

.field private methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "HiddenMethodInvoker"

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/hidden/MethodInvoker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 43
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 5

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lcom/google/glass/hidden/MethodInvoker;->methodName:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/google/glass/hidden/MethodInvoker;->argTypes:[Ljava/lang/Class;

    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/hidden/MethodInvoker;->findMethod()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    sget-object v1, Lcom/google/glass/hidden/MethodInvoker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Can\'t find the method: %s in instance: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private clearLastException()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->lastException:Ljava/lang/Exception;

    .line 116
    return-void
.end method

.method private ensureValidMethod()V
    .locals 6

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/glass/hidden/MethodInvoker;->isMethodValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/google/glass/hidden/MethodInvoker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "invoke() called without a valid method!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    new-instance v0, Ljava/lang/NoSuchMethodException;

    iget-object v1, p0, Lcom/google/glass/hidden/MethodInvoker;->methodName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Didn\'t bind to method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " on instance:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    return-void
.end method

.method private findMethod()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/google/glass/hidden/MethodInvoker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "findMethod() cannot find method named: %s on a null instance."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/hidden/MethodInvoker;->methodName:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-interface {v0, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :goto_0
    return v2

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/glass/hidden/MethodInvoker;->methodName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/hidden/MethodInvoker;->argTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->method:Ljava/lang/reflect/Method;

    .line 153
    :goto_1
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v3, p0, Lcom/google/glass/hidden/MethodInvoker;->methodName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/hidden/MethodInvoker;->argTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->method:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_2
    move v0, v2

    .line 153
    goto :goto_2
.end method

.method private handleInvocationError(Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 120
    iput-object p1, p0, Lcom/google/glass/hidden/MethodInvoker;->lastException:Ljava/lang/Exception;

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    const-string v0, "Caught exception invoking method: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/hidden/MethodInvoker;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v0, " on instance="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    const-string v0, " Args= [\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    if-eqz p2, :cond_1

    move v0, v1

    .line 128
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 129
    aget-object v2, p2, v0

    .line 130
    if-nez v2, :cond_0

    const-string v2, "null"

    .line 131
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 134
    :cond_1
    const-string v0, "]\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    sget-object v0, Lcom/google/glass/hidden/MethodInvoker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-interface {v0, p1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return-void
.end method


# virtual methods
.method public final getLastInvocationException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->lastException:Ljava/lang/Exception;

    return-object v0
.end method

.method public final varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/google/glass/hidden/MethodInvoker;->clearLastException()V

    .line 73
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/hidden/MethodInvoker;->ensureValidMethod()V

    .line 74
    iget-object v1, p0, Lcom/google/glass/hidden/MethodInvoker;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/glass/hidden/MethodInvoker;->instance:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    invoke-direct {p0, v1, p1}, Lcom/google/glass/hidden/MethodInvoker;->handleInvocationError(Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :catch_1
    move-exception v1

    .line 79
    invoke-direct {p0, v1, p1}, Lcom/google/glass/hidden/MethodInvoker;->handleInvocationError(Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :catch_2
    move-exception v1

    .line 82
    invoke-direct {p0, v1, p1}, Lcom/google/glass/hidden/MethodInvoker;->handleInvocationError(Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :catch_3
    move-exception v1

    .line 85
    invoke-direct {p0, v1, p1}, Lcom/google/glass/hidden/MethodInvoker;->handleInvocationError(Ljava/lang/Exception;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final isMethodValid()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final wasExceptionOnLastInvocation()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/glass/hidden/MethodInvoker;->lastException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
