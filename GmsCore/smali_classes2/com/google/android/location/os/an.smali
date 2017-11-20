.class public final Lcom/google/android/location/os/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/k/e;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/ai;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/ai;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/location/os/an;->a:Lcom/google/android/location/os/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public final b()Ljava/io/File;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/io/File;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Lcom/google/android/location/k/i;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/location/os/an;->a:Lcom/google/android/location/os/ai;

    iget-object v0, v0, Lcom/google/android/location/os/ai;->b:Lcom/google/android/location/k/i;

    return-object v0
.end method

.method public final e()Ljava/io/File;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final f()Ljava/io/File;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
