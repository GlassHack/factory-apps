.class public Lcom/google/android/gms/playlog/b/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/google/android/gms/playlog/b/a/i;


# instance fields
.field private final c:Lcom/google/android/gms/playlog/b/a/j;

.field private final d:Lcom/google/android/gms/playlog/b/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/android/gms/playlog/b/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/playlog/b/a/i;->a:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/playlog/b/a/i;->b:Lcom/google/android/gms/playlog/b/a/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/google/android/gms/playlog/b/a/j;

    const-class v1, Lcom/google/n/a/b/a/a/i;

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/playlog/b/a/j;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/a/i;->c:Lcom/google/android/gms/playlog/b/a/j;

    .line 53
    new-instance v0, Lcom/google/android/gms/playlog/b/a/j;

    const-class v1, Lcom/google/n/a/b/a/a/j;

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/playlog/b/a/j;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/a/i;->d:Lcom/google/android/gms/playlog/b/a/j;

    .line 55
    return-void
.end method

.method public static declared-synchronized a()Lcom/google/android/gms/playlog/b/a/i;
    .locals 2

    .prologue
    .line 44
    const-class v1, Lcom/google/android/gms/playlog/b/a/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/playlog/b/a/i;->b:Lcom/google/android/gms/playlog/b/a/i;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/google/android/gms/playlog/b/a/i;

    invoke-direct {v0}, Lcom/google/android/gms/playlog/b/a/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/playlog/b/a/i;->b:Lcom/google/android/gms/playlog/b/a/i;

    .line 47
    :cond_0
    sget-object v0, Lcom/google/android/gms/playlog/b/a/i;->b:Lcom/google/android/gms/playlog/b/a/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/gms/playlog/b/a/i;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/n/a/b/a/a/i;)V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p1, Lcom/google/n/a/b/a/a/i;->f:[Lcom/google/n/a/b/a/a/j;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/n/a/b/a/a/j;->f()Lcom/google/n/a/b/a/a/j;

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/a/i;->d:Lcom/google/android/gms/playlog/b/a/j;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/playlog/b/a/j;->a(Ljava/lang/Object;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/google/n/a/b/a/a/i;->f()Lcom/google/n/a/b/a/a/i;

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/i;->c:Lcom/google/android/gms/playlog/b/a/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/playlog/b/a/j;->a(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public final b()Lcom/google/n/a/b/a/a/i;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/i;->c:Lcom/google/android/gms/playlog/b/a/j;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/a/j;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/b/a/a/i;

    return-object v0
.end method

.method public final c()Lcom/google/n/a/b/a/a/j;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/i;->d:Lcom/google/android/gms/playlog/b/a/j;

    invoke-virtual {v0}, Lcom/google/android/gms/playlog/b/a/j;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/b/a/a/j;

    return-object v0
.end method
