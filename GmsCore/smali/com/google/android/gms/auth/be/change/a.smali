.class public final Lcom/google/android/gms/auth/be/change/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/auth/be/change/a;

.field public static final b:Lcom/google/android/gms/auth/be/change/a;

.field private static final f:Ljava/util/concurrent/locks/Lock;

.field private static final g:Ljava/util/regex/Pattern;

.field private static h:Lcom/google/android/gms/auth/be/change/b;


# instance fields
.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/be/change/a;->f:Ljava/util/concurrent/locks/Lock;

    .line 44
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/change/a;->g:Ljava/util/regex/Pattern;

    .line 52
    new-instance v0, Lcom/google/android/gms/auth/be/change/a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/change/a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/google/android/gms/auth/be/change/a;->a:Lcom/google/android/gms/auth/be/change/a;

    .line 58
    new-instance v0, Lcom/google/android/gms/auth/be/change/a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/change/a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/google/android/gms/auth/be/change/a;->b:Lcom/google/android/gms/auth/be/change/a;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/change/a;->c:Ljava/util/List;

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/change/a;->d:Ljava/util/List;

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/be/change/a;->e:Ljava/util/List;

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;B)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/auth/be/change/a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/change/b;
    .locals 5

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/gms/auth/be/change/a;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 67
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/change/a;->h:Lcom/google/android/gms/auth/be/change/b;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/google/android/gms/auth/be/change/a;->h:Lcom/google/android/gms/auth/be/change/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    sget-object v1, Lcom/google/android/gms/auth/be/change/a;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    .line 70
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 73
    new-instance v3, Ljava/io/File;

    const-string v4, "auth.account.state.exp.properties"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    new-instance v2, Lcom/google/android/gms/auth/a/j;

    invoke-direct {v2, v3}, Lcom/google/android/gms/auth/a/j;-><init>(Ljava/io/File;)V

    .line 75
    invoke-static {v0}, Lcom/google/android/gms/auth/be/q;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/q;

    move-result-object v0

    .line 78
    new-instance v3, Lcom/google/android/gms/auth/be/change/b;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v0, v4}, Lcom/google/android/gms/auth/be/change/b;-><init>(Landroid/accounts/AccountManager;Lcom/google/android/gms/auth/a/j;Lcom/google/android/gms/auth/be/q;B)V

    sput-object v3, Lcom/google/android/gms/auth/be/change/a;->h:Lcom/google/android/gms/auth/be/change/b;

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/auth/a/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget-object v0, Lcom/google/android/gms/auth/be/change/a;->h:Lcom/google/android/gms/auth/be/change/b;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/change/b;->a()Lcom/google/android/gms/auth/be/change/a;

    .line 86
    :cond_1
    sget-object v0, Lcom/google/android/gms/auth/be/change/a;->h:Lcom/google/android/gms/auth/be/change/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    sget-object v1, Lcom/google/android/gms/auth/be/change/a;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/auth/be/change/a;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic a()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/gms/auth/be/change/a;->f:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic b()Lcom/google/android/gms/auth/be/change/b;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/auth/be/change/a;->h:Lcom/google/android/gms/auth/be/change/b;

    return-object v0
.end method

.method static synthetic c()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/gms/auth/be/change/a;->g:Ljava/util/regex/Pattern;

    return-object v0
.end method
