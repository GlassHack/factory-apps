.class public final Lcom/google/android/gms/auth/setup/d2d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "D2D."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/setup/d2d/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/setup/d2d/b;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static a(Lcom/google/android/gms/auth/setup/d2d/a/b;Lcom/google/android/gms/auth/setup/d2d/f;[BLcom/google/android/gms/auth/setup/d2d/b/g;)Lcom/google/android/gms/auth/setup/d2d/g;
    .locals 3

    .prologue
    .line 54
    invoke-static {p3}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/m/b/a/d/f;->a([B[B)Lcom/google/m/b/a/d/g;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/d;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/auth/setup/d2d/d;-><init>(Lcom/google/android/gms/auth/setup/d2d/f;Lcom/google/m/b/a/d/g;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/setup/d2d/a/b;->a(Lcom/google/android/gms/auth/setup/d2d/a/g;)V

    .line 62
    invoke-virtual {v0}, Lcom/google/m/b/a/d/g;->a()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/setup/d2d/a/b;->a([B)V

    .line 64
    new-instance v1, Lcom/google/android/gms/auth/setup/d2d/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/auth/setup/d2d/e;-><init>(Lcom/google/android/gms/auth/setup/d2d/a/b;Lcom/google/m/b/a/d/g;B)V

    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/auth/setup/d2d/a/b;Lcom/google/android/gms/auth/setup/d2d/f;Lcom/google/m/b/a/d/h;Lcom/google/android/gms/auth/setup/d2d/c;)V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/d;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/google/android/gms/auth/setup/d2d/d;-><init>(Lcom/google/android/gms/auth/setup/d2d/f;Lcom/google/m/b/a/d/h;Lcom/google/android/gms/auth/setup/d2d/a/b;Lcom/google/android/gms/auth/setup/d2d/c;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/setup/d2d/a/b;->a(Lcom/google/android/gms/auth/setup/d2d/a/g;)V

    .line 86
    return-void
.end method
