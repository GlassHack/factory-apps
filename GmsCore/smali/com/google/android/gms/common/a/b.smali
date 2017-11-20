.class public abstract Lcom/google/android/gms/common/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/google/android/gms/common/a/i;

.field private static final d:Ljava/lang/Object;


# instance fields
.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/Object;

.field private e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/a/b;->d:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/a/b;->a:Lcom/google/android/gms/common/a/i;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/a/b;->e:Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Lcom/google/android/gms/common/a/b;->b:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/google/android/gms/common/a/b;->c:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Double;)Lcom/google/android/gms/common/a/b;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/google/android/gms/common/a/f;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/a/f;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/google/android/gms/common/a/g;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/a/g;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/google/android/gms/common/a/e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/a/e;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/google/android/gms/common/a/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/a/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/google/android/gms/common/a/h;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcom/google/android/gms/common/a/c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/a/c;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 34
    sget-object v1, Lcom/google/android/gms/common/a/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/a/b;->a:Lcom/google/android/gms/common/a/i;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/google/android/gms/common/a/j;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/a/j;-><init>(Landroid/content/ContentResolver;)V

    sput-object v0, Lcom/google/android/gms/common/a/b;->a:Lcom/google/android/gms/common/a/i;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/gms/common/a/b;->a:Lcom/google/android/gms/common/a/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract b()Ljava/lang/Object;
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/gms/common/a/b;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/common/a/b;->e:Ljava/lang/Object;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/a/b;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/common/a/b;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/gms/common/a/b;->b:Ljava/lang/String;

    return-object v0
.end method
