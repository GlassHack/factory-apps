.class public Lcom/google/g/a/c;
.super Ljava/lang/Object;


# static fields
.field protected static a:Lcom/google/g/a/c;

.field protected static final c:Ljava/lang/Object;


# instance fields
.field public b:Lcom/google/g/a/b/x;

.field protected final d:Lcom/google/g/a/d;

.field private e:Lcom/google/g/a/b/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/g/a/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/g/a/c;->b:Lcom/google/g/a/b/x;

    iput-object v0, p0, Lcom/google/g/a/c;->e:Lcom/google/g/a/b/t;

    new-instance v0, Lcom/google/g/a/d;

    invoke-direct {v0}, Lcom/google/g/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/g/a/c;->d:Lcom/google/g/a/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/g/a/c;->c:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/g/a/b/u;

    invoke-direct {v0}, Lcom/google/g/a/b/u;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/g/a/c;->b:Lcom/google/g/a/b/x;

    new-instance v0, Lcom/google/g/a/d;

    invoke-direct {v0}, Lcom/google/g/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/g/a/c;->d:Lcom/google/g/a/d;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object p0, Lcom/google/g/a/c;->a:Lcom/google/g/a/c;

    new-instance v0, Lcom/google/g/a/b/a/d;

    invoke-direct {v0}, Lcom/google/g/a/b/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/g/a/c;->e:Lcom/google/g/a/b/t;

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/g/a/b/a/e;

    invoke-direct {v0, p1}, Lcom/google/g/a/b/a/e;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Lcom/google/g/a/c;
    .locals 1

    sget-object v0, Lcom/google/g/a/c;->a:Lcom/google/g/a/c;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/g/a/d;
    .locals 1

    iget-object v0, p0, Lcom/google/g/a/c;->d:Lcom/google/g/a/d;

    return-object v0
.end method

.method public final c()Lcom/google/g/a/b/x;
    .locals 1

    iget-object v0, p0, Lcom/google/g/a/c;->b:Lcom/google/g/a/b/x;

    return-object v0
.end method

.method public final d()Lcom/google/g/a/b/t;
    .locals 1

    iget-object v0, p0, Lcom/google/g/a/c;->e:Lcom/google/g/a/b/t;

    return-object v0
.end method
