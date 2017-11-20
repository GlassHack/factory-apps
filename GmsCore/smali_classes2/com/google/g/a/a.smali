.class public final Lcom/google/g/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Lcom/google/g/a/a;

.field protected static final d:Ljava/lang/Object;


# instance fields
.field protected final b:Lcom/google/g/a/b/g;

.field protected final c:Lcom/google/g/a/b/k;

.field protected final e:Lcom/google/g/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/g/a/a;->d:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/g/a/a;->c:Lcom/google/g/a/b/k;

    .line 50
    iput-object v0, p0, Lcom/google/g/a/a;->b:Lcom/google/g/a/b/g;

    .line 51
    new-instance v0, Lcom/google/g/a/a/a;

    invoke-direct {v0}, Lcom/google/g/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/g/a/a;->e:Lcom/google/g/a/b;

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/g/a/b/k;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v1, Lcom/google/g/a/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/g/a/b/h;

    invoke-direct {v0}, Lcom/google/g/a/b/h;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/g/a/a;->c:Lcom/google/g/a/b/k;

    .line 66
    new-instance v0, Lcom/google/g/a/a/a;

    invoke-direct {v0}, Lcom/google/g/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/g/a/a;->e:Lcom/google/g/a/b;

    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    sput-object p0, Lcom/google/g/a/a;->a:Lcom/google/g/a/a;

    .line 86
    new-instance v0, Lcom/google/g/a/b/a/a;

    invoke-direct {v0, p1}, Lcom/google/g/a/b/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/g/a/a;->b:Lcom/google/g/a/b/g;

    .line 87
    return-void

    .line 59
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/g/a/b/a/c;

    invoke-direct {v0, p1}, Lcom/google/g/a/b/a/c;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Lcom/google/g/a/a;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/g/a/a;->a:Lcom/google/g/a/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/g/a/a;
    .locals 3

    .prologue
    .line 97
    sget-object v1, Lcom/google/g/a/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/google/g/a/a;->a:Lcom/google/g/a/a;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/google/g/a/a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/g/a/a;-><init>(Landroid/content/Context;Lcom/google/g/a/b/k;)V

    sput-object v0, Lcom/google/g/a/a;->a:Lcom/google/g/a/a;

    .line 101
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    sget-object v0, Lcom/google/g/a/a;->a:Lcom/google/g/a/a;

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()Lcom/google/g/a/b;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/g/a/a;->e:Lcom/google/g/a/b;

    return-object v0
.end method

.method public final c()Lcom/google/g/a/b/k;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/g/a/a;->c:Lcom/google/g/a/b/k;

    return-object v0
.end method

.method public final d()Lcom/google/g/a/b/g;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/g/a/a;->b:Lcom/google/g/a/b/g;

    return-object v0
.end method
