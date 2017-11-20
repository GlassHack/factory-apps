.class public final Lcom/google/android/location/ar;
.super Lcom/google/android/location/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/b/aa;Lcom/google/android/location/bd;)V
    .locals 8

    .prologue
    .line 18
    const-string v1, "NullNetworkCollector"

    new-instance v6, Lcom/google/android/location/d;

    invoke-direct {v6, p4}, Lcom/google/android/location/d;-><init>(Lcom/google/android/location/b/aa;)V

    sget-object v7, Lcom/google/android/location/e;->a:Lcom/google/android/location/e;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/a;-><init>(Ljava/lang/String;Lcom/google/android/location/os/at;Lcom/google/android/location/b/w;Lcom/google/android/location/l/a;Lcom/google/android/location/bd;Lcom/google/android/location/d;Lcom/google/android/location/e;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
