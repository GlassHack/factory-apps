.class public final Lcom/google/android/location/os/m;
.super Lcom/google/android/location/os/af;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/f/af;

.field final synthetic b:Lcom/google/android/location/os/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLcom/google/android/location/f/af;)V
    .locals 1

    .prologue
    .line 385
    iput-object p1, p0, Lcom/google/android/location/os/m;->b:Lcom/google/android/location/os/e;

    iput-object p5, p0, Lcom/google/android/location/os/m;->a:Lcom/google/android/location/f/af;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/location/os/af;-><init>(Lcom/google/android/location/os/c;J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/PrintWriter;)V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/location/os/m;->a:Lcom/google/android/location/f/af;

    const-string v1, "NetworkLocation [\n bestResult="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v1, "\n wifiResult="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    invoke-static {p1, v1}, Lcom/google/android/location/f/be;->a(Ljava/io/PrintWriter;Lcom/google/android/location/f/be;)V

    const-string v1, "\n cellResult="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    invoke-static {p1, v1}, Lcom/google/android/location/f/e;->a(Ljava/io/PrintWriter;Lcom/google/android/location/f/e;)V

    const-string v1, "\n isLowPower="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/google/android/location/f/af;->d:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "\n]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    return-void

    .line 388
    :cond_1
    iget-object v1, v0, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iget-object v2, v0, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    if-ne v1, v2, :cond_2

    const-string v1, "WIFI"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iget-object v2, v0, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    if-ne v1, v2, :cond_0

    const-string v1, "CELL"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method
