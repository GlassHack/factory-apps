.class final Lcom/google/android/gms/common/server/response/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/server/response/m;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 131
    invoke-static {p1, p2}, Lcom/google/android/gms/common/server/response/c;->b(Lcom/google/android/gms/common/server/response/c;Ljava/io/BufferedReader;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
