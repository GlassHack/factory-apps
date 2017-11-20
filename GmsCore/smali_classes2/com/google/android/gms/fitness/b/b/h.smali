.class final Lcom/google/android/gms/fitness/b/b/h;
.super Lcom/google/android/gms/fitness/b/b/e;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/android/gms/fitness/b/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/gms/fitness/b/b/h;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/b/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/b/b/h;->b:Lcom/google/android/gms/fitness/b/b/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/e;-><init>(Ljava/lang/Comparable;)V

    .line 116
    return-void
.end method

.method static synthetic f()Lcom/google/android/gms/fitness/b/b/h;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/android/gms/fitness/b/b/h;->b:Lcom/google/android/gms/fitness/b/b/h;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/b/b/e;)I
    .locals 1

    .prologue
    .line 160
    if-ne p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method final a()Lcom/google/c/c/aj;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final a(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 138
    const-string v0, "(-\u221e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    return-void
.end method

.method final a(Ljava/lang/Comparable;)Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method final b()Lcom/google/c/c/aj;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this statement should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method final b(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method final c()Ljava/lang/Comparable;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "range unbounded on this side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 111
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/b/b/h;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "-\u221e"

    return-object v0
.end method
