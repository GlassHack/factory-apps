.class final Lcom/google/android/location/places/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/j/b/n;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/location/places/ap;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/location/places/aq;->b:Lcom/google/android/location/places/ap;

    iput-object p2, p0, Lcom/google/android/location/places/aq;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/j/b/m;Lcom/google/j/b/o;)V
    .locals 5

    .prologue
    .line 152
    const-string v0, "Places"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "Places"

    const-string v1, "Level selector request completed"

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    sget-object v0, Lcom/google/android/location/places/l;->h:Lcom/google/android/location/places/l;

    invoke-static {p2}, Lcom/google/android/location/places/b;->a(Lcom/google/j/b/o;)Lcom/google/android/location/m/a/af;

    move-result-object v0

    .line 160
    :try_start_0
    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/n/a;->T:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    invoke-static {v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/a;->b([B)Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/google/android/location/places/aq;->b:Lcom/google/android/location/places/ap;

    invoke-static {v1}, Lcom/google/android/location/places/ap;->b(Lcom/google/android/location/places/ap;)Lcom/google/android/location/b/p;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/places/aq;->b:Lcom/google/android/location/places/ap;

    invoke-static {v2}, Lcom/google/android/location/places/ap;->a(Lcom/google/android/location/places/ap;)Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/location/places/aq;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/location/f/ad;->a(Ljava/lang/String;)Lcom/google/android/location/f/ad;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/location/b/p;->a(Lcom/google/g/a/b/b/a;JLcom/google/android/location/f/ad;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_1
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    const-string v1, "Places"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const-string v1, "Places"

    const-string v2, "Error converting nano proto to J2ME."

    invoke-static {v1, v2, v0}, Lcom/google/android/location/o/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/j/b/m;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 174
    const-string v0, "Places"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "Places"

    const-string v1, "Level selector request failed."

    invoke-static {v0, v1}, Lcom/google/android/location/o/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method
