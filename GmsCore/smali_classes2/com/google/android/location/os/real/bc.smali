.class public final Lcom/google/android/location/os/real/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/os/ax;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/location/os/e;

.field private final c:Lcom/google/android/location/os/real/bd;

.field private final d:Lcom/google/android/location/os/real/bd;

.field private final e:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/os/e;Lcom/google/android/location/os/real/bd;Lcom/google/android/location/os/real/bd;Landroid/net/wifi/WifiManager;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/location/os/real/bc;->a:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/google/android/location/os/real/bc;->b:Lcom/google/android/location/os/e;

    .line 25
    iput-object p3, p0, Lcom/google/android/location/os/real/bc;->c:Lcom/google/android/location/os/real/bd;

    .line 26
    iput-object p4, p0, Lcom/google/android/location/os/real/bc;->d:Lcom/google/android/location/os/real/bd;

    .line 27
    iput-object p5, p0, Lcom/google/android/location/os/real/bc;->e:Landroid/net/wifi/WifiManager;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/p/j;)V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/location/os/real/bc;->b:Lcom/google/android/location/os/e;

    sget-object v1, Lcom/google/android/location/os/c;->S:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 33
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/bc;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/os/real/bc;->d:Lcom/google/android/location/os/real/bd;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/location/os/real/be;->a(Landroid/content/Context;Lcom/google/android/location/os/real/bd;Lcom/google/android/location/p/j;)V

    .line 34
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/bc;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/be;->e()Z

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public final a(ZJ)Z
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/bc;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/os/real/bc;->c:Lcom/google/android/location/os/real/bd;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/be;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/location/os/real/bc;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/bc;->e:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/google/android/location/os/real/bc;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/os/real/be;->a(Landroid/net/wifi/WifiManager;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
