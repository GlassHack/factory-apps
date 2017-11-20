.class public Lcom/google/g/a/d/b;
.super Lcom/google/g/a/d/a;
.source "SourceFile"


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/g/a/d/c;)V
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/google/g/a/d/c;->a()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/g/a/d/b;-><init>(Lcom/google/g/a/d/c;I)V

    .line 27
    return-void
.end method

.method private constructor <init>(Lcom/google/g/a/d/c;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/google/g/a/d/b;-><init>(Lcom/google/g/a/d/c;Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/google/g/a/d/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/g/a/d/c;->a()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/g/a/d/b;-><init>(Lcom/google/g/a/d/c;Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method private constructor <init>(Lcom/google/g/a/d/c;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/google/g/a/d/a;-><init>(Lcom/google/g/a/d/c;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 71
    iput p4, p0, Lcom/google/g/a/d/b;->d:I

    .line 72
    return-void
.end method


# virtual methods
.method b()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/g/a/d/b;->a:Lcom/google/g/a/d/c;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/c;->c(Lcom/google/g/a/d/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/g/a/d/b;->a:Lcom/google/g/a/d/c;

    invoke-virtual {v0, p0}, Lcom/google/g/a/d/c;->a(Lcom/google/g/a/d/b;)V

    .line 142
    return-void
.end method

.method public final declared-synchronized h()I
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/g/a/d/b;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
