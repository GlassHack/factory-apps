.class public abstract Lcom/google/android/gms/auth/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/auth/d/a;->d:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/auth/d/a;->a:Ljava/lang/String;

    .line 27
    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/google/android/gms/auth/e/b;)V
    .locals 5

    .prologue
    .line 45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 47
    :try_start_0
    new-instance v0, Lcom/google/android/gms/playlog/a;

    iget-object v1, p0, Lcom/google/android/gms/auth/d/a;->d:Landroid/content/Context;

    const/16 v4, 0x19

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/playlog/a;-><init>(Landroid/content/Context;I)V

    .line 49
    invoke-virtual {p2}, Lcom/google/android/gms/auth/e/b;->g()[B

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v4}, Lcom/google/android/gms/playlog/a;->a(Ljava/lang/String;[B[Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/playlog/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/gms/auth/d/a;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/auth/d/a;->c:Ljava/lang/String;

    .line 35
    return-void
.end method
