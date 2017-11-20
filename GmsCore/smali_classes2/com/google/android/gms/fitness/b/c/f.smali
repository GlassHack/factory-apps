.class public Lcom/google/android/gms/fitness/b/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/fitness/b/c/ag;


# instance fields
.field private b:Lcom/google/android/gms/fitness/b/b;

.field private c:Z

.field private d:Lcom/google/android/gms/fitness/b/c/ag;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/gms/fitness/b/c/ag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/c/ag;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/fitness/b/c/f;->a:Lcom/google/android/gms/fitness/b/c/ag;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/b/c/f;->c:Z

    .line 42
    sget-object v0, Lcom/google/android/gms/fitness/b/c/f;->a:Lcom/google/android/gms/fitness/b/c/ag;

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/c/f;->d:Lcom/google/android/gms/fitness/b/c/ag;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/c/f;->g:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/b/c/f;)Lcom/google/android/gms/fitness/b/b;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/f;->b:Lcom/google/android/gms/fitness/b/b;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/b/c/f;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/gms/fitness/b/c/f;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/fitness/b/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/fitness/b/c/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/fitness/b/c/f;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/f;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/fitness/b/c/f;)Lcom/google/android/gms/fitness/b/c/ag;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/f;->d:Lcom/google/android/gms/fitness/b/c/ag;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/f;->b:Lcom/google/android/gms/fitness/b/b;

    .line 49
    return-object p0
.end method

.method public a(Lcom/google/android/gms/fitness/b/c/ag;)Lcom/google/android/gms/fitness/b/c/f;
    .locals 2

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid sensor comparator specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/f;->d:Lcom/google/android/gms/fitness/b/c/ag;

    .line 77
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/f;->e:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public a(Z)Lcom/google/android/gms/fitness/b/c/f;
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/google/android/gms/fitness/b/c/f;->c:Z

    .line 54
    return-object p0
.end method

.method protected final a()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/f;->b:Lcom/google/android/gms/fitness/b/b;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "application not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/f;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputDataTypeName not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/f;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputStreamName not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/f;->f:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public b()Lcom/google/android/gms/fitness/b/t;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/f;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    return-object p0
.end method
