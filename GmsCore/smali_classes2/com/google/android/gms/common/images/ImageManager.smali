.class public final Lcom/google/android/gms/common/images/ImageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/util/HashSet;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Lcom/google/android/gms/common/images/a;

.field private final g:Lcom/google/android/gms/common/images/a/b;

.field private final h:Ljava/util/Map;

.field private final i:Ljava/util/Map;

.field private final j:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->a:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->b:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/a/b;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->g:Lcom/google/android/gms/common/images/a/b;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->j:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager;->f:Lcom/google/android/gms/common/images/a;

    return-object v0
.end method
