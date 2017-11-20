.class final Lcom/google/android/gms/common/server/response/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/server/response/m;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 147
    invoke-static {p1, p2}, Lcom/google/android/gms/common/server/response/c;->d(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
