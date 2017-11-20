.class public final Lcom/google/android/gms/playlog/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/io/File;

.field public final b:[B

.field public c:Z

.field final synthetic d:Lcom/google/android/gms/playlog/b/a/a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/playlog/b/a/a;Ljava/io/File;[B)V
    .locals 1

    .prologue
    .line 442
    iput-object p1, p0, Lcom/google/android/gms/playlog/b/a/d;->d:Lcom/google/android/gms/playlog/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p2, p0, Lcom/google/android/gms/playlog/b/a/d;->a:Ljava/io/File;

    .line 444
    iput-object p3, p0, Lcom/google/android/gms/playlog/b/a/d;->b:[B

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/b/a/d;->c:Z

    .line 446
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/playlog/b/a/a;Ljava/io/File;[BB)V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/playlog/b/a/d;-><init>(Lcom/google/android/gms/playlog/b/a/a;Ljava/io/File;[B)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/a/d;->b:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
