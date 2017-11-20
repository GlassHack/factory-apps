.class public Lcom/google/android/gms/auth/be/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/ref/WeakReference;


# instance fields
.field private final c:Lcom/google/android/gms/auth/be/a/b;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/google/android/gms/auth/be/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/be/a/d;->a:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/auth/be/a/d;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-static {p1}, Lcom/google/android/gms/auth/be/a/b;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/a/b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/auth/be/a/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/a/b;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/be/a/b;)V
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/google/android/gms/auth/be/a/d;->c:Lcom/google/android/gms/auth/be/a/b;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/be/a/d;->d:Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/google/android/gms/auth/be/a/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "context_uuid"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "context_uuid"

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/auth/be/a/d;->e:Ljava/util/UUID;

    .line 58
    return-void

    .line 57
    :cond_0
    const-string v0, "context_uuid"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/auth/be/a/d;
    .locals 3

    .prologue
    .line 31
    const-class v1, Lcom/google/android/gms/auth/be/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/be/a/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/a/d;

    .line 32
    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/google/android/gms/auth/be/a/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/be/a/d;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/google/android/gms/auth/be/a/d;->b:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/be/a/a;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/auth/be/a/d;->c:Lcom/google/android/gms/auth/be/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-object v1

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/auth/be/a/d;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/a/d;->c:Lcom/google/android/gms/auth/be/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/a/b;->b()Ljava/util/Set;

    move-result-object v3

    .line 119
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/a/a;

    .line 120
    iget-object v5, v0, Lcom/google/android/gms/auth/be/a/a;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/google/android/gms/auth/be/a/a;->a:Ljava/util/UUID;

    iget-object v6, p0, Lcom/google/android/gms/auth/be/a/d;->e:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    move-object v1, v0

    .line 124
    goto :goto_1

    .line 125
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/auth/be/a/d;->c:Lcom/google/android/gms/auth/be/a/b;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/auth/be/a/b;->a(Ljava/util/Set;)Z

    .line 127
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/auth/be/a/d;->c:Lcom/google/android/gms/auth/be/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/a/b;->a()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gms/auth/be/a/d;->c:Lcom/google/android/gms/auth/be/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/be/a/d;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/auth/be/a/d;->c:Lcom/google/android/gms/auth/be/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/a/b;->b()Ljava/util/Set;

    move-result-object v0

    .line 80
    new-instance v2, Lcom/google/android/gms/auth/be/a/a;

    iget-object v3, p0, Lcom/google/android/gms/auth/be/a/d;->e:Ljava/util/UUID;

    invoke-direct {v2, v3, p1, p2}, Lcom/google/android/gms/auth/be/a/a;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, p0, Lcom/google/android/gms/auth/be/a/d;->c:Lcom/google/android/gms/auth/be/a/b;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/be/a/b;->a(Ljava/util/Set;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Ljava/util/List;
    .locals 6

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gms/auth/be/a/d;->c:Lcom/google/android/gms/auth/be/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/auth/be/a/d;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 95
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/auth/be/a/d;->c:Lcom/google/android/gms/auth/be/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/be/a/b;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/a/a;

    .line 97
    iget-object v4, v0, Lcom/google/android/gms/auth/be/a/a;->a:Ljava/util/UUID;

    iget-object v5, p0, Lcom/google/android/gms/auth/be/a/d;->e:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 101
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method
