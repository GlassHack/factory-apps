.class public final Lcom/google/android/location/p/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/google/android/location/p/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/location/p/a/b;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/location/p/a/c;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/google/android/location/p/a/c;->b:Lcom/google/android/location/p/a/b;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/location/p/a/c;->b:Lcom/google/android/location/p/a/b;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/location/p/a/c;->b:Lcom/google/android/location/p/a/b;

    iget-object v1, p0, Lcom/google/android/location/p/a/c;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/location/p/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/location/p/a/c;->b:Lcom/google/android/location/p/a/b;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/location/p/a/c;->b:Lcom/google/android/location/p/a/b;

    iget-object v1, p0, Lcom/google/android/location/p/a/c;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/location/p/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/location/p/a/c;->b:Lcom/google/android/location/p/a/b;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/google/android/location/p/a/c;->b:Lcom/google/android/location/p/a/b;

    iget-object v1, p0, Lcom/google/android/location/p/a/c;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/location/p/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/location/p/a/c;->b:Lcom/google/android/location/p/a/b;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/google/android/location/p/a/c;->b:Lcom/google/android/location/p/a/b;

    iget-object v1, p0, Lcom/google/android/location/p/a/c;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/location/p/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method
