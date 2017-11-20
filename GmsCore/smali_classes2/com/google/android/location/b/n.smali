.class public final Lcom/google/android/location/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/g/a/b/b/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->G:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    iput-object v0, p0, Lcom/google/android/location/b/n;->a:Lcom/google/g/a/b/b/a;

    .line 29
    return-void
.end method

.method constructor <init>(Lcom/google/g/a/b/b/a;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/google/g/a/b/b/a;->a()Lcom/google/g/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/b/n;->a:Lcom/google/g/a/b/b/a;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    iget-object v0, p0, Lcom/google/android/location/b/n;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "numModelExecutions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/b/n;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
