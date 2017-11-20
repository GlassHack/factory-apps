.class public final Lcom/google/android/location/os/real/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/k/e;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/location/os/e;

.field private final c:Lcom/google/android/location/k/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/os/e;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/location/os/real/ar;->a:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/google/android/location/os/real/ar;->b:Lcom/google/android/location/os/e;

    .line 25
    new-instance v0, Lcom/google/android/location/k/i;

    new-instance v1, Lcom/google/android/location/os/real/as;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/as;-><init>(Lcom/google/android/location/os/real/ar;)V

    invoke-direct {v0, v1}, Lcom/google/android/location/k/i;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/ar;->c:Lcom/google/android/location/k/i;

    .line 34
    return-void
.end method

.method private a(Lcom/google/android/location/os/c;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/location/os/real/ar;->b:Lcom/google/android/location/os/e;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/location/os/real/ar;->b:Lcom/google/android/location/os/e;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/location/os/c;->H:Lcom/google/android/location/os/c;

    invoke-direct {p0, v0}, Lcom/google/android/location/os/real/ar;->a(Lcom/google/android/location/os/c;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/location/os/real/ar;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/location/os/c;->F:Lcom/google/android/location/os/c;

    invoke-direct {p0, v0}, Lcom/google/android/location/os/real/ar;->a(Lcom/google/android/location/os/c;)V

    .line 73
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/be;->a(Ljava/io/File;)V

    .line 74
    return-void
.end method

.method public final b()Ljava/io/File;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/location/os/c;->E:Lcom/google/android/location/os/c;

    invoke-direct {p0, v0}, Lcom/google/android/location/os/real/ar;->a(Lcom/google/android/location/os/c;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/location/os/real/ar;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/io/File;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/location/os/c;->I:Lcom/google/android/location/os/c;

    invoke-direct {p0, v0}, Lcom/google/android/location/os/real/ar;->a(Lcom/google/android/location/os/c;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/location/os/real/ar;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/location/k/i;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/location/os/real/ar;->c:Lcom/google/android/location/k/i;

    return-object v0
.end method

.method public final e()Ljava/io/File;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/android/location/os/c;->J:Lcom/google/android/location/os/c;

    invoke-direct {p0, v0}, Lcom/google/android/location/os/real/ar;->a(Lcom/google/android/location/os/c;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/location/os/real/ar;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/io/File;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/android/location/os/c;->G:Lcom/google/android/location/os/c;

    invoke-direct {p0, v0}, Lcom/google/android/location/os/real/ar;->a(Lcom/google/android/location/os/c;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/location/os/real/ar;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
