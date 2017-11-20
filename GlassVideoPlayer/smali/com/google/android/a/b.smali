.class final Lcom/google/android/a/b;
.super Lcom/google/android/a/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/a/a;


# direct methods
.method constructor <init>(Lcom/google/android/a/a;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/google/android/a/b;->a:Lcom/google/android/a/a;

    invoke-direct {p0}, Lcom/google/android/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/a/b;->a:Lcom/google/android/a/a;

    iget v0, v0, Lcom/google/android/a/a;->g:I

    return v0
.end method

.method protected final a(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 590
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/a/b;->a:Lcom/google/android/a/a;

    invoke-static {v0}, Lcom/google/android/a/a;->a(Lcom/google/android/a/a;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/a/b;->a:Lcom/google/android/a/a;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/android/a/a;->a(Lcom/google/android/a/a;Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method protected final a(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/a/b;->a:Lcom/google/android/a/a;

    iget-object v0, v0, Lcom/google/android/a/a;->f:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected final a(I)V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/a/b;->a:Lcom/google/android/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/a/a;->a(I)Ljava/lang/Object;

    .line 616
    return-void
.end method

.method protected final b()Ljava/util/Map;
    .locals 2

    .prologue
    .line 600
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/android/a/b;->a:Lcom/google/android/a/a;

    invoke-virtual {v0}, Lcom/google/android/a/a;->clear()V

    .line 621
    return-void
.end method
