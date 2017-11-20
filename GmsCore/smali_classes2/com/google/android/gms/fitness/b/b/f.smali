.class final Lcom/google/android/gms/fitness/b/b/f;
.super Lcom/google/android/gms/fitness/b/b/e;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/android/gms/fitness/b/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/google/android/gms/fitness/b/b/f;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/b/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/b/b/f;->b:Lcom/google/android/gms/fitness/b/b/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/b/e;-><init>(Ljava/lang/Comparable;)V

    .line 185
    return-void
.end method

.method static synthetic f()Lcom/google/android/gms/fitness/b/b/f;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/google/android/gms/fitness/b/b/f;->b:Lcom/google/android/gms/fitness/b/b/f;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/b/b/e;)I
    .locals 1

    .prologue
    .line 221
    if-ne p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final a()Lcom/google/c/c/aj;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "this statement should be unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method final a(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method final a(Ljava/lang/Comparable;)Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method final b()Lcom/google/c/c/aj;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final b(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 210
    const-string v0, "+\u221e)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    return-void
.end method

.method final c()Ljava/lang/Comparable;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "range unbounded on this side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 180
    check-cast p1, Lcom/google/android/gms/fitness/b/b/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/b/b/f;->a(Lcom/google/android/gms/fitness/b/b/e;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    const-string v0, "+\u221e"

    return-object v0
.end method
