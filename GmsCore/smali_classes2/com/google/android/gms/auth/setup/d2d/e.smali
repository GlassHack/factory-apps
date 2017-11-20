.class final Lcom/google/android/gms/auth/setup/d2d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/setup/d2d/g;


# instance fields
.field private final a:Lcom/google/android/gms/auth/setup/d2d/a/b;

.field private b:Lcom/google/m/b/a/d/g;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/auth/setup/d2d/a/b;Lcom/google/m/b/a/d/g;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/setup/d2d/a/b;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/e;->a:Lcom/google/android/gms/auth/setup/d2d/a/b;

    .line 97
    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/d/g;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/e;->b:Lcom/google/m/b/a/d/g;

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/setup/d2d/a/b;Lcom/google/m/b/a/d/g;B)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/auth/setup/d2d/e;-><init>(Lcom/google/android/gms/auth/setup/d2d/a/b;Lcom/google/m/b/a/d/g;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/e;->a:Lcom/google/android/gms/auth/setup/d2d/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/setup/d2d/a/b;->a()V

    .line 110
    return-void
.end method

.method public final a(Lcom/google/android/gms/auth/setup/d2d/b/g;)V
    .locals 2

    .prologue
    .line 102
    invoke-static {p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/e;->b:Lcom/google/m/b/a/d/g;

    invoke-virtual {v1, v0}, Lcom/google/m/b/a/d/g;->a([B)[B

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/e;->a:Lcom/google/android/gms/auth/setup/d2d/a/b;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/setup/d2d/a/b;->a([B)V

    .line 105
    return-void
.end method
