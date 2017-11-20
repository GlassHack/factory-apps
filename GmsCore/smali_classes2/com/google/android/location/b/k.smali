.class final Lcom/google/android/location/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/f/aw;

.field final synthetic b:Lcom/google/android/location/b/j;


# direct methods
.method constructor <init>(Lcom/google/android/location/b/j;Lcom/google/android/location/f/aw;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/android/location/b/k;->b:Lcom/google/android/location/b/j;

    iput-object p2, p0, Lcom/google/android/location/b/k;->a:Lcom/google/android/location/f/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 219
    const-string v0, ""

    iget-object v1, p0, Lcom/google/android/location/b/k;->a:Lcom/google/android/location/f/aw;

    iget-object v1, v1, Lcom/google/android/location/f/aw;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/location/b/k;->b:Lcom/google/android/location/b/j;

    invoke-static {v0}, Lcom/google/android/location/b/j;->a(Lcom/google/android/location/b/j;)Ljava/io/File;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/location/b/k;->a:Lcom/google/android/location/f/aw;

    iget-object v0, v0, Lcom/google/android/location/f/aw;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
