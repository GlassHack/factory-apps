.class public final Lcom/google/common/io/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final b:Lcom/google/common/io/af;


# instance fields
.field final a:Lcom/google/common/io/af;

.field private final c:Ljava/util/LinkedList;

.field private d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/google/common/io/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/io/ae;->a:Lcom/google/common/io/ae;

    :goto_0
    sput-object v0, Lcom/google/common/io/ac;->b:Lcom/google/common/io/af;

    return-void

    :cond_0
    sget-object v0, Lcom/google/common/io/ad;->a:Lcom/google/common/io/ad;

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/common/io/af;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/ac;->c:Ljava/util/LinkedList;

    .line 112
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/af;

    iput-object v0, p0, Lcom/google/common/io/ac;->a:Lcom/google/common/io/af;

    .line 113
    return-void
.end method

.method public static a()Lcom/google/common/io/ac;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/google/common/io/ac;

    sget-object v1, Lcom/google/common/io/ac;->b:Lcom/google/common/io/af;

    invoke-direct {v0, v1}, Lcom/google/common/io/ac;-><init>(Lcom/google/common/io/af;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/common/io/ac;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 124
    return-object p1
.end method

.method public final a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/common/io/ac;->d:Ljava/lang/Throwable;

    .line 142
    const-class v0, Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/common/base/aw;->b(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 143
    invoke-static {p1}, Lcom/google/common/base/aw;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final close()V
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/google/common/io/ac;->d:Ljava/lang/Throwable;

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/google/common/io/ac;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/google/common/io/ac;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    .line 207
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 215
    goto :goto_0

    .line 208
    :catch_0
    move-exception v2

    .line 209
    if-nez v1, :cond_0

    move-object v0, v2

    .line 210
    goto :goto_1

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/google/common/io/ac;->a:Lcom/google/common/io/af;

    invoke-interface {v3, v0, v1, v2}, Lcom/google/common/io/af;->a(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/google/common/io/ac;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 218
    const-class v0, Ljava/io/IOException;

    invoke-static {v1, v0}, Lcom/google/common/base/aw;->b(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 219
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 221
    :cond_2
    return-void
.end method
